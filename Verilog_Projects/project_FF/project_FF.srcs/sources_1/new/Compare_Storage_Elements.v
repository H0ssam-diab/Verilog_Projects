`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 11:16:15 PM
// Design Name: 
// Module Name: Compare_Storage_Elements
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


module Compare_Storage_Elements(
        input clk,D,
        output Q_latch,Q_posFF,Q_negFF
    );
    
    D_Latch(
    .D(D),
    .clk(clk),
    .Q(Q_latch)
    
    );
    
    
    D_FF(
    .D(D),
    .clk(clk),
    .Q(Q_posFF)
    
    );
    
    
    D_FF_neg(
    .D(D),
    .clk(clk),
    .Q(Q_negFF)
    );
    
endmodule
