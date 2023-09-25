`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2023 03:15:11 PM
// Design Name: 
// Module Name: guidelines
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


module guidelines(
        
        input a,b,c,clk,
        output f,g
    );
    
    reg f_reg,g_reg,f_next,g_next;
    
    always @(posedge clk)
    begin
        f_reg <= f_next;
        g_reg <= g_next;
    end
    
    always @(a,b,c,g_reg)
    begin
        f_next= a & ~g_reg;
        
        g_next= b|c;
    end
    
    assign f = f_reg;
    assign g= g_reg;
    
endmodule
