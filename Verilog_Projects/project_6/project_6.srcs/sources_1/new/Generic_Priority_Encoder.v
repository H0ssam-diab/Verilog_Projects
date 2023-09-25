`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 05:42:41 PM
// Design Name: 
// Module Name: Generic_Priority_Encoder
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


module Generic_Priority_Encoder#(parameter N=8)(
        input [N-1:0]w,
        output Z,
        output reg [$clog2(N)-1:0]y
        
    );
    assign Z=|w;
    
    integer k;
    
    always @(w)   
    begin
    y='bx;
        for(k=0;k<N;k=k+1)
            if(w[k])
            begin
            y=k;    
            end
    end
    
endmodule
