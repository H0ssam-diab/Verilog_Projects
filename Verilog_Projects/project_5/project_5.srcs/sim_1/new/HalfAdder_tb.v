`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 06:23:54 PM
// Design Name: 
// Module Name: HalfAdder_tb
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


module HalfAdder_tb(

    );
    reg x,y;
    wire sum, carry;
    
    HalfAdder uut(
    .x(x),
    .y(y),
    .sum(sum),
    .carry(carry)
    );
    
    initial
    begin
        #40 $finish;
    end
    
    initial
    begin
    x=1'b0;
    y=1'b0;
    #10
    x=1'b1;
    y=1'b0;
    #10
    x=1'b0;
    y=1'b1;
    #10
    x=1'b1;
    y=1'b1;
    end
endmodule
