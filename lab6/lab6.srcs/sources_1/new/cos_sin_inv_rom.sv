`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2024 06:42:04 PM
// Design Name: 
// Module Name: cos_sin_inv_rom
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


module cos_sin_inv_rom
# (parameter n=1)
( input logic [5:0] addr[n], output logic [16:0] cosinvvalue[n], output logic [16:0] sininvvalue[n]);
    logic [5:0] addrs[2*n];
    logic [16:0] vals[2*n];
    
    always_comb begin
        for (int i=0; i<n; i++) begin
            addrs[i] = addr[i];
            addrs[i+n] = addr[i] - 6'd16;
            cosinvvalue[i] = vals[i];
            sininvvalue[i] = vals[i+n];
        end
    end
    
    cos_rom_inv #(.n(2*n)) cos(
        .addr(addrs), 
        .value(vals));
endmodule
