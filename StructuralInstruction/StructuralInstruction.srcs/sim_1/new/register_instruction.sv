`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2022 16:15:01
// Design Name: 
// Module Name: register_instruction
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


module register_instruction();
logic [13:0] dataInput;
logic [31:0] Result;
logic Negative,Zero,Carry,oVerflow;
logic WE3,clk;
instruction dut(dataInput,Result,Negative,Zero,Carry,oVerflow);
logic [1:0] PC;
reg[13:0] memory[3:0];

initial begin
clk=0; forever #100 clk=~clk;
end

initial begin
WE3=1; forever #100 WE3=1;
end

initial begin 
memory[0] = 14'b0000_0000_0111_00; //1C -> 0-2-7 sum (2 + 3)
memory[1] = 14'b1100_0110_0011_01; //318D -> subtraction   12 (C)_ 6 _3_ (subtraction) (6 - 12)
memory[2] = 14'b1011_1111_1101_10; //2FF4 -> and   11 (B)_ 15(F)_ 13(D)_ (AND) (1011)
memory[3] = 14'b1111_0101_1110_11; //3D78 -> or   15(F)_5_ 14(E)_ (OR) (1111)
end

initial PC=2'b00;

assign dataInput = memory[PC];

always @ (posedge clk)
begin
PC = PC + 2'b01;
end

endmodule
