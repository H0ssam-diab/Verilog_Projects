`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2023 05:01:52 PM
// Design Name: 
// Module Name: Sync_Counter
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


module Sync_Counter(
        input T , clk , clear_n,
        output [3:0]Q
    );
    wire [2:0]a;
    T_FF Bit_0(
            .clk(clk),
            .T(T),
            .reset_n(clear_n),
            .Q(Q[0]));
            assign a[0] = Q[0] & T;
         T_FF Bit_1(
                    .clk(clk),
                    .T(a[0]),
                    .reset_n(clear_n),
                    .Q(Q[1]));
             assign a[1] = Q[1] & a[0];
         T_FF Bit_2(
                     .clk(clk),
                     .T(a[1]),
                     .reset_n(clear_n),
                     .Q(Q[2]));  
             assign a[2] = Q[2] & a[1];
       T_FF Bit_3(
                    .clk(clk),
                    .T(a[2]),
                    .reset_n(clear_n),
                    .Q(Q[3]));
            
       
    
    
endmodule
