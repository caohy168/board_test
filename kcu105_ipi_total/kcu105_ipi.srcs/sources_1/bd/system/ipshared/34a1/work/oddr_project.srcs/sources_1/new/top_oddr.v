`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2013 09:36:49 PM
// Design Name: 
// Module Name: top_oddr
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


module top_oddr(
  Q,
  CLK,
  D1,
  D2,
  SR
);
  
   output Q;
   input CLK;
   input D1;
   input D2;
   input SR;
   
   ODDRE1 ODDR_INST(
     .Q(Q),
     .C(CLK),
     .D1(D1),
     .D2(D2),
     .SR(SR)
   );
  
endmodule
