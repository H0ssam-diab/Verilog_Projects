`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2023 04:28:10 PM
// Design Name: 
// Module Name: Adder_Sub_nbit
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


module Adder_Sub_nbit
#(parameter n = 7)
(
        input [n-1 :0] x,y,
        input add_n,
        output [n-1 :0] s,
        output cout
    );
    wire [n-1 :0] y_xored;
    generate 
    genvar k ;
    for (k=0; k<n ; k=k+1)
    begin: bit
     assign y_xored[k] = y[k] ^ add_n;
    end
    endgenerate
//////////////
    
    rca_nbit_Adder #(.n(n)) AS(
    .x(x),.y(y_xored),
    .c_in(add_n),
    .s(s),
    .c_out(cout)
    );
 
    
endmodule
