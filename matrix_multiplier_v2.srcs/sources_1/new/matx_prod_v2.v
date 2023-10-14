`timescale 1ns / 1ps


module matx_prod_v2(
    input clk,
    input nrst,
    input start,
    input [15:0] A1_row,
    input [15:0] A2_row,
    input [15:0] A3_row,
    input [15:0] A4_row,
    input [15:0] x_col,
    output reg [31:0] b_col,
    output reg done
    );
  
  
    always @(posedge clk, negedge nrst) begin
        if (!nrst) begin
            done <= 1'h0;
            b_col <= 32'h0;
        end else begin
            if (start) begin
                b_col[31:24] = A1_row[3:0] * x_col[3:0] + A1_row[7:4] * x_col[7:4] + A1_row[11:8] * x_col[11:8] + A1_row[15:12] * x_col[15:12];
                b_col[23:16] = A2_row[3:0] * x_col[3:0] + A2_row[7:4] * x_col[7:4] + A2_row[11:8] * x_col[11:8] + A2_row[15:12] * x_col[15:12];
                b_col[15:8] = A3_row[3:0] * x_col[3:0] + A3_row[7:4] * x_col[7:4] + A3_row[11:8] * x_col[11:8] + A3_row[15:12] * x_col[15:12];
                b_col[7:0] = A4_row[3:0] * x_col[3:0] + A4_row[7:4] * x_col[7:4] + A4_row[11:8] * x_col[11:8] + A4_row[15:12] * x_col[15:12];
                done <= 1'h1;
            end
        end
    end
    
endmodule

