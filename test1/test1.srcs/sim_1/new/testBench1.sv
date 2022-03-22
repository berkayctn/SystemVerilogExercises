`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2022 22:11:43
// Design Name: 
// Module Name: testBench1
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

//Yaratýlan myFunction modülünde yazdýðýmýz þeyin doðru çalýþýp çalýþmadýðýný test ediyoruz
module testBench1();

logic a, b, c, y;
 // instantiate device under test
 myFunction dut(a, b, c, y);
 // apply inputs one at a time
 
 initial begin
 a = 0; b = 0; c = 0; #10;
 c = 1; #10;
 b = 1; c = 0; #10;
 c = 1; #10;
 a = 1; b = 0; c = 0; #10;
 c = 1; #10;
 b = 1; c = 0; #10;
 c = 1; #10;
 
 end
endmodule
