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
    input logic [7:0] a,b,
    input logic [1:0] ctrl,
    output [7:0] Result);
    
    logic [7:0] n3,n4,cout;
    wire[7:0] n1,n2;
    
    MUX2 b_mux(b,~b,ctrl[0],n1);
    NbitFulladder adder(a,n1,ctrl[0],n2,cout);
    
    assign n3 = a&b;
    assign n4 = a|b;
      
    MUX4 mux (n2,n2,n3,n4,ctrl,Result);  
        
      
endmodule
