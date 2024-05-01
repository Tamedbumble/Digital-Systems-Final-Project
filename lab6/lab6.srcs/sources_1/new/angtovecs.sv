`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2024 05:01:46 AM
// Design Name: 
// Module Name: angtovecs
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


module angtovecs
# (parameter n=5)
(
    input logic [5:0] Angle[n],
    input logic [5:0] t[n],
    output logic [7:0]  Xvec[n], Yvec[n],
    output logic [16:0] Xvec_inv[n], Yvec_inv[n]
    );
    
    logic [5:0] Angles[2*n];
    logic [7:0]  Xvecs[2*n], Yvecs[2*n];
    logic [16:0] Xvec_invs[2*n], Yvec_invs[2*n];
    
    always_comb begin
        for (int i=0; i<n; i++) begin
            Angles[i] = Angle[i];
            Angles[i+n] = Angle[i]+1'b1;
        end
    end
    
    cos_sin_rom #(.n(2*n)) cos_sin(
        .addr(Angles), 
        .cosvalue(Xvecs),
        .sinvalue(Yvecs));
        
    cos_sin_inv_rom #(.n(2*n)) cos_sin_inv(
        .addr(Angles), 
        .cosinvvalue(Xvec_invs),
        .sininvvalue(Yvec_invs));
     
    genvar i;
    generate
        for (i=0; i<n; i=i+1) begin
            lerp #(.S(8))lerp0 (
                .startval(Xvecs[i]),
                .endval(Xvecs[i+n]),
                .t(t[i]),
                .val(Xvec[i])
            );
            lerp #(.S(17)) lerp1 (
                .startval(Xvec_invs[i]),
                .endval(Xvec_invs[i+n]),
                .t(t[i]),
                .val(Xvec_inv[i])
            );
            lerp #(.S(8)) lerp2 (
                .startval(Yvecs[i]),
                .endval(Yvecs[i+n]),
                .t(t[i]),
                .val(Yvec[i])
            );
            lerp #(.S(17)) lerp3 (
                .startval(Yvec_invs[i]),
                .endval(Yvec_invs[i+n]),
                .t(t[i]),
                .val(Yvec_inv[i])
            );
        end
    endgenerate
        
endmodule
