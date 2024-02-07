`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:19:21 11/17/2021
// Design Name:   PRIMOS_PARES
// Module Name:   C:/Users/Edgar Alan/Documents/Circuitos Logicos II/Parcial 3/Clase 38/PRIMOS_PARES/test.v
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

module test;

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
		D=0;
		C=0;
		B=0;
		A=0;
		#5;
		A=1;
		B=0;
		C=0;
		D=0;
		#5;
		A=0;
		B=1;
		C=0;
		D=0;
		#5;
		A=1;
		B=1;
		C=0;
		D=0;
		#5;	
		A=0;
		B=0;
		C=1;
		D=0;
		#5;
		A=1;
		B=0;
		C=1;
		D=0;
		#5;
		A=0;
		B=1;
		C=1;
		D=0;
		#5;
		A=1;
		B=1;
		C=1;
		D=0;
		#5;
		A=0;
		B=0;
		C=0;
		D=1;
		#5;
		A=1;
		B=0;
		C=0;
		D=1;
		#5;
		A=0;
		B=1;
		C=0;
		D=1;
		#5;	
		A=1;
		B=1;
		C=0;
		D=1;
		#5;
		A=0;
		B=0;
		C=1;
		D=1;
		#5;
		A=1;
		B=0;
		C=1;
		D=1;
		#5;
		A=0;
		B=1;
		C=1;
		D=1;
		#5;
		A=1;
		B=1;
		C=1;
		D=1;
		#5;

$finish;
        
		

	end
      
endmodule

