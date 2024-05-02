//-------------------------------------------------------------------------
//    mb_usb_hdmi_top.sv                                                 --
//    Zuofu Cheng                                                        --
//    2-29-24                                                            --
//                                                                       --
//                                                                       --
//    Spring 2024 Distribution                                           --
//                                                                       --
//    For use with ECE 385 USB + HDMI                                    --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------
parameter num_rays = 5;

module mb_usb_hdmi_top(
    input logic Clk,
    input logic reset_rtl_0,
    
    //USB signals
    input logic [0:0] gpio_usb_int_tri_i,
    output logic gpio_usb_rst_tri_o,
    input logic usb_spi_miso,
    output logic usb_spi_mosi,
    output logic usb_spi_sclk,
    output logic usb_spi_ss,
    
    //UART
    input logic uart_rtl_0_rxd,
    output logic uart_rtl_0_txd,
    
    //HDMI
    output logic hdmi_tmds_clk_n,
    output logic hdmi_tmds_clk_p,
    output logic [2:0]hdmi_tmds_data_n,
    output logic [2:0]hdmi_tmds_data_p,
        
    //HEX displays
    output logic [7:0] hex_segA,
    output logic [3:0] hex_gridA,
    output logic [7:0] hex_segB,
    output logic [3:0] hex_gridB
);
    
    logic [31:0] keycode0_gpio, keycode1_gpio;
    logic clk_25MHz, clk_125MHz, clk, clk_100MHz;
    logic locked;
    logic [9:0] drawX, drawY, sizesig;
    logic [16:0] xsig, ysig;
    logic [11:0] anglesig;
    logic [7:0] xvec, yvec;
    logic [1:0] wall_on;
    logic [2:0] wall_color;

    logic hsync, vsync, vde;
    logic [7:0] red, green, blue;
    logic reset_ah;
    
    logic [4:0] checkXsig[num_rays], checkYsig[num_rays];
    logic [4:0] checkX_next, checkY_next;
    logic will_collide;
//    logic [63:0] distancesig [num_rays];
    logic [1:0] RayWallHit[num_rays];
    logic [9:0] curRayX[num_rays], curRayY[num_rays];
    
    logic we;
    logic [9:0] wa, ra;
    logic [11:0] wdata, adata, rdata, rdata_reg;
    
    logic [15:0] brightness_reg;
    
    logic [1:0] goal_state;
    logic [4:0] goalx, goaly, startx, starty;
    logic success;
    logic reset_player;
    
    assign reset_ah = reset_rtl_0;
    assign ra = drawX;
    
    //Keycode HEX drivers
    hex_driver HexA (
        .clk(Clk),
        .reset(reset_ah),
        .in({keycode0_gpio[31:28], keycode0_gpio[27:24], keycode0_gpio[23:20], keycode0_gpio[19:16]}),
        .hex_seg(hex_segA),
        .hex_grid(hex_gridA)
    );
    
    hex_driver HexB (
        .clk(Clk),
        .reset(reset_ah),
        .in({keycode0_gpio[15:12], keycode0_gpio[11:8], keycode0_gpio[7:4], keycode0_gpio[3:0]}),
        .hex_seg(hex_segB),
        .hex_grid(hex_gridB)
    );
    
    mb_block mb_block_i (
        .clk_100MHz(Clk),
        .gpio_usb_int_tri_i(gpio_usb_int_tri_i),
        .gpio_usb_keycode_0_tri_o(keycode0_gpio),
        .gpio_usb_keycode_1_tri_o(keycode1_gpio),
        .gpio_usb_rst_tri_o(gpio_usb_rst_tri_o),
        .reset_rtl_0(~reset_ah), //Block designs expect active low reset, all other modules are active high
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(usb_spi_ss)
    );
        
    //clock wizard configured with a 1x and 5x clock for HDMI
    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(reset_ah),
        .locked(locked),
        .clk_in1(Clk)
    );
    
    //VGA Sync signal generator
    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(reset_ah),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .drawX(drawX),
        .drawY(drawY)
    );    

    //Real Digital VGA to HDMI converter
    hdmi_tx_0 vga_to_hdmi (
        //Clocking and Reset
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        //Reset is active LOW
        .rst(reset_ah),
        //Color and Sync Signals
        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        //aux Data (unused)
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        //Differential outputs
        .TMDS_CLK_P(hdmi_tmds_clk_p),          
        .TMDS_CLK_N(hdmi_tmds_clk_n),          
        .TMDS_DATA_P(hdmi_tmds_data_p),         
        .TMDS_DATA_N(hdmi_tmds_data_n)          
    );

    
    //"Ball" Module
    ball ball_instance(
        .Reset(reset_player),
        .frame_clk(vsync),           //Figure out what this should be so that the ball will move
        .keycode({keycode1_gpio, keycode0_gpio}),    
        .X(xsig),
        .Y(ysig),
        .Size(sizesig),
        .Angle(anglesig),
        .X_vec(xvec),
        .Y_vec(yvec),
        .X_coll(checkX_next),
        .Y_coll(checkY_next),
        .coll_next(will_collide),
        .goalx(goalx), 
        .goaly(goaly),
        .startx(startx),
        .starty(starty),
        .success(success)
    );
    
    //Raycaster Module
    ray_caster #(.num_rays(num_rays)) ray_caster_inst (
        .startX(xsig), 
        .startY(ysig),
        .startAngle(anglesig),
        .HitWall(RayWallHit), 
        .reset(~vsync), // keycode0_gpio[7:0]==8'h15),
        .clk25(clk_25MHz),//vsync),
        .checkX(checkXsig), 
        .checkY(checkYsig),
        .wdata(wdata),
        .we(we),
        .wa(wa)
    );
    
    walls #(.num_rays(num_rays)) walls_inst (
    .DrawX(drawX),
    .DrawY(drawY),
    .RayX(checkXsig),
    .RayY(checkYsig),
    .X_next(checkX_next),
    .Y_next(checkY_next),
    .coll_next(will_collide),
    .RayWall(RayWallHit),
    .wall_on(wall_on),
    .wall_color(wall_color),
    .goalstate(goal_state),
    .goalx(goalx), 
    .goaly(goaly),
    .startx(startx),
    .starty(starty)
    );
    
    //Color Mapper Module   
    color_mapper color_instance(
        .X(xsig[16:7]),
        .Y(ysig[16:7]),
        .DrawX(drawX),
        .DrawY(drawY),
        .size(sizesig),
        .x_vec(xvec),
        .y_vec(yvec),
        .Red(red),
        .Green(green),
        .Blue(blue),
        // new
        .memdata(rdata_reg),
        .wall_color(wall_color),
        .wall_on(wall_on),
        .brightness(brightness_reg)
    );
    
    blk_mem_gen_0 vmem(
        .clka(clk_25MHz),
        .wea(we),
        .addra(wa),
        .dina(wdata),
        .douta(adata),
        .clkb(clk_25MHz),
        .web(1'b0),
        .addrb(ra),
        .dinb(12'd0),
        .doutb(rdata)      
    );
    
    always_ff @ (posedge clk_25MHz)
    begin
        if (reset_ah) begin
            goal_state <= 2'b0;
            reset_player <= 1'b1;
        end
        else begin
            rdata_reg <= rdata;
            brightness_reg <= {8'b0, rdata[7:0]} * {8'b0, rdata[7:0]};
            if (success) begin
                goal_state <= goal_state + 2'b1;
                reset_player <= 1'b1;
            end
            else reset_player <= 1'b0;
        end
        
    end
    
endmodule
