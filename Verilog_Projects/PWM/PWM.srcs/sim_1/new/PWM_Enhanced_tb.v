`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2023 01:49:59 AM
// Design Name: 
// Module Name: PWM_Enhanced_tb
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


module PWM_Enhanced_tb(

    );
    localparam TIMER_BITS =16 , R = 8 ;
    
            reg clk,reset_n;
            reg [TIMER_BITS-1:0] FINAL_VALUE;
            reg [R:0] duty;
            wire PWM_OUT;  
            
            
    PWM_Enhanced #(.R(R),.TIMER_BITS(TIMER_BITS)) UUT(
        .clk(clk),
        .reset_n(reset_n),
        .FINAL_VALUE(FINAL_VALUE),
        .duty(duty),
        .PWM_OUT(PWM_OUT)
    
    );
    
    
    
//    localparam T =10 ;
//        always 
//        begin
//        clk = 1'b0;
//        #(T/2);
//        clk = 1'b1;
//        #(T/2);
//        end
        
//        initial
//        begin
        
//        end
endmodule
