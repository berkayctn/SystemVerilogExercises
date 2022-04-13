`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2022 18:39:06
// Design Name: 
// Module Name: testBench4FSM
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


module testBench4FSM();
reg clk;
reg [1:0] number;
wire q;

FSM dut(clk,number,q);

initial begin
        clk = 0;
        forever #10 clk = ~clk;
        end
        initial begin 
        number <= 00; #100;
        number <= 01; #100;
        number <= 10; #100;
        number <= 11; #100;
        end
endmodule
