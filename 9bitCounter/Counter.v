`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 	https://sys32.kinja.com
// Engineer: 	Syed Faizan
// 
// Create Date:    13:56:12 11/11/2018 
// Design Name: 	 
// Module Name:    Counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Counter(bcd, seg);
    input [3:0] bcd;
    output [7:0] seg;
	 reg [7:0] seg;
	 
	 always @ (bcd)
	 begin
	   case (bcd) //case statement
				//abcdefg
            0:seg=7'b1111110;
				1:seg=7'b0110000;
				2:seg=7'b1101101;
				3:seg=7'b1111001;
				4:seg=7'b0110011;
				5:seg =7'b1011011;
				6:seg=7'b1011111;
				7:seg=7'b1110000;
				8:seg=7'b1111111;
				9:seg=7'b0000100;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg = 7'b1111111; 
        endcase
	   end
endmodule
