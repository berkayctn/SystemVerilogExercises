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

logic [3:0] a,b,Result;
logic [1:0] AluControl;
logic v,c,n,z;

ALU dut(a,b,AluControl,Result,v,c,n,z);

initial begin
a= 4'b0011; b = 4'b0010; AluControl= 2'b00; #10;
a= 4'b0011; b = 4'b0011; AluControl= 2'b01; #10;
a= 4'b0111; b = 4'b0001; AluControl= 2'b00; #10;
end
endmodule
