`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2022 12:27:42
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


module ALU(
    input logic [3:0] a,b,
    input logic [1:0] AluControl,
    output [3:0] Result ,
    output logic v,c,n,z);
    
    logic [3:0] n3,n4;
    wire[3:0] n1,n2;
    
    assign n3 = a&b;
    assign n4 = a|b;
    
    MUX2 b_mux(b,~b,AluControl[0],n1);
    NbitFulladder adder(a,n1,AluControl[0],n2,cout);
      
    MUX4 mux (n2,n2,n3,n4,AluControl,Result);  
    
    assign n = Result[3];
    and (z,~Result[0],~Result[1],~Result[2],~Result[3]);
    and (c,~AluControl[1],cout);

    logic n5,n6;
    
    xor(n5,a[3],n2[3]);
    xnor(n6,AluControl[1],a[3],b[3]);
    and(v,~AluControl[0],n5,n6);       
      
endmodule
