`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2023 04:04:49 PM
// Design Name: 
// Module Name: Adder_Sub_4bit
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


module Adder_Sub_4bit 
(
        input [3:0] x ,y,
        input add_n,
        output [3:0] s,
        output cout
    );
    wire [3:0] y_xored;
    assign y_xored[0] = y[0] ^ add_n;
    assign y_xored[1] = y[1] ^ add_n;
    assign y_xored[2] = y[2] ^ add_n;
    assign y_xored[3] = y[3] ^ add_n;

    rippleCarryAdder(
    .x0(x[0]),.x1(x[1]),.x2(x[2]),.x3(x[3]),
    .y0(y_xored[0]),.y1(y_xored[1]),.y2(y_xored[2]),.y3(y_xored[3]),
    .cin(add_n),.cout(cout),
    .s0(s[0]),.s1(s[1]),.s2(s[2]),.s3(s[3])
    );
    
endmodule
