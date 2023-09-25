`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2023 12:29:13 AM
// Design Name: 
// Module Name: Timer
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


module Timer #(parameter BITS =4)(
    input clk , reset_n , enable ,
    input [BITS -1:0]Final_Value,
    output done 

    );
    reg  [BITS -1:0]Q_next, Q_reg;
    
    always @(posedge clk, negedge reset_n)
    begin
        if(!reset_n)
         Q_reg <= 'b0;
        else if(enable)
        Q_reg <= Q_next;
        else
        Q_reg <= Q_reg;
    end
    
    assign done = Q_reg == Final_Value ;
    
    always @(*)
    begin
    Q_next = done ? 'b0 : Q_reg +1 ;
    end
    
    
endmodule
