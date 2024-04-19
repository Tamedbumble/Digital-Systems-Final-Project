`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2024 04:33:24 AM
// Design Name: 
// Module Name: ray
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


module ray(
    input logic [16:0] Xvec, Yvec, startX, startY,
    input logic HitWall, reset, clk,
    output logic [4:0] checkX, checkY,
    output logic [31:0] distance,
    output logic [9:0] debug_curX, debug_curY // temporary signals for visualizing rays
    );
    logic [16:0] curX, curY;
    logic [16:0] XStep, YStep, Xnext, Ynext;
    logic [1:0] step; // 01 for x step, 10 for y step
    logic wall_found;
    
    assign XStep = Xvec;
    assign YStep = Yvec;
    
    assign debug_curX = curX[16:7];
    assign debug_curY = curY[16:7];
    
    always_comb begin
        Xnext = curX + XStep;
        Ynext = curY + YStep;
        step = 2'b0;
        if (Xnext[16:12] - curX[16:12] > Ynext[16:12] - curY[16:12]) //check the deeper cell
        begin
            checkX = Xnext[16:12];
            checkY = curY[16:12];
            step = 2'b01;
        end
        else if (Xnext[16:12] - curX[16:12] < Ynext[16:12] - curY[16:12])
        begin
            checkY = Ynext[16:12];
            checkX = curX[16:12];
            step = 2'b10;
        end
        else begin
            checkY = Ynext[16:12];
            checkX = Xnext[16:12];
            step = 2'b11;
        end
    end
    
    always_ff @ (posedge clk or posedge reset)
    begin
        if (reset) begin
            curX <= startX;
            curY <= startY;
            distance <= 32'b0;
            wall_found <= 1'b0;
        end
        else begin
            if (HitWall)
                wall_found <= 1'b1;
            else begin
                if (~wall_found) begin
                    if (step[0]) // stepped in x dir
                        curX <= Xnext;
                    if (step[1]) // stepped in y dir
                        curY <= Ynext;
                end
//                else if ((curX[16:12] != checkX) && (curY[16:12] != checkY)) begin // wall detected, take smaller steps
//                    curX <= curX + Xvec;
//                    curY <= curY + Yvec;
//                end
                else begin // wall found & cur pos in cell, can calculate dist
                    distance <= (curX - startX)*(curX - startX) + (curY - startY)*(curY - startY);
                end
            end
        end
    end
endmodule
