`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2022 09:46:45
// Design Name: 
// Module Name: ALU
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


module ALU( input logic [31:0] A,B,
input logic [1:0] alucontrol,
output logic [31:0] result,
output logic Zero, Negative, Carry, oVerflow );
wire [31:0] n,sum,D,C;
wire  Cout;
assign C=A|B;
assign D=A&B;
mux2 first(B, ~B,alucontrol[0],n);
NbitFulladder second(A,n,alucontrol[0],sum,Cout);
mux4 third(sum,sum,D,C,alucontrol,result);
assign Zero = &(~result);
assign Negative = result[31];
assign Carry = ~alucontrol[1] &Cout;   
assign oVerflow = ((~alucontrol[1])&(sum[31]^A[31])&(~(B[31]^A[31]^alucontrol[0])));
endmodule
