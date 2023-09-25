`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2023 05:17:44 PM
// Design Name: 
// Module Name: D_FF_tb
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


module D_FF_tb(
    );
    
    reg D,clk;
    reg reset_n;
    wire Q;
    D_FF uut(
    .D(D),
    .clk(clk),
    .reset_n(reset_n),
    .Q(Q)
    );
    
    localparam T = 20;
    always
    begin
        clk = 1'b0;
    #(T/2);
        clk =1'b1;
    #(T/2);  
    end
    
    initial
    begin
    #160 $finish;
    end
    
    initial
    begin
    reset_n =1'b0;
    D= 1'b1;
    #40
    reset_n=1'b1;
    end
endmodule
