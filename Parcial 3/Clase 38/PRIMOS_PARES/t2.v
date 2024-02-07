`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:02:07 11/16/2021
// Design Name:   PRIMOS_PARES
// Module Name:   C:/Users/carlo/Documents/Proyectos Xilinix/PRIMOS_PARES/t2.v
// Project Name:  PRIMOS_PARES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PRIMOS_PARES
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t2;

	// Inputs
	reg D;
	reg C;
	reg B;
	reg A;

	// Outputs
	wire PRIMOS;
	wire PARES;

	// Instantiate the Unit Under Test (UUT)
	PRIMOS_PARES uut (
		.D(D), 
		.C(C), 
		.B(B), 
		.A(A), 
		.PRIMOS(PRIMOS), 
		.PARES(PARES)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		C = 0;
		B = 1;
		A = 0;
#5;
		D = 0;
		C = 1;
		B = 0;
		A = 1;
	#5;
	$finish;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

