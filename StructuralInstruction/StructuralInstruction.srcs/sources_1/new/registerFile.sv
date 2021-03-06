`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2022 16:12:16
// Design Name: 
// Module Name: registerFile
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


module registerFile(
    input logic clk, WE3,
    input logic [3:0] A1, A2, A3,
    input logic [31:0] WD3,
    output logic [31:0] RD1, RD2
);

reg [31:0] rf [15:0];

initial rf[0] =  32'b0000;
initial rf[1] =  32'b0001;
initial rf[2] =  32'b0010;
initial rf[3] =  32'b0011;
initial rf[4] =  32'b0100;
initial rf[5] =  32'b0101;
initial rf[6] =  32'b0110;
initial rf[7] =  32'b0111;
initial rf[8] =  32'b1000;
initial rf[9] =  32'b1001;
initial rf[10] = 32'b1010;
initial rf[11] = 32'b1011;
initial rf[12] = 32'b1100;
initial rf[13] = 32'b1101;
initial rf[14] = 32'b1110;
initial rf[15] = 32'b1111;

assign RD1 = rf[A1];
assign RD2 = rf[A2];
   
   
always @ (posedge clk)
begin
    if(WE3)
       rf[A3] <= #5 WD3;

end
endmodule