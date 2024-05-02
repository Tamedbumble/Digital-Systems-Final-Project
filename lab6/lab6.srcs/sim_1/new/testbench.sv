`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2024 01:48:26 AM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module testbench();
    timeunit 10ns;	// This is the amount of time represented by #1 
	timeprecision 1ns;
	
    logic [16:0] startX, startY;
    logic [11:0]  startAngle;
    logic HitWall[5];
    logic reset, clk25;
    logic [4:0] checkX[5], checkY[5];
    logic [63:0] distance[5];
    
    logic [11:0] wdata;
    logic we;
    logic [9:0] wa;
    
    logic [9:0] DrawX, DrawY;
    logic [4:0] RayX[5], RayY[5];
    logic [4:0] X_next, Y_next;
    logic RayWall[5];
    logic wall_on;
    logic coll_next;
    logic [11:0] wall_color;
    
    logic [7:0] height;
    logic [3:0] brightness;
    logic [63:0] d_reg;
    logic [7:0] val;
    logic [7:0] valn;
    logic [7:0] value;
    logic signed [17:0] diff;
    logic [9:0] addr;
    logic [11:0] angle;
    logic [7:0]  Xvec[5], Yvec[5];
    logic [16:0] Xvec_inv[5], Yvec_inv[5];
    
    ray_caster rc(.*);
    walls w(.DrawX(DrawX), 
            .DrawY(DrawY),
            .RayX(RayX), 
            .RayY(RayY),
            .X_next(X_next), 
            .Y_next(Y_next),
            .RayWall(RayWall),
            .wall_on(wall_on),
            .coll_next(coll_next),
            .wall_color(wall_color));
    
    assign DrawX = 0;
    assign DrawY = 0;
    assign RayX = checkX;
    assign RayY = checkY;
    assign X_next = startX[16:12];
    assign Y_next = startY[16:12];
    assign HitWall = RayWall;
    assign height = rc.height;
    assign brightness = rc.brightness;
    assign d_reg = rc.d_reg;
    assign val = rc.inv.val;
    assign valn = rc.inv.valnext;
    assign value = rc.inv.value;
    assign addr = rc.inv.addr;
    assign diff = rc.inv.lerp1.diff;
    assign angle = rc.angle;
    assign Xvec = rc.Xvec;
    assign Yvec = rc.Yvec;
    assign Xvec_inv = rc.Xvec_inv;
    assign Yvec_inv = rc.Yvec_inv;
    
    initial begin: CLOCK_INITIALIZATION
		clk25 = 1;
	end 
	
	always begin : CLOCK_GENERATION
		#4 clk25 = ~clk25;
	end
	
	initial begin: TEST_VECTORS
        startX <= {10'd320, 7'b0};
        startY <= {10'd240, 7'b0};
        startAngle <= 0;
        reset <= 1;
        repeat (10) @(posedge clk25);
        reset <= 0;
        repeat (10000) @(posedge clk25);
	    $finish();
    end
endmodule
