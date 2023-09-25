`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 04:36:37 PM
// Design Name: 
// Module Name: Generic_Decoder_tb
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


module Generic_Decoder_tb(

    );
    parameter N = 3;
    reg [N-1:0]w;
    reg EN;
    wire [0: 2**N-1]y;
    
    Generic_Decoder#(.N(N)) uut(
    .w(w),
    .EN(EN),
    .y(y)
    );
    
    initial
    begin
        #((2**N)*(25)) $finish;
    end
    
    integer k;
    initial
    begin
       for(k=0;k<2**N;k=k+1)
       begin
       #10
       w=k;
       EN=1;
       end
       
       for(k=0;k<2**N;k=k+1)
              begin
              #10
              w=k;
              EN=0;
              end
    end
    
endmodule
