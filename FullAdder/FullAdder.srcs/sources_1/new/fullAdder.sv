`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2022 22:23:10
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(input logic a, b, cin, 
                output logic s, cout);
   
   logic p, g;
   assign p = a ^ b;
   assign g = a & b;
   assign s = p ^ cin;
   assign cout = g | (p & cin);             
                                
endmodule
