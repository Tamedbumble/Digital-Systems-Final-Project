`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 02:08:12 AM
// Design Name: 
// Module Name: cos_rom_inv
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


module cos_rom_inv
# (parameter n=1)
( input [5:0] addr[n], output [16:0] value[n]);
logic [5:0] index[n];
logic [16:0] data[n];
parameter [16:0] ROM [16] = {
    17'd129,
    17'd129,
    17'd130,
    17'd134,
    17'd138,
    17'd144,
    17'd154,
    17'd165,
    17'd180,
    17'd202,
    17'd230,
    17'd273,
    17'd334,
    17'd442,
    17'd655,
    17'd1260
};

always_comb begin
    for (int i=0; i<n; i++) begin
        index[i] = addr[i];
        if (addr[i][4])
            index[i] = ~addr[i] + 1'b1;
    end  
end

always_comb begin
    for (int i=0; i<n; i++) begin
        data[i] = ROM[index[i][3:0]];
//        if (addr[i][5] ^ addr[i][4])
//            data[i] = ROM[index[i][3:0]]; //~ROM[index[i][3:0]] + 1'b1;
        
        if (addr[i]==6'd16 | addr[i]==6'd48)
            data[i] = 17'hffff; //max positive number to represent infinity
//        if (addr[i]==6'd32)
//            data[i] = ROM[4'h0]; //~ROM[4'h0] + 1'b1;
    end
end

assign value = data;

endmodule
