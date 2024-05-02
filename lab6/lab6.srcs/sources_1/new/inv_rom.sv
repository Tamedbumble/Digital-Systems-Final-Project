`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2024 07:00:18 PM
// Design Name: 
// Module Name: inv_rom
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


module inv_rom(
    input logic [10:0] addr, output logic [7:0] value
    );
    logic [7:0] val, valnext;
    parameter [7:0] ROM [32] = {
        8'd255,
        8'd240,
        8'd160,
        8'd120,
        8'd96,
        8'd80,
        8'd69,
        8'd60,
        8'd53,
        8'd48,
        8'd44,
        8'd40,
        8'd37,
        8'd34,
        8'd32,
        8'd30,
        8'd28,
        8'd27,
        8'd25,
        8'd24,
        8'd22,
        8'd21,
        8'd20,
        8'd19,
        8'd18,
        8'd18,
        8'd17,
        8'd17,
        8'd16,
        8'd15,
        8'd15,
        8'd15
    };
    lerp #(.S(9)) lerp1 (
        .startval({1'b0,val}),
        .endval({1'b0,valnext}),
        .t(addr[5:0]),
        .val(value)
    );
    always_comb begin
        val = ROM[addr[10:6]];
        valnext = (addr[10:6] == -4'h1) ? 12'd15 : ROM[addr[10:6] + 4'h1];
    end
endmodule
