`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2023 08:00:50 PM
// Design Name: 
// Module Name: Basic_PWM_tb
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


module Basic_PWM_tb(

    );
    localparam R = 8 , T = 10;
    reg [R-1:0]duty;
    reg clk ,reset_n;
    wire pwm_out;
    
    Basic_PWM #(.R(R)) uut(
    .duty(duty),
    .clk(clk),
    .reset_n(reset_n),
   .pwm_out(pwm_out)
    
    );
    
    always 
    begin
    clk = 1'b0;
    #(T/2);
    clk = 1'b1;
    #(T/2);
    end
    
    initial
    begin
    reset_n = 1'b0;
    #5
    reset_n = 1'b1;
    duty = 0.25 * (2**R);
    #50000
    duty = 0.75 * (2**R);
    
    end
endmodule
