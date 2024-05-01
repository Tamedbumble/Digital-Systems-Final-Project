`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2024 11:21:15 PM
// Design Name: 
// Module Name: ray_caster
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


module ray_caster
# (parameter num_rays=5)
(
    input logic [16:0] startX, startY,
    input logic [11:0]  startAngle,
    input logic HitWall[num_rays], 
    input logic reset, clk25, clk100,
    output logic [4:0] checkX[num_rays], checkY[num_rays],
    output logic [63:0] distance[num_rays],
    
    output logic [11:0] wdata,
    output logic we,
    output logic [9:0] wa
    );
    logic [5:0] Angle[num_rays];
    logic [5:0] t[num_rays];
    logic [7:0]  Xvec[num_rays], Yvec[num_rays], Xvec_next[num_rays], Yvec_next[num_rays];
    logic [16:0] Xvec_inv[num_rays], Yvec_inv[num_rays], Xvec_inv_next[num_rays], Yvec_inv_next[num_rays];
    logic done[num_rays];
    logic [11:0] idx, idx_next;
    logic [11:0] angle, angle_next, scale_angle;
    logic reset_rays, calc_height;
    logic [7:0] height, scalar;
    logic [15:0] scaled_height;
    logic [3:0] brightness;
    logic [63:0] d_reg;
    
    angtovecs #(.n(num_rays)) conv(
        .Angle(Angle),
        .t(t),
        .Xvec(Xvec_next), 
        .Yvec(Yvec_next),
        .Xvec_inv(Xvec_inv_next),
        .Yvec_inv(Yvec_inv_next)
    );
    
    angtovecs #(.n(1)) cos_scale(
        .Angle('{scale_angle[11:6]}),
        .t('{scale_angle[5:0]}),
        .Xvec('{scalar})
    );
    
    inv_rom inv(
        .addr(d_reg[30:21]),
        .value(height)
    );
    inv2_rom inv2(
        .addr(d_reg[30:21]),
        .value(brightness)
    );
    
    assign scaled_height = (height*scalar);
    
    always_comb begin
        for (int j=0; j<num_rays; j=j+1) begin
            t[j] = angle[5:0] + j;
//            if (t[j]>=-6'b100 && t[j]<=6'b100) Angle[j] = angle[11:6] + 6'b1;
            Angle[j] = angle[11:6];
        end
    end
    
    genvar i;
    generate
        for (i=0; i<num_rays; i=i+1) begin
        ray ray0 (
            .startX(startX), 
            .startY(startY),
            .Xvec_inv(Xvec_inv[i]), 
            .Yvec_inv(Yvec_inv[i]),
            .Xvec(Xvec[i]), 
            .Yvec(Yvec[i]),
            .HitWall(HitWall[i]), 
            .reset(reset_rays),
            .clk(clk25),
            .checkX(checkX[i]), 
            .checkY(checkY[i]),
            .distance(distance[i]),
            .done(done[i])
        );
        end
    endgenerate
    
    assign angle_next = (idx == num_rays-1) ? angle+num_rays : angle;
    assign idx_next = (idx == num_rays-1) ? 3'd0 : idx+1;
    assign scale_angle = angle + idx - startAngle;
    
    always_comb begin
        
    end
    
    always_ff @ (posedge clk25)
    begin
        if (reset) begin
                we <= 1'b0;
                wa <= 10'b0;
                wdata <= 12'b0;
                idx <= 3'b0;
                angle <= startAngle - 10'd320;
                
                for (int i=0; i<num_rays; i++) begin
                    Xvec[i] <= 8'b0;
                    Yvec[i] <= 8'b0;
                    Xvec_inv[i] <= 17'b0;
                    Yvec_inv[i] <= 17'b0;
                end
                reset_rays <= 1'b1;
                d_reg <= 32'b0;
                calc_height <= 1'b0;
        end
        else if (wa < 10'd640) begin
            if (done[idx]) begin
                if (~calc_height) begin
                    d_reg <= distance[idx] * scalar;
                    calc_height <= 1'b1;
                end
                else if (~we) begin
                    we <= 1'b1;
                    wdata <= {brightness, height};
                end
                else begin
                    we <= 1'b0;
                    wa <= wa+1'b1;
                    idx <= idx_next;
                    angle <= angle_next;
                    Xvec <= Xvec_next;
                    Yvec <= Yvec_next;
                    Xvec_inv <= Xvec_inv_next;
                    Yvec_inv <= Yvec_inv_next;
                    reset_rays <= 1'b1;
                    calc_height <= 1'b0;
                end
            end
            else if (Xvec[0] == 8'd0 && Yvec[0] == 8'd0) begin // reset last cycle, set vectors
                Xvec <= Xvec_next;
                Yvec <= Yvec_next;
                Xvec_inv <= Xvec_inv_next;
                Yvec_inv <= Yvec_inv_next;
                reset_rays <= 1'b0;
            end
            else 
                reset_rays <= 1'b0;
        end
        else begin
            we <= 1'b0;
        end
    end
endmodule
