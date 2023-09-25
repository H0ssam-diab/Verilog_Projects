`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2023 03:53:40 PM
// Design Name: 
// Module Name: reset_Set_Sync_Async
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


module reset_Set_Sync_Async(
        input D,clk,
        input reset_n, //async
        input clear_n, //sync
        output Q
    );
     reg Q_reg,Q_next;
     
     always @(negedge clk , negedge reset_n )
     begin
     Q_reg=Q_reg;
     if(!reset_n)
         Q_reg <= 1'b0;
     else
        Q_reg <= Q_next;
     
     end
     
     always @(D , clear_n )
     begin
     Q_next=Q_reg;
     if(!clear_n)
         Q_next=1'b0;
     else
         Q_next = D;
     end
     
     assign Q= Q_reg;
    
endmodule
