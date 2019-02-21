`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:13:31 02/20/2019
// Design Name:   SingleCycleMIPS
// Module Name:   G:/Xilinx/projects/SingleCycleMIPSFinal/Testbench.v
// Project Name:  SingleCycleMIPSFinal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SingleCycleMIPS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	SingleCycleMIPS uut (
		.clk(clk), 
		.reset(reset)
	);
	always
	#10 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		#40
		reset=0;
		

	end
      
endmodule

