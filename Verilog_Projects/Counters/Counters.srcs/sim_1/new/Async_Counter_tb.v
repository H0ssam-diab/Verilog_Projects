`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2023 04:46:00 PM
// Design Name: 
// Module Name: Async_Counter_tb
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


module Async_Counter_tb(    );
reg T , clk , reset_n;
wire [3:0]Q;

Async_Counter uut(
.T(T),
.clk(clk),
.reset_n(reset_n),
.Q(Q)
);


localparam PT =20 ;
always
begin
clk = 1'b0;
#(PT/2);
clk= 1'b1;
#(PT/2);
end

initial 
begin
reset_n = 1'b0;
T = 1'b0;

#45
reset_n = 1'b1;
T = 1'b1;

end




endmodule
