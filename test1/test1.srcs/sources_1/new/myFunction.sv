`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2022 22:06:09
// Design Name: 
// Module Name: myFunction
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


module myFunction(input logic a, b,c,
                    output logic y);
                    
assign y = ~a & ~b & ~ c|
            a & ~b & ~c |
            a & ~b & c;                                     
                                     
endmodule
