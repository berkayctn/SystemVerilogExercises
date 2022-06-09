`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2022 10:17:49
// Design Name: 
// Module Name: tb
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


module tb();
logic [31:0] Result;    
logic Zero, Negative,Carry, oVerflow;
logic WE3,clk;
logic [31:0] RD1,RD2,A3;
instruction dut(Result,clk,Zero, Negative,Carry, oVerflow,RD1,RD2,A3);

initial begin
clk = 0;
forever #100 clk =~clk;
end
initial begin
WE3 = 1;
forever #100 WE3 = 1;
end
endmodule
