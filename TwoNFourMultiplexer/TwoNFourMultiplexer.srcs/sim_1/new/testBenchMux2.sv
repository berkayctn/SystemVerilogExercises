`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2022 23:43:33
// Design Name: 
// Module Name: testBenchMux2
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


module testBenchMux2();
logic [3:0] d0, d1;
logic s;
logic [3:0] y;

MUX2 dut(d0,d1,s,y);

initial begin

d0 = 4'b0101; d1= 4'b1010; s=0; #10;
d0 = 4'b0101; d1= 4'b1010; s=1; #10;

end
endmodule
