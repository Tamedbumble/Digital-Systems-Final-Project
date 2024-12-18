`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 02:08:12 AM
// Design Name: 
// Module Name: cos_rom
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
module cos_rom
# (parameter n=1)
( input [5:0] addr[n], output [7:0] value[n]);
logic [5:0] index[n];
logic [7:0] data[n];
parameter [7:0] ROM [16] = {
    8'd127,
    8'd127,
    8'd126,
    8'd122,
    8'd118,
    8'd113,
    8'd106,
    8'd99,
    8'd91,
    8'd81,
    8'd71,
    8'd60,
    8'd49,
    8'd37,
    8'd25,
    8'd13
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
        if (addr[i][5] ^ addr[i][4])
            data[i] = ~ROM[index[i][3:0]] + 1'b1;
        
        if (addr[i]==6'd16 || addr[i]==6'd48)
            data[i] = 8'b0;
        if (addr[i]==6'd32)
            data[i] = ~ROM[4'h0]+1;
    end
end

assign value = data;

endmodule
