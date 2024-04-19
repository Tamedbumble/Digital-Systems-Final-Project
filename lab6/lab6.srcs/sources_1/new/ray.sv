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
    output logic [31:0] distance
    );
    logic [16:0] curX, curY;
    logic [16:0] XStep, YStep, Xnext, Ynext;
    logic step_x, wall_found;
    
    assign XStep = Xvec << 13;
    assign YStep = Yvec << 13;
    
    always_comb begin
        Xnext = curX + XStep;
        Ynext = curY + YStep;
        checkX = curX[16:12];
        checkY = curY[16:12];
        if (Xnext[16:12] - curX[16:12] > Ynext[16:12] - curY[16:12]) //check the deeper cell
        begin
            checkX = Xnext[16:12];
            step_x = 1'b1;
        end
        else
        begin
            checkY = Ynext[16:12];
            step_x = 1'b0;
        end
    end
    
    always_ff begin @ (posedge clk or posedge reset)
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
                    if (step_x)
                        curX <= Xnext;
                    else
                        curY <= Ynext;
                end
                else if ((curX[16:12] != checkX) && (curY[16:12] != checkY)) begin // wall detected, take smaller steps
                    curX <= curX + Xvec;
                    curY <= curY + Yvec;
                end
                else begin // wall found & cur pos in cell, can calculate dist
                    distance <= (curX - startX)*(curX - startX) + (curY - startY)*(curY - startY);
                end
            end
        end
    end
endmodule
