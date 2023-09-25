`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: HOSSAM DIAB
// 
// Create Date: 08/30/2023 08:17:17 PM
// Design Name: 
// Module Name: Modulus_Counter_tb
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


module Modulus_Counter_tb(  );
        localparam BITS =5;
        reg clk,reset_n,enable ,up ,load;
        reg [BITS-1 :0] IN;
        reg [BITS-1 :0] FINAL_VALUE;
        
        wire [BITS-1 :0] Q ;

   Modulus_Counter #(.BITS(BITS)) uut(
   .clk(clk),
   .reset_n(reset_n),
   .enable(enable) ,
   .up(up) ,
   .load(load),
   .IN(IN),
   .FINAL_VALUE(FINAL_VALUE),
   .Q(Q)
   
   );

localparam Period = 20 ;
always
begin
clk = 1'b0;
#(Period/2);
clk= 1'b1;
#(Period/2);
end

initial
begin
#3
reset_n =1'b0;
enable =1'b0;
up =1'b1;
load=1'b0;
IN = 'd22;
FINAL_VALUE = 'd31;

#40
reset_n =1'b1;
#10
enable =1'b1;
up =1'b1;
load=1'b0;
#250
load=1'b1;
IN = 'd22;
#500
FINAL_VALUE = 'd25;
up = 1'b0;

#200 $stop;
end

endmodule
