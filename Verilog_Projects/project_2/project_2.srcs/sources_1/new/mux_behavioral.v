`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2023 05:44:25 PM
// Design Name: 
// Module Name: mux_behavioral
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


module mux_behavioral(
    input x1,
    input x2,
    input s,
    output reg f
    );
    always @(x1,x2,s) 
    begin
        if(s)
        begin
            f=x2;
        end
        else 
        begin
            f=x1;
        end
        
    end
    
    
endmodule
