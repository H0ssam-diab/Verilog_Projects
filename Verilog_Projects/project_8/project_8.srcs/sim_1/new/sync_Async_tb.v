`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2023 04:14:28 PM
// Design Name: 
// Module Name: sync_Async_tb
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


module sync_Async_tb(

    );
    wire D,clk,reset_n,clear_n;
    reg Q;
    
    reset_Set_Sync_Async UUT (
    .D(D),
    .clk(clk),
    .reset_n(reset_n),
    .clear_n(clear_n),
    .Q(Q)
        );
//        assign T=20;
        
//        always @(negedge clk)
//        begin
        
//        end
    
endmodule
