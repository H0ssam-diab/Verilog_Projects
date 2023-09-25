`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 11:13:17 PM
// Design Name: 
// Module Name: D_FF_neg
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


module D_FF_neg(
input D,clk,
output reg Q


    );
    
    
    always @(negedge clk)
    begin
    Q=D;
    
    end
endmodule
