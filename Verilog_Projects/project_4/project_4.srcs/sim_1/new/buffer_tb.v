`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 05:54:15 PM
// Design Name: 
// Module Name: buffer_tb
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


module buffer_tb(

    );
    reg in;
    wire out;
    
    buffer buff_tb (
    .in(in),
    .out(out)
    );
    
    initial
    begin
        #20 $finish;
    end
    
    initial
    begin
    in=1'b1;
    #10
    in=1'b0;
    end
    
endmodule
