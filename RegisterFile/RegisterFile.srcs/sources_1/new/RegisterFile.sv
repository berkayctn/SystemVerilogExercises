`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2022 12:40:05
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
    input logic[3:0] a1,a2,a3,
    input logic clk,we3,
    input logic[31:0] wd3,
    output logic[31:0] rd1,rd2);
    
    reg[31:0] rg [15:0]; //16 tane 32 bitlik register file
    initial rg[0] = 32'b00000000000000000000000000000000;
    initial rg[1] = 32'b00000000000000000000000000000001;
    initial rg[2] = 32'b00000000000000000000000000000010;
    initial rg[3] = 32'b00000000000000000000000000000011;
    initial rg[4] = 32'b00000000000000000000000000000100;
    initial rg[5] = 32'b00000000000000000000000000000101;
    initial rg[6] = 32'b00000000000000000000000000000111;
    initial rg[7] = 32'b00000000000000000000000000001000;
    initial rg[8] = 32'b00000000000000000000000000001001;
    initial rg[9] = 32'b00000000000000000000000000001010;  //10 = a
    initial rg[10] = 32'b00000000000000000000000000001011;
    initial rg[11] = 32'b00000000000000000000000000001100;
    initial rg[12] = 32'b00000000000000000000000000001101; // 13 = d
    initial rg[13] = 32'b00000000000000000000000000001110;
    initial rg[14] = 32'b00000000000000000000000000001111;
    initial rg[15] = 32'b00000000000000000000000000010000;
    
    always @(posedge clk) //With positive edge clock 
    if(we3==0) //read
    begin
    rd1 = rg[a1];
    rd2 = rg[a2];
    end
    else            //write
    rg[a3] = wd3;
    
endmodule
