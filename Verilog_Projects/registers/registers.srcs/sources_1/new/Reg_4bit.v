`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2023 05:00:51 PM
// Design Name: 
// Module Name: Reg_4bit
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


module Reg_4bit(
        input clk ,load,
        input [3:0]I,
        output [3:0]Q
    );
    
//    genvar k;
//    generate
//        for(k=0 ; k<4 ; k=k+1)
//        begin: Register
//            D_FF bit(
//            .D(I[k]),
//            .clk(clk),
//            .reset_n(1),
//            .Q(Q[k])
            
//            );
//        end
//    endgenerate // Structure modelling

reg [3:0] Q_next,Q_reg;

always @(posedge clk)
begin
Q_reg <= Q_next;
end

always @(*)
begin
if(load)
Q_next = I;
else
Q_next=Q_reg;
end

assign Q=Q_reg;

endmodule
