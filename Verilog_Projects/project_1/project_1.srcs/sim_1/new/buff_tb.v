`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 04:34:02 PM
// Design Name: 
// Module Name: buff_tb
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


module buff_tb(

    );
    reg i;
    wire o;
    
    buff(
    .i(i),
    .o(o)
    );
    
    initial
    begin
        #40 $finish ;
    end
    
    initial
    begin
    i = 1'b0;
    #10
    i= 1'b1;
    end
endmodule
