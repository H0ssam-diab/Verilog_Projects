`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 06:55:54 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input x,
    input y,
    input carry_in,
    output sum,
    output carry_out
    );
    wire coi , soi , coii ;
        
        HalfAdder A0 (
        .x(x),
        .y(y),
        .carry(coi), // coi : internal signal 
        .sum(soi) // soi : internal signal 
        );
        
        HalfAdder A1 (
            .x(carry_in),
            .y(soi),
            .carry(coii),// coii : internal signal 
            .sum(sum)
            );
            
           assign carry_out = coi | coii ;
    
    
endmodule
