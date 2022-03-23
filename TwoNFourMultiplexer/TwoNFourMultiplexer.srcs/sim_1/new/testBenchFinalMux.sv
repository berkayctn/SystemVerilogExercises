`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2022 13:44:03
// Design Name: 
// Module Name: testBenchFinalMux
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


module testBenchFinalMUX();
 logic [3:0] d0, d1, d2, d3;
 logic [1:0] s;
 logic [3:0] y;
 
 FinalMUX dut(d0,d1,d2,d3,s,y);
 
 initial begin
 d0= 4'b0000; d1=4'b0001; d2=4'b0010; d3=4'b0011; s=2'b00; #10;
 d0= 4'b0000; d1=4'b0001; d2=4'b0010; d3=4'b0011; s=2'b01; #10;
 d0= 4'b0000; d1=4'b0001; d2=4'b0010; d3=4'b0011; s=2'b10; #10;
 d0= 4'b0000; d1=4'b0001; d2=4'b0010; d3=4'b0011; s=2'b11; #10;
 end
endmodule
