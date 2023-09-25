`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2023 05:01:56 PM
// Design Name: 
// Module Name: D_FF
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


module D_FF(
        input D ,clk,reset_n, //synchronous reset
        output Q
    );
    
    reg Q_next,Q_reg;
    always @(posedge clk)
    begin
        Q_reg <= Q_next;
    end      
    
    always @(*)
    begin
        if(!reset_n)
        Q_next = 'b0;
        else
        Q_next = D;
    end
    
    assign Q = Q_reg;
endmodule
