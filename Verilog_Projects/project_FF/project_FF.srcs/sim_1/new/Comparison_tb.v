`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 11:46:40 PM
// Design Name: 
// Module Name: Comparison_tb
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


module Comparison_tb(

    );
     reg clk,D;
       wire Q_latch,Q_posFF,Q_negFF;
       
       Compare_Storage_Elements uut(
       .clk(clk),
       .D(D),
       .Q_latch(Q_latch),
       .Q_posFF(Q_posFF),
       .Q_negFF(Q_negFF)
       );
       
       localparam T =20; //clock period
       always
       begin
       clk=1'b1;
       #(T/2);
       clk=1'b0;
       #(T/2);
       end
       
       initial
       begin
       D=1'b1;
       #(3*T)
       D=1'b0;
       @(posedge clk);
       D=1'b1;
       #5 D=1'b0;
       #5 D=1'b1;
       #5 D=1'b0;
       
       repeat(3)@(negedge clk);
        D=1'b1;
        #7 
        D=1'b0;
       
       #10 $stop;
       
       end
endmodule
