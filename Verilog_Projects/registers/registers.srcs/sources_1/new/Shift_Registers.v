`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2023 06:52:56 PM
// Design Name: 
// Module Name: Shift_Registers
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


module Shift_Registers(
    
    input clk,SI,
    output SO
    );
    
    reg [3:0] Q_next, Q_reg;
    
    always @(posedge clk)
    begin
    Q_reg <= Q_next;
    end
    
    always @(*)
     begin
            Q_next = {SI,Q_reg[3:1]}; //Shift right Register
          //  Q_next = {Q_reg[2:0],SI}; //SHIFT LEFT REGISTER 
     end
    assign SO= Q_reg[0];
 //   assign SO= Q_reg[N-1]; SHIFT LEFT REGISTER SERIAL OUT
    
    
    
endmodule
