`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2023 12:29:53 AM
// Design Name: 
// Module Name: PWM_Enhanced
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


module PWM_Enhanced #(parameter R =8 , TIMER_BITS = 16)(
        input clk,reset_n,
        input [TIMER_BITS-1:0] FINAL_VALUE,
        input [R:0] duty,
        output PWM_OUT
    );
    reg [R-1: 0] Q_next,Q_reg,D_next,D_reg;
    
    wire timer_done;
    
        always @(posedge clk, negedge reset_n)
        begin
            if(!reset_n)
                begin
                Q_reg <= 'b0;
                D_reg <= 1'b0;
                end
            
            else if(timer_done)
                begin
                D_reg <= D_next;
                Q_reg <= Q_next ;
                end
            else
                begin
                D_reg <= D_reg ;
                Q_reg <= Q_reg ;           
                end
        end
        
        
        always @(*)
        begin
        Q_next = Q_reg +1 ;
        D_next = Q_reg < duty;
        end
        
        Timer #( .BITS(TIMER_BITS)) TIMER0(
            .clk(clk) , 
            .reset_n(reset_n),
            .enable(1'b1) ,
            .Final_Value(FINAL_VALUE),
            .done(timer_done) 
        
            );
        
        assign PWM_OUT = D_reg;
endmodule
