`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 11:50:58 PM
// Design Name: 
// Module Name: Compare_Storage_tb
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


module Compare_Storage_tb(

    );
       reg clk,D;
       wire Q_latch,Q_pos,Q_neg;
       
       Compare_Storage_Elements UUT(
       .clk(clk),
       .D(D),
       .Q_latch(Q_latch),
       .Q_pos(Q_pos),
       .Q_neg(Q_neg)
       );
       
       localparam T =20; //clock period
       always
       begin
       clk=1'b0;
       #(T/2);
       clk=1'b1;
       #(T/2);
       end
       
//       initial
//       begin
//       D=1'b1;
//       #(3*T)
//       D=1'b0;
//       @(posedge clk);
//       D=1'b1;
//       #5 D=1'b0;
//       #5 D=1'b1;
//       #5 D=1'b0;
       
//       repeat(3)@(negedge clk);
//        D=1'b1;
//        #7 
//        D=1'b0;
       
//       #10 $stop;
       
//       end
endmodule
