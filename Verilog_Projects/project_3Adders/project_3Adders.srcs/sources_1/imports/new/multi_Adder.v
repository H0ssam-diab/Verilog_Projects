`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2023 07:19:32 PM
// Design Name: 
// Module Name: multi_Adder
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


module multi_Adder(
input [15:0] a,b,
output [15:0] s_ab,
output cout_ab,

input [33:0] x,y,
output [33:0] s_xy,
output cout_xy

    );
    rca_nbit_Adder #(.n(16)) adder_16bit(
    .x(a),
    .y(b),
    .s(s_ab),
    .c_in(0),
    .c_out(cout_ab)
    
    );
     rca_nbit_Adder #(.n(34)) adder_34bit(
        .x(x),
        .y(y),
        .s(s_xy),
        .c_in(0),
        .c_out(cout_xy));
    
endmodule
