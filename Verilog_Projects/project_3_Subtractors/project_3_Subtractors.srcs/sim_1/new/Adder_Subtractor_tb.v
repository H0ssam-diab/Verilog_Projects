`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2023 04:49:09 PM
// Design Name: 
// Module Name: Adder_Subtractor_tb
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


module Adder_Subtractor_tb(
 );
        parameter n = 4;
        reg [n-1 :0] x,y;
        reg add_n;
        wire [n-1 :0] s;
        wire cout;
        wire overflow;
        
       Adder_Subtractor #(.n(n)) uut (
       .x(x),.y(y),
       .add_n(add_n),
       .s(s),
       .cout(cout),
       .overflow(overflow)
       );
       
       initial
       begin
       #40 $finish;
       end
       
       initial
       begin
       add_n =1'b0; //adder
       x= 4'd7;
       y = 4'd5;
      
       end
       
//       #10
//       x= 4'd7;
//       y = 4'd5;
//       add_n =1'b1;  //subtractor
       
//       #10
//       x= 4'd4;
//       y = -4'd5;
//       add_n =1'b0; // adder
       
//       #10 
//       x= -4'd6;
//       y = -4'd3;
//       add_n =1'b1;
//       end
       
//       initial
//       begin
//       $monitor("time = %3d  : x= %3d \t y= %3d \t add_n= %1b \t Result= %3d \t carry_out= %1b \t Overflow= %1b",$time , x,y,add_n,s,cout,overflow);
//       end
endmodule
