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
             input logic [1:0] goalstate,
             output logic [1:0] RayWall[num_rays], // second bit to detect success wall
             output logic [1:0] wall_on, // second bit to set success color
             output logic coll_next, // 1 if collide with wall on next frame
             output logic [2:0] wall_color,
             output logic [4:0] goalx, goaly,
             output logic [4:0] startx, starty
    );
    
// each wall tile is 32x32 (640x480 turns into 20/15)
// TODO: allow for array accessing of levels ex: wall[0]
logic [19:0] wall_current[15];
logic [4:0] goalys[4] = {5'd0, 5'd1, 5'd5, 5'd6};
logic [4:0] goalxs[4] = {5'd4, 5'd18, 5'd12, 5'd9};
logic [4:0] startys[4] = {5'd8, 5'd18, 5'd18, 5'd5};
logic [4:0] startxs[4] = {5'd11, 5'd1, 5'd18, 5'd17};
logic [19:0] walls0[15] = {
    20'b11111111111111111111,
    20'b10000000000000001001,
    20'b10000000000000101001,
    20'b10000000000000001001,
    20'b10011111100111111001,
    20'b10010000000000001001,
    20'b10010000000000001001,
    20'b10010000000000000001,
    20'b10010000000000000001,
    20'b10011000000000001001,
    20'b10011100000000011001,
    20'b10011111111111111001,
    20'b10000000000000000001,
    20'b10000000000000000001,
    20'b11111111111111111111  
};
logic [19:0] walls1[15] = {
    20'b00010001000000000000,
    20'b00010001000000000010,
    20'b00010001000111111000,
    20'b00000000000100000000,
    20'b00000000000100000000,
    20'b00010000000100000000,
    20'b00010000000100011000,
    20'b00010000000100011000,
    20'b00010000000100000000,
    20'b00010000000100000000,
    20'b00010000000100011000,
    20'b00011111111100011000,
    20'b00010000000000000000,
    20'b00010000000000000000,
    20'b00010000000000000000  
};
logic [19:0] walls2[15] = {
    20'b00000000000000000000,
    20'b00000000000000000000,
    20'b00000000000000000000,
    20'b00001111111111111000,
    20'b00001000000000001000,
    20'b00001000000010001000,
    20'b00001000000000001000,
    20'b00001000111111111000,
    20'b00001000000000000000,
    20'b00001000000000000000,
    20'b00001000000000000000,
    20'b00001111111111111111,
    20'b00000000000000000000,
    20'b00000000000000000000,
    20'b00000000000000000000  
};
logic [19:0] walls3[15] = {
    20'b00000000000000000001,
    20'b00000000000000000010,
    20'b00011111111111000100,
    20'b00000000001100001000,
    20'b00000000110000010000,
    20'b00000011000000100000,
    20'b00001100010001000000,
    20'b00010000000010000000,
    20'b00011111111100011000,
    20'b00000000000100011000,
    20'b00000000000100011000,
    20'b00011111111100011000,
    20'b00000000000000000000,
    20'b00000000000000000000,
    20'b00000000000000000000  
};
// each level will have a color
logic [2:0] wall_0_color; 
assign wall_0_color = 3'b111;
logic [4:0] row;
logic [9:0] shifted_x, shifted_y;
logic [4:0] col;

assign goalx = goalxs[goalstate];
assign goaly = goalxs[goalstate];
assign startx = startxs[goalstate];
assign starty = startys[goalstate];

always_comb begin
    case(goalstate)
        2'b00   :   wall_current = walls0;
        2'b01   :   wall_current = walls1;
        2'b10   :   wall_current = walls2;
        2'b11   :   wall_current = walls3;
        default :   wall_current = walls0;
    endcase
end

always_comb begin
    shifted_x = DrawX >> 3;//5;
    shifted_y = DrawY >> 3;//5;
    row = shifted_x[4:0];
    col = shifted_y[4:0];
    wall_color = (goalstate) ? 3'b001 : wall_0_color;
    
    // use walls_0 for now
    if (col==goaly && row==goalx) begin
        wall_on = 2'b10;
    end
    else if(wall_current[col][row] == 1'b1 && DrawX<=160 && DrawY<=120) begin
        wall_on = 2'b1; 
    end
    else begin
        wall_on = 2'b0;
    end
    
    for (int i=0; i<num_rays; i++) begin
        if (RayX[i] >= 20 || RayY[i] >= 15) RayWall[i] = 1'b1; // if outside of scene, say wall, otherwise use array
        else if (RayY[i]==goaly && RayX[i]==goalx) RayWall[i] = 2'b10; //hit goal wall
        else RayWall[i] = wall_current[RayY[i]][RayX[i]]; 
    end
    // 1 if inside wall next frame, 0 if not
    if (Y_next>=15 || X_next>=20) coll_next = 1'b1;
    else if(wall_current[Y_next][X_next] == 1'b1) begin
        coll_next = 1'b1;
    end
    else begin
        coll_next = 1'b0;
    end

end
    
endmodule
