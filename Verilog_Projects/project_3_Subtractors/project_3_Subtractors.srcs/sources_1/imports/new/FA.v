`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2023 05:29:54 PM
// Design Name: 
// Module Name: FA
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


module FA(
    input xi,
    input yi,
    input ci,
    output s,
    output co
    );
    wire coi , soi , coii ;
    
    halfAdder A0 (
    .x(xi),
    .y(yi),
    .c(coi), // coi : internal signal 
    .s(soi) // soi : internal signal 
    );
    
    halfAdder A1 (
        .x(ci),
        .y(soi),
        .c(coii),// coii : internal signal 
        .s(s)
        );
        
       assign co = coi | coii ; 
endmodule
