module sprites (
    input  logic        clk, clk25,
    input  logic [63:0]  keycode,
    input  logic        reset,
    input logic         vs,
    input  logic [9:0]  DrawX, DrawY,
    output logic        draw_sprite,
    output logic [23:0] sprite_rgb
);


`ifdef SYNTHESIS

    logic [15:0]  init_addr;
    logic [23:0] init_data;
    logic        we_select;
    logic [15:0]  sram_addra; 
    logic [23:0] sram_dina;
    logic        sram_ena;
    logic        sram_wea;
    logic SPACEBAR;
    logic [23:0] sprite_rgb_data;
    
    
    // start of sprite
    logic [15:0] sprite_address;
    logic [9:0] width_1;
    logic [9:0] sprite_x, sprite_y;
    // sprites stay in transition for 8 frames
    assign sram_ena = 1'b1;
    assign width_1 = 78;

    instantiate_ram init_ram (
        .clk	(clk), 
        .reset	(reset),

        .addr	(init_addr), 
        .data	(init_data), 
        .wren	(we_select)
    );

    blk_mem_gen_1 sram1 (
        .addra	(sram_addra),
        .clka	(clk),
        .dina	(sram_dina),
        .ena	(sram_ena),
        .wea	(sram_wea),
        .douta	(sprite_rgb_data)
    );
    
    always_ff @ (posedge clk) begin: data_reg
        sprite_rgb <= sprite_rgb_data;
    end
    
    always_comb begin: bram_signals
        if(we_select) begin
            sram_wea = 1'b1; 
            sram_ena = 1'b1;
            sram_dina = init_data;
            sram_addra = init_addr;
        end else begin
            sram_wea = 1'b0; // will never write after init
            sram_ena = 1'b1;
            sram_dina = 0; // will never write after init
            // if not initializing, use sprite address
            sram_addra = sprite_address;

        end
    end
    
    // ------------------- start of state machine -------------------
    logic [2:0] counter; // need this to not have 64 states lul
    logic [2:0] counter_nxt;
    
    enum logic [3:0] {  
        halted,
		shotgun_1,
		shotgun_2,
		shotgun_3,
		shotgun_4,
		shotgun_3_r, // to reverse the order of frames
		shotgun_2_r
	} state, state_nxt;

    // move to next state on next frame
    always_ff @ (posedge vs)
	begin
		if (reset) 
			state <= halted;
		else 
			state <= state_nxt;
		if(counter == 3'd7)
		    counter <= 3'd0;
		else
		    counter <= counter_nxt;
	end
	
	// determine which sprite we are on, and address in bram
	always_ff @ (posedge clk25) begin: state_signals
	   draw_sprite <= 0;
	   sprite_y <= 0;
	   sprite_x <= 0;
	   sprite_address <= 0;
	   
	   case(state)
	       halted: ;
	       shotgun_1 :
	           begin // sprite is from 280 to 358 X, 479 to 419 Y
	               if(DrawX >= 280 && DrawX <= 358 && DrawY >= 419 && DrawY <= 479) begin
	                   draw_sprite <= 1'b1;
	                   sprite_y <= DrawY - 419;
	                   sprite_x <= DrawX - 280;
	                   sprite_address <= sprite_y * width_1 + sprite_x;
	               end
	           end
	        shotgun_2 :
	           begin 
	               if(DrawX >= 260 && DrawX <= 379 && DrawY >= 359 && DrawY <= 479) begin
	                   draw_sprite <= 1'b1;
	                   sprite_y <= DrawY - 359;
	                   sprite_x <= DrawX - 260;
	                   sprite_address <= sprite_y * (16'd118) + sprite_x + 16'd4680;
	               end
	           end
	        shotgun_3 :
	           begin 
	               if(DrawX >= 276 && DrawX <= 362 && DrawY >= 329 && DrawY <= 479) begin
	                   draw_sprite <= 1'b1;
	                   sprite_y <= DrawY - 329;
	                   sprite_x <= DrawX - 276;
	                   sprite_address <= sprite_y * (16'd86) + sprite_x + 16'd18840;
	               end
	           end
	        shotgun_4 :
	           begin 
	               if(DrawX >= 263 && DrawX <= 375 && DrawY >= 349 && DrawY <= 479) begin
	                   draw_sprite <= 1'b1;
	                   sprite_y <= DrawY - 349;
	                   sprite_x <= DrawX - 263;
	                   sprite_address <= sprite_y * (16'd112) + sprite_x + 16'd31740;
	               end
	           end
	        shotgun_3_r :
	           begin 
	               if(DrawX >= 276 && DrawX <= 362 && DrawY >= 329 && DrawY <= 479) begin
	                   draw_sprite <= 1'b1;
	                   sprite_y <= DrawY - 329;
	                   sprite_x <= DrawX - 276;
	                   sprite_address <= sprite_y * (16'd86) + sprite_x + 16'd18840;
	               end
	           end
	        shotgun_2_r :
	           begin 
	               if(DrawX >= 260 && DrawX <= 379 && DrawY >= 359 && DrawY <= 479) begin
	                   draw_sprite <= 1'b1;
	                   sprite_y <= DrawY - 359;
	                   sprite_x <= DrawX - 260;
	                   sprite_address <= sprite_y * (16'd118) + sprite_x + 16'd4680;
	               end
	           end
	        default : ;
        endcase
	end
	
	always_comb
	begin:state_machine
		// space shoots the gun
		SPACEBAR = (keycode[7:0]==8'h2c)|(keycode[15:8]==8'h2c)|(keycode[23:16]==8'h2c)|(keycode[31:24]==8'h2c)|
            (keycode[39:32]==8'h2c)|(keycode[47:40]==8'h2c)|(keycode[55:48]==8'h2c)|(keycode[63:56]==8'h2c);
            
        // default next state is staying at current state    
		state_nxt = state;
		if(state == shotgun_1) // dont increment during idle state
		  begin
		     counter_nxt = 0;
		  end
		else 
		  begin
		      counter_nxt = counter + 1; // increment counter otherwise
          end
        // states 2, 3, and 4 are shown for 8 frames after pressing fire
		unique case (state)
			halted : 
				state_nxt = shotgun_1;
			shotgun_1 :
			    if(SPACEBAR == 1'b1)
			         state_nxt = shotgun_2;
			    else
			         state_nxt = shotgun_1;
			shotgun_2 :
			    if(counter != 7)
			         state_nxt = shotgun_2;
			    else
			         state_nxt = shotgun_3;
			shotgun_3 :
			    if(counter != 7)
			         state_nxt = shotgun_3;
			    else
			         state_nxt = shotgun_4;
			shotgun_4 :
			    if(counter != 7)
			         state_nxt = shotgun_4;
			    else
			         state_nxt = shotgun_3_r;
			shotgun_3_r :
			    if(counter != 7)
			         state_nxt = shotgun_3_r;
			    else
			         state_nxt = shotgun_2_r;
			shotgun_2_r :
			    if(counter != 7)
			         state_nxt = shotgun_2_r;
			    else
			         state_nxt = shotgun_1;
			default : ;
		endcase
	end

    

`else

`endif


endmodule