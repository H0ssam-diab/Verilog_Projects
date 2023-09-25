`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 07:13:18 PM
// Design Name: 
// Module Name: rca_nbit
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


module rca_nbit #( parameter n = 4)(
        input [n-1 : 0] x,y,
        input carry_in, 
        output [n-1 : 0] sum,
        output carry_out
          );
    wire [n : 0] c;
   
    assign c[0] = carry_in  ;
    assign carry_out = c[n];

    
    generate
    genvar k;
    for(k=0 ; k<n ; k=k+1)
    begin: stage
    Full_Adder FA(
    .x(x[k]),
    .y(y[k]),
    .carry_in(c[k]),
    .sum(sum[k]),
    .carry_out(c[k+1])
    );
    
    end
    endgenerate
    
endmodule
