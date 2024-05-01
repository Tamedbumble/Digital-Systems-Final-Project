`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2024 06:28:12 PM
// Design Name: 
// Module Name: cos_sin_rom
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


module cos_sin_rom# (parameter n=1)
( input logic [5:0] addr[n], output logic [7:0] cosvalue[n], output logic [7:0] sinvalue[n]);
    logic [5:0] addrs[2*n];
    logic [7:0] vals[2*n];
    
    always_comb begin
        for (int i=0; i<n; i++) begin
            addrs[i] = addr[i];
            addrs[i+n] = addr[i] - 6'd16;
            cosvalue[i] = vals[i];
            sinvalue[i] = vals[i+n];
        end
    end
    
    cos_rom #(.n(2*n)) cos(
        .addr(addrs), 
        .value(vals));
endmodule
