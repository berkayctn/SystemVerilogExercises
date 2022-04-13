`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2022 18:33:46
// Design Name: 
// Module Name: FSM
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


module FSM(
input clk, input[1:0] number, output q);

reg state,nextState;
parameter S0 = 0;
parameter S1 = 1;

flop FSMflop (clk,nextState,state);

always @ (*) 
        case (state)
            S0: if (number == 2'b01)
                      nextState = S1;
                 else nextState = S0;
            S1: if (number == 2'b00)
                       nextState = S1;
                 else  nextState = S0;
              default: nextState = S0; //ilk durumu bilmediðimiz için default olarak en baþta bir þey atamamýz gerekir
              endcase
              
assign q = state;      
endmodule
