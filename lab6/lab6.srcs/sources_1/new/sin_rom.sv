`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 03:42:14 PM
// Design Name: 
// Module Name: sin_rom
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


module sin_rom( input [5:0] addr, output [7:0] value);
logic [5:0] index;
logic [7:0] data;
parameter [7:0] ROM [16] = {
    8'd0,
    8'd13,
    8'd25,
    8'd37,
    8'd49,
    8'd60,
    8'd71,
    8'd81,
    8'd91,
    8'd99,
    8'd106,
    8'd113,
    8'd118,
    8'd122,
    8'd126,
    8'd127
};

always_comb begin
    index = addr;
    if (addr[4])
        index = ~addr + 1'b1;    
end

always_comb begin
    data = ROM[index[3:0]];
    if (addr[5])
        data = ~ROM[index[3:0]] + 1'b1;
    
    if (addr==6'd16)
        data = 8'd127;
    else if (addr==6'd48)
        data = -8'd128;
end

assign value = data;

endmodule