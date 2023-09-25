`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2023 06:15:03 PM
// Design Name: 
// Module Name: mux_beh_case
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


module mux_beh_case(
    input x1,x3,
    input x2,x4,
    input s0,s1,
    output reg f
    );
   
   always @(x1,x2,x3,x4,s0,s1)
  begin
//     case(s1)
//      0:
//         case(s0)
//         0: f= x1;
//         1: f= x2;
//         endcase
//      1:
//         case(s0)
//         0: f= y1;
//         1: f= y2;
//         endcase

     
//     endcase
//        if(~s1)
//        begin
//            if(~s0)
//            begin
//            f=x1;
//            end
//            else
//            begin
//            f=x2;
//            end
//        end
//        else
//        begin
//                    if(~s0)
//                    begin
//                    f=x3;
//                    end
//                    else
//                    begin
//                    f=x4;
//                    end
//        end
   end
endmodule
