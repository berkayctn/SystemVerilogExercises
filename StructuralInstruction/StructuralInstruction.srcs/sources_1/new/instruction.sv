`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2022 16:12:16
// Design Name: 
// Module Name: instruction
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


module instruction(
input logic [13:0] dataInput,
output logic [31:0] Result,
output logic Negative,Zero,Carry,oVerflow);


wire [31:0] RD1,RD2;
registerFile rg(clk,WE3,dataInput[9:6],dataInput[13:10],dataInput[5:2],Result,RD1,RD2);
ALU alu(RD1,RD2,dataInput[1:0],Result,Negative,Zero,Carry,oVerflow);

endmodule
