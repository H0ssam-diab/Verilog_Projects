`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2023 05:59:35 PM
// Design Name: 
// Module Name: rippleCarryAdder
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


module rippleCarryAdder(
    input x0,x1,x2,x3,cin,
    input y0,y1,y2,y3,
    output s0,s1,s2,s3,cout
    );
    FA fa0 (
    .xi(x0),
    .yi(y0),
    .ci(cin),
    .s(s0),
    .co(c1)
    );
    FA fa1 (
        .xi(x1),
        .yi(y1),
        .ci(c1),
        .s(s1),
        .co(c2)
        );
        FA fa2 (
            .xi(x2),
            .yi(y2),
            .ci(c2),
            .s(s2),
            .co(c3)
            );
            FA fa3 (
                .xi(x3),
                .yi(y3),
                .ci(c3),
                .s(s3),
                .co(cout)
                );
    
endmodule
