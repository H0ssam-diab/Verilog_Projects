`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 05:54:48 PM
// Design Name: 
// Module Name: Generic_Priority_Encoder_tb
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


module Generic_Priority_Encoder_tb(

    );
    parameter N=8;
    reg [N-1:0]w;
    wire [$clog2(N)-1:0]y;
    wire Z;
    
    Generic_Priority_Encoder#(.N(N)) uut(
    .w(w),
    .y(y),
    .Z(Z)
    );
    
//    initial
//    begin
//    #(10* 2**N + 10) $finish;
//    end
    
    integer k;
    initial
    begin
        for(k=0;k<2**N;k=k+1)
        begin
            #5
            w=k;
        end
       
    end
    
endmodule
