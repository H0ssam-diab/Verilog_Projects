`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2023 08:09:31 PM
// Design Name: 
// Module Name: Detector_101_tb
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


module Detector_101_tb(

    );
    
    reg x,reset_n, clk;
    wire Moore_out, Meely_out;
    
    Meely_101_detector uut_meely(
    .x(x),
    .reset_n(reset_n),
    .clk(clk),
    .y(Meely_out)
    );
  Moore_101_detector uut_moore(
       .x(x),
       .reset_n(reset_n),
       .clk(clk),
       .y(Moore_out)
       );   
       
       localparam T = 10;
       always
       begin
       clk=1'b0;
       #(T/2);
       clk=1'b1;
       #(T/2);
       end
      
      initial
      begin 
      reset_n = 1'b0;
      #10
      reset_n = 1'b1;
      x = 1'b0;
      
      #T
      x = 1'b1;
      #T
      x = 1'b0;
      #7
      x= 1'b1;
      #14
      x= 1'b1;
      #18
      x= 1'b0;
      #T
      x= 1'b1;
      #14
      x= 1'b0;
      #8
      x= 1'b0;
      #(T*2)
      $stop;
      
      end
       
endmodule
