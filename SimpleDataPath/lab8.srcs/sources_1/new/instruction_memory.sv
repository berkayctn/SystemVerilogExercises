`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2022 10:12:48
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
input logic clk, output logic [13:0] out
    );
logic [1:0] PC;

initial PC = 2'b00;




reg[13:0] memory[3:0];
initial memory[0] = 14'b00_0000_0001_1111; // 0001 + 1111 -> 1 1111 -> 0000.. 010  -> R1 + R15 =  R0 
initial memory[1] = 14'b01_1111_0000_1110; // 0000 - 1110 (Subtract) -> FFFF...2   ->  R0 - R14 =  R15 
initial memory[2] = 14'b10_1111_1110_1101; // 1110 and 1101  -> 1100 -> 0000 ... C -> R14 and R13 = R15 
initial memory[3] = 14'b11_1101_1111_1011;  // 1111 or 1011 -> 1111 -> 0000 ... F  -> R15 or R11 = R13 

assign out = memory[PC];


always @(posedge clk)
begin
PC <= PC+2'b01;
end





endmodule
