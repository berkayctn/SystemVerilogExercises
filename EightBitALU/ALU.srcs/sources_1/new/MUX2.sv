`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2022 12:27:42
// Design Name: 
// Module Name: MUX2
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


module MUX2(input logic [7:0] d0, d1,
input logic s,
output logic [7:0] y);
assign y = s ? d1 : d0;
endmodule
