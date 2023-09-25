`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2023 07:59:49 PM
// Design Name: 
// Module Name: Basic_PWM
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


module Basic_PWM #(parameter R = 8)(
        input [R-1:0]duty,
        input clk,reset_n,
        output pwm_out
    );
    reg [R-1: 0] Q_next,Q_reg;
    
    always @(posedge clk, negedge reset_n)
    begin
        if(!reset_n)
        Q_reg <= 'b0;
        else
        Q_reg <= Q_next ;
        
    
    end
    
    always @(*)
    begin
    Q_next = Q_reg +1 ;
    end
    
    assign pwm_out = (Q_reg< duty);
endmodule
