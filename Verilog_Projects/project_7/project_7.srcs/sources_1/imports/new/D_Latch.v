`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 10:49:54 PM
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
        input D,
        input clk,
        output reg Q
    );
    
    always @(D,clk)
    begin
    if(clk)
    Q=D;
    else
    Q=Q;
    end
    
endmodule
