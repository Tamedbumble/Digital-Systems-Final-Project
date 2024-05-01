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
    input logic [16:0] startX, startY, Xvec_inv, Yvec_inv,
    input logic [7:0]  Xvec, Yvec,
    input logic HitWall, reset, clk,
    output logic [4:0] checkX, checkY,
    output logic [63:0] distance,
    output logic done,
    output logic [9:0] debug_curX, debug_curY // temporary signals for visualizing rays
    );
    logic [16:0] curX, curY, Xnext, Ynext;
    logic signed [16:0] dx, dy;
    logic [63:0] distx, disty, ddist;
    
    logic [4:0] X_wall_next, Y_wall_next;
    
    assign debug_curX = curX[16:7];
    assign debug_curY = curY[16:7];
    
    always_comb begin
        X_wall_next = (Xvec[7] == 1'b1) ? curX[16:12] - 5'b1 : curX[16:12] + 5'b1;
        Y_wall_next = (Yvec[7] == 1'b1) ? curY[16:12] - 5'b1 : curY[16:12] + 5'b1;
        
        dx = {X_wall_next, {12{Xvec[7]}}} - curX;
        dy = {Y_wall_next, {12{Yvec[7]}}} - curY;
        distx = 64'b0;
        disty = 64'b0;
        ddist = 64'b0;
        
        if (Xvec == 8'b0) begin
            dx = 17'b0;
            ddist = ((dy[16]) ? -dy : dy) << 7;
        end
        else if (Yvec == 8'b0) begin
            dy = 17'b0;
            ddist = ((dx[16]) ? -dx : dx) << 7;
        end
        else begin
            distx = (dx[16]) ? ((-{ -47'h1, dx})) * (Xvec_inv) : (dx) * (Xvec_inv);
            disty = (dy[16]) ? ((-{ -47'h1, dy})) * (Yvec_inv) : (dy) * (Yvec_inv);
//            distx = (dx[16]) ? ((-{ -47'h1, dx})) * (-{ -47'h1, Xvec_inv}) : (dx) * (Xvec_inv);
//            disty = (dy[16]) ? ((-{ -47'h1, dy})) * (-{ -47'h1, Yvec_inv}) : (dy) * (Yvec_inv);
            if (distx < disty) begin
                dy = (Yvec[7]) ? -(((distx)*(-{-47'h1, Yvec}))>>14) : (((distx)*(Yvec))>>14);
                ddist = distx;
            end
            else begin
                dx = (Xvec[7]) ? -(((disty)*(-{-47'h1, Xvec}))>>14) : (((disty)*(Xvec))>>14);
                ddist = disty;
            end   
        end
//        if (dx==17'b0 || dy==17'b0) begin
//            dx = 17'b0;
//            dy = 17'b0;
//        end
        Xnext = curX + dx;
        Ynext = curY + dy;
        checkX = curX[16:12];
        checkY = curY[16:12];
        
    end
    
    always_ff @ (posedge clk or posedge reset)
    begin
        if (reset) begin
            curX <= startX;
            curY <= startY;
            distance <= 64'b0;
            done <= 1'b0;
        end
        else begin
            if (HitWall)
                done <= 1'b1;
            else begin
                if (~done) begin
                    curX <= Xnext;
                    curY <= Ynext;
                    distance <= ddist + distance;
                end
            end
        end
    end
endmodule
