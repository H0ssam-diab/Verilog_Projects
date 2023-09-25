`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2023 06:46:17 PM
// Design Name: 
// Module Name: rca_nbit_Adder
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


module rca_nbit_Adder
#(parameter n = 4)
(
        input [n-1 : 0] x,y,
        input c_in, 
        output [n-1 : 0] s,
        output c_out
    );
    wire [n-1 : 0] c;
    assign c_in = c[0];
    assign c_out = c[n];
    
    generate
    genvar k;
    for(k=0 ; k<n ; k=k+1)
    begin: stage
    FA fullAdder(
    .xi(x[k]),
    .yi(y[k]),
    .ci(c[k]),
    .s(s[k]),
    .co(c[k+1])
    );
    end
    endgenerate
    
endmodule
