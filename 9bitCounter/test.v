`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:22:29 11/11/2018
// Design Name:   Counter
// Module Name:   E:/Xilinx/bin/nt/9bitCounter/test.v
// Project Name:  9bitCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_v;

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire [7:0] seg;
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.bcd(bcd), 
		.seg(seg)
	);

	initial begin
		for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            bcd = i; 
            #10; //wait for 10 ns
        end    
		// Add stimulus here

	end
      
endmodule

