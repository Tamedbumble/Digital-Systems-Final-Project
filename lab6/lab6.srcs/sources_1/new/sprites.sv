module sprites (
    input  logic        clk,
    input  logic        reset,
    input logic         vs,
    input  logic [9:0]  DrawX, DrawY,
    output logic        draw_sprite,
    output logic [23:0] sprite_rgb
);


`ifdef SYNTHESIS

    logic [15:0]  init_addr;
    logic [15:0] init_data;
    logic        we_select;
    logic [9:0]  sram_addra; 
    logic [15:0] sram_dina;
    logic        sram_ena;
    logic        sram_wea;
    
    // start of sprite
    logic [15:0] sprite_address;
    logic [9:0] width_1;
    logic [9:0] sprite_x, sprite_y;
    
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
        .douta	(sprite_rgb)
    );
    
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
    enum logic [2:0] {  
        halted,
		shotgun_1
	//	shotgun_2,
	//	shotgun_3,
	//	shotgun_4
	} state, state_nxt;

    // move to next state on next frame
    always_ff @ (posedge vs)
	begin
		if (reset) 
			state <= halted;
		else 
			state <= state_nxt;
	end
	
	// determine which sprite we are on, and address in bram
	always_comb begin: state_signals
	   draw_sprite = 0;
	   sprite_y = 0;
	   sprite_x = 0;
	   sprite_address = 0;
	   
	   case(state)
	       halted: ;
	       shotgun_1 :
	           begin // sprite is from 280 to 358 X, 479 to 419 Y
	               if(DrawX >= 280 && DrawX <= 358 && DrawY >= 419 && DrawY <= 479) begin
	                   draw_sprite = 1'b1;
	                   sprite_y = DrawY - 419;
	                   sprite_x = DrawX - 280;
	                   sprite_address = sprite_y * width_1 + sprite_x;
	               end
	           end
	        default : ;
        endcase
	end
	
	always_comb
	begin:state_machine
		// default next state is staying at current state
		state_nxt = state;

        // only 1 weapon for now
		unique case (state)
			halted : 
				state_nxt = shotgun_1;
			shotgun_1 :
			    state_nxt = shotgun_1;
			
			default : ;
		endcase
	end

    

`else

`endif


endmodule