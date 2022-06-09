`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2022 10:08:49
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
output logic [31:0] Result,
input logic clk,
output logic Zero, Negative, Carry, oVerflow,
output logic[31:0] RD1d,RD2d,A3d

    );
reg [13:0] data;
reg [31:0]  RD1,RD2;
registerFile rg(clk,WE3,data[7:4],data[3:0],data[11:8],Result,RD1,RD2,A3d);
ALU alu(RD1,RD2,data[13:12],Result,Zero,Negative,Carry,oVerflow);
instruction_memory in(clk,data);
assign RD1d = RD1;
assign RD2d = RD2;
endmodule
