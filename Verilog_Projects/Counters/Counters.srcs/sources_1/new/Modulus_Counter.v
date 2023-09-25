`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2023 08:00:21 PM
// Design Name: 
// Module Name: Modulus_Counter
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


module Modulus_Counter #(parameter BITS =5)(
        input clk,reset_n,enable ,up ,load,
        input [BITS-1 :0] IN,
        input [BITS-1 :0] FINAL_VALUE,
        output [BITS-1 :0]Q
    );
    
    reg [BITS-1:0]Q_next,Q_reg;
    wire done ;
    assign Q= Q_reg ;
    assign done = Q_reg == FINAL_VALUE  ;
    
    always @(posedge clk , negedge reset_n)
    begin
        if(!reset_n)
        Q_reg <= 'b0;
        else if(enable)
        Q_reg <= Q_next ;
        else
        Q_reg <= Q_reg ;
    end
    
    
    always @(*)
    begin
    if(done)
    Q_next = 'b0;
    else
    casex({load,up})
    2'b00: Q_next = Q_reg -1;
    2'b01: Q_next = Q_reg +1;
    2'b1x: Q_next = IN ;
    default : Q_next = Q_reg;
    endcase
    end
    
endmodule
