`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2022 12:33:58
// Design Name: 
// Module Name: ALUtb
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


module ALUtb();

logic [7:0] a,b,Result;
logic [1:0] ctrl;
logic cout;

ALU dut(a,b,ctrl,cout,Result);

initial begin
a= 8'b11111111; b = 8'b00000001; ctrl= 2'b00; #10;
ctrl= 2'b01; #10;
ctrl= 2'b10; #10;
ctrl= 2'b11; #10;

end
endmodule
