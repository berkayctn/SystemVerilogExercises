`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2022 13:00:02
// Design Name: 
// Module Name: RegisterFileTB
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


module RegisterFileTB();
logic we3;
reg clk;
logic[3:0] a1,a2,a3;
logic[31:0] rd1,rd2,wd3;

RegisterFile dut (a1,a2,a3,clk,we3,wd3,rd1,rd2);
initial begin
clk = 0; forever #10 clk =~ clk;
end

initial begin
a1 = 4'b0000; a2=4'b0001; a3=4'b0010; we3 = 0; #100;
a1 = 4'b1001; a2=4'b1100; a3=4'b0101; we3 = 0; #100;
a1 = 4'b0000; a2=4'b0001; a3=4'b0010; we3 = 1; wd3= 4'b00000000000000000000000000001110; #100;
a1 = 4'b0010; a2=4'b0010; a3=4'b0010; we3 = 0; #100;

end
endmodule
