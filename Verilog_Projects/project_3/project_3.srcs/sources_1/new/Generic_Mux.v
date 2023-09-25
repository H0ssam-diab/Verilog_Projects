`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 02:25:40 AM
// Design Name: 
// Module Name: Generic_Mux
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


module Generic_Mux#(parameter INS = 4)(
        input [INS-1 :0]w,
        input [$clog2(INS):0]s,
        output reg f
    );
    integer k;
    always @(w,s)
    begin
    f= 'bx;
        for(k=0;k<INS ; k=k+1)
            if(k==s)
             f=w[k];
    end
    
endmodule
