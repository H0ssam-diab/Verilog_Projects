`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2023 04:12:10 PM
// Design Name: 
// Module Name: T_FF
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


module T_FF(
        input clk,T,reset_n,
        output Q
    );
    
    localparam C2Q_DELAY = 2; //CLOCK TO Q DELAY ... WHICH IS THE TIME TAKEN TO UPDATE THE CURRENT VALUE (EFFECTIVE IN SIMULATION ONLY  )
    
    reg Q_next,Q_reg;
    
    always @(posedge clk, negedge reset_n)
    begin
    if(!reset_n) //async reset
    Q_reg <= 1'b0;
    else
    #C2Q_DELAY Q_reg <= Q_next;
    end
    
    always @(*)
    begin
    Q_next = T ? ~Q_reg : Q_reg;
    end
    
    assign Q = Q_reg ;
endmodule
