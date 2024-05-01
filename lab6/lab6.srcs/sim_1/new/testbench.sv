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
	
//    logic [16:0] Xvec, Yvec, startX, startY;
//    logic HitWall, reset;
    logic clk;
//    logic [5:0] Angle[5];
    logic [5:0] t;
    logic [7:0] val;
    logic [13:0] diff;
    logic [13:0] m;
//    logic signed [16:0] x_inv[5], y_inv[5];
//    logic signed [7:0] x[5], y[5];
//    logic signed [16:0] xtest, ytest, xdivtest, ydivtest;

      lerp #(.S(8)) lerp0(
        .startval(-8'd127),
        .endval(8'd64),
        .t(t),
        .val(val)
      );
      assign m = lerp0.m;
      assign diff = lerp0.diff;

//    angtovecs ang(
//        .Angle(Angle),
//        .t(t),
//        .Xvec(x), 
//        .Yvec(y),
//        .Xvec_inv(x_inv),
//        .Yvec_inv(y_inv)
//    );

//    logic [4:0] checkX, checkY;
//    logic [31:0] distance;
//    logic [9:0] debug_curX, debug_curY;
    
//    ray ray_caster (.*);
    
//    logic [16:0] curX, curY, Xnext, Ynext;
//    logic [16:0] dx, dy;
//    logic [31:0] distx, disty, ddist;
//    logic [4:0] X_wall_next, Y_wall_next;
    
//    assign curX = ray.curX;
//    assign curY = ray.curY;
//    assign Xnext = ray.Xnext;
//    assign Ynext = ray.Ynext;
//    assign dx = ray.dx;
//    assign dy = ray.dy;
//    assign distx = ray.distx;
//    assign disty = ray.disty;
//    assign ddist = ray.ddist;
//    assign X_wall_next = ray.X_wall_next;
//    assign Y_wall_next = ray.Y_wall_next;
    
    initial begin: CLOCK_INITIALIZATION
		clk = 1;
	end 
	
	always begin : CLOCK_GENERATION
		#1 clk = ~clk;
	end
	
	initial begin: TEST_VECTORS
//	   startX = 17'h01400;
//	   startY = 17'h01500;
//	   Xvec = 17'h1ffb9;
//	   Yvec = 17'h0006a;
//	   HitWall = 1'b0;
//	   reset = 1'b1;
//	   repeat (10) @(posedge clk);
//	   reset = 1'b0;
//	   repeat (100) @(posedge clk);
//       for (int i=0; i<5; i++) begin
//            Angle[i] <= 6'b0;
//            t[i] <= 6'b0;
//       end
//       for (int i=1; i<128*128; i++) begin
//            t[0] <= i;
//            if (t[0] == 6'b0) 
//                Angle[0] <= Angle[0]+1'b1;
//            repeat (1) @(posedge clk);
//            xtest <= x_inv[0] * x[0];
//            ytest <= y_inv[0] * y[0];
//            xdivtest <= 128*128/{{9{x[0][7]}},x[0]};
//            ydivtest <= 128*128/{{9{y[0][7]}},y[0]};
//            repeat (10) @(posedge clk);
//       end
        for(int i=0; i<=6'h3f; i++) begin
             t<=i;
             repeat (10) @(posedge clk);
        end
	   $finish();
    end
endmodule
