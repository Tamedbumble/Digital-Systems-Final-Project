`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 08:45:44 PM
// Design Name: 
// Module Name: walls
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
module walls
# (parameter num_rays=5)
(input logic [9:0] DrawX, DrawY,
             input logic [4:0] RayX[num_rays], RayY[num_rays],
             input logic [4:0] X_next, Y_next,
             output logic RayWall[num_rays],
             output logic wall_on,
             output logic coll_next, // 1 if collide with wall on next frame
             output logic [11:0] wall_color 
    );
    
// each wall tile is 32x32 (640x480 turns into 20/15)
// TODO: allow for array accessing of levels ex: wall[0]
logic [19:0] walls_0 [15] = {
    20'b11111111111111111111,
    20'b10000000000000001001,
    20'b10000000000000101001,
    20'b10000000000000001001,
    20'b10011111100111111001,
    20'b10010000000000000001,
    20'b10010000000000000001,
    20'b10010000000000000001,
    20'b10010000000000000001,
    20'b10010000000000001001,
    20'b10010000000000001001,
    20'b10011100000000001001,
    20'b10011111111111111001,
    20'b10000000000000000001,
    20'b11111111111111111111  
};

// each level will have a color
logic [11:0] wall_0_color; 
assign wall_0_color = 12'hfff;
logic [4:0] row;
logic [9:0] shifted_x, shifted_y;
logic [4:0] col;

always_comb begin
    shifted_x = DrawX >> 3;//5;
    shifted_y = DrawY >> 3;//5;
    row = shifted_x[4:0];
    col = shifted_y[4:0];
    wall_color = wall_0_color;
    
    // use walls_0 for now
    if(walls_0[col][row] == 1'b1 && DrawX<=160 && DrawY<=120) begin
        wall_on = 1'b1; 
    end
    else begin
        wall_on = 1'b0;
    end
    
    for (int i=0; i<num_rays; i++)
        RayWall[i] = (RayX[i] >= 20 || RayY[i] >= 15) ? 1'b1 : walls_0[RayY[i]][RayX[i]]; // if outside of scene, say wall, otherwise use array
    
    // 1 if inside wall next frame, 0 if not
    if(walls_0[Y_next][X_next] == 1'b1) begin
        coll_next = 1'b1;
    end
    else begin
        coll_next = 1'b0;
    end

end
    
endmodule
