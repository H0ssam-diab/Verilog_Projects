`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 04:09:15 PM
// Design Name: 
// Module Name: Generic_Decoder
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


module Generic_Decoder #(parameter N=4)(
        input [N-1:0]w,
        input EN,
        output reg [0: 2**N-1]y
    );
    always @(w,EN)
    begin
        y='b0;  //Default value
        if(EN)
            y[w]=1'b1;
        else
             y='b0;
    end
    
    
endmodule 
