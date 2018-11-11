`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:59:17 11/11/2018
// Design Name:   upCounter
// Module Name:   E:/Xilinx/bin/nt/upcounter/testforUpCounter.v
// Project Name:  upcounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: upCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testforUpCounter_v;

	// Inputs
	reg reset;
	reg clock;

	// Outputs
	wire [3:0] Num_16OutputLine;
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	upCounter uut (
		.reset(reset), 
		.clock(clock), 
		.Num_16OutputLine(Num_16OutputLine)
	);

	initial begin
	
	for (i=0; i<16; i=i+1)
	  begin
			// Initialize Inputs
			reset = 1'b0;
			if(clock == 1)
				clock = 0;
			else
				clock = 1;
			// Wait 100 ns for global reset to finish
			#300;
		end
	end
endmodule

