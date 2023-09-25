`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hossam
// 
// Create Date: 09/02/2023 07:39:46 PM
// Design Name: 
// Module Name: Meely_101_detector
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


module Meely_101_detector(

        input x ,reset_n,clk,
        output y
    );
    
    reg [1:0]state_reg, state_next;
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;
    
    
    always @(posedge clk , negedge reset_n)
    begin
        if(!reset_n)
            state_reg <= S0 ;
        else
            state_reg <= state_next;
    end
    
    always@(*)
    begin
    case(state_reg)
        S0: if(x)
                state_next = S1;
            else
                state_next = S0;
        S1: if(x)
                state_next = S1;
            else
                state_next = S2;
        
        S2: if(x)
                state_next = S1;
            else
                state_next = S0;
    endcase
    end
    
    assign y = ( state_reg == S2)& x ;
    
endmodule
