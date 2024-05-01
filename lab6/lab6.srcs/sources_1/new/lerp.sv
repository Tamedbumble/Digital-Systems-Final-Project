`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2024 03:38:16 AM
// Design Name: 
// Module Name: lerp
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


module lerp
# (parameter S=8)
(
        input logic signed [(S-1):0] startval, endval,
        input logic [5:0] t,
        output logic [(S-1):0] val
    );
    
    logic signed [(S+5):0] m;
    logic signed [(S+5):0] diff;
    
    always_comb begin
        diff = endval - startval;
        m = t * diff + (startval << 6);
        val = (m >>> 6);
    end
endmodule
