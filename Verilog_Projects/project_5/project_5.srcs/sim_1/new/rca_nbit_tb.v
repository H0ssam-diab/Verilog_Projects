`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 07:18:35 PM
// Design Name: 
// Module Name: rca_nbit_tb
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


module rca_nbit_tb(

    );
            parameter n =4;    
            reg [n-1 : 0] x,y;
            reg carry_in; 
            wire [n-1 : 0] sum;
            wire carry_out;
    
    rca_nbit #(.n(n)) uut (
        .x(x),
        .y(y),
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
    x=4'd8;
    y=4'd9;
    carry_in=1'b1;
    end
endmodule
