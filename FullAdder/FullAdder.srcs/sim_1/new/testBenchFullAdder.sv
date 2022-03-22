`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2022 22:24:32
// Design Name: 
// Module Name: testBenchFullAdder
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


module testBenchFullAdder();

logic a, b, cin, s, cout;

fullAdder dut (a,b,cin,s,cout);

initial begin
 a = 0; b = 0; cin = 0; #10;
 cin = 1; #10;
 b = 1; cin = 0; #10;
 cin = 1; #10;
 a = 1; b = 0; cin = 0; #10;
 cin = 1; #10;
 b = 1; cin = 0; #10;
 cin = 1; #10;

end 
endmodule
