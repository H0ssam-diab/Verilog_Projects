`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2023 04:07:17 PM
// Design Name: 
// Module Name: Async_Counter
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


module Async_Counter(
        input T , clk,reset_n,
        output [3:0] Q
    );
    assign T = 1'b1;
    
    T_FF Bit_0(
        .clk(clk),
        .T(T),
        .reset_n(reset_n),
        .Q(Q[0]));
        
     T_FF Bit_1(
                .clk(~Q[0]),
                .T(T),
                .reset_n(reset_n),
                .Q(Q[1]));
                
     T_FF Bit_2(
                 .clk(~Q[1]),
                 .T(T),
                 .reset_n(reset_n),
                 .Q(Q[2]));  
   T_FF Bit_3(
                .clk(~Q[2]),
                .T(T),
                .reset_n(reset_n),
                .Q(Q[3]));
        
   
endmodule
