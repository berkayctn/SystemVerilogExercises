`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2022 12:59:11
// Design Name: 
// Module Name: FinalMUX
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


module FinalMUX(d0, d1,d2,d3,s,y);
input logic [3:0] d0, d1,d2,d3;
input logic [1:0] s;
output logic [3:0] y ;
wire[3:0] n1,n2;


MUX2 lowmux (.s(s[0]),.d0(d0), .d1(d1), .y(n1));
MUX2 highmux (.s(s[0]),.d0(d2), .d1(d3), .y(n2));
MUX2 finalmux (.s(s[1]),.d0(n1), .d1(n2), .y(y));

assign y = finalmux.y;

endmodule
