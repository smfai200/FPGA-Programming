`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 	kings.technology
// Engineer: 	Syed Faizan
// 
// Create Date:    16:34:59 11/11/2018 
// Design Name: 
// Module Name:    upCounter 
// Project Name:
// Target Devices: Spartan-3
// Tool versions:  XC3S200
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module upCounter(reset, clock, Num_16OutputLine);
    input reset;
    input clock;
    output [3:0] Num_16OutputLine;
	 reg [3:0] Num_16OutputLine = 4'b0000; //Explicit Convert to Register!

always @ (posedge clock)
begin
	if(reset == 1'b1) //Explicitly Reset
		Num_16OutputLine = 4'b0000;
	else if(Num_16OutputLine == 4'b1111) //1111 is the Max Range i.e 15
		Num_16OutputLine = 4'b0000;
	else //If Range has not Yet Reached
		Num_16OutputLine = Num_16OutputLine + 1;
end
endmodule
