`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 07:02:21 PM
// Design Name: 
// Module Name: Full_Adder_tb
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


module Full_Adder_tb(

    );
    reg x,y,carry_in;
    wire sum , carry_out;
    
    Full_Adder uut(
    .x(x),.y(y),
    .carry_in(carry_in),
    .sum(sum),
    .carry_out(carry_out)
    
    );
    
    initial
    begin
        #40 $finish;
    end
    
    initial
    begin
    x=1'b0;
    y=1'b1;
    carry_in=1'b1;
    #10
     x=1'b1;
     y=1'b1;
     carry_in=1'b1;
    #10
     x=1'b0;
       y=1'b0;
       carry_in=1'b1;
    #10
     x=1'b0;
       y=1'b0;
       carry_in=1'b0;    
    
    end
    
    
endmodule
