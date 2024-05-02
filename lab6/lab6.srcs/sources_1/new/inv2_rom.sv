`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2024 07:00:18 PM
// Design Name: 
// Module Name: inv2_rom
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


module inv2_rom(
    input [9:0] addr, output [3:0] value
    );
    logic [3:0] val, valnext;
    parameter [3:0] ROM [16] = {
        4'b1111,
        4'b1110,
        4'b1000,
        4'b0101,
        4'b0011,
        4'b0010,
        4'b0010,
        4'b0001,
        4'b0001,
        4'b0001,
        4'b0001,
        4'b0001,
        4'b0000,
        4'b0000,
        4'b0000,
        4'b0000
    };
    lerp #(.S(5)) lerp1 (
        .startval({1'b0,val}),
        .endval({1'b0,valnext}),
        .t(addr[5:0]),
        .val(value)
    );
    always_comb begin
        val = ROM[addr[9:6]];
        valnext = (addr[9:6] == -4'h1) ? 4'h0 : ROM[addr[9:6] + 4'h1];
    end
endmodule
