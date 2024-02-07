`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:41:14 11/11/2021
// Design Name:   Comparadorr
// Module Name:   C:/Users/Edgar Alan/Documents/Circuitos Logicos II/Parcial 2/Clase 32/Comparador/comparador_test.v
// Project Name:  Comparador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparadorr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparador_test;

	// Inputs
	reg D;
	reg C;
	reg B;
	reg A;

	// Outputs
	wire Y;
	wire Z;

	// Instantiate the Unit Under Test (UUT)
	Comparadorr uut (
		.D(D), 
		.C(C), 
		.B(B), 
		.A(A), 
		.Y(Y), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		C = 0;
		B = 0;
		A = 0;

		// Wait 5 ns for global reset to finish
		#5;
        
		D = 0;
		C = 0;
		B = 0;
		A = 1;
		
		#5;
        
		D = 0;
		C = 0;
		B = 1;
		A = 0;
		
		#5;
        
		D = 0;
		C = 0;
		B = 1;
		A = 1;
		
		#5;
        
		D = 0;
		C = 1;
		B = 0;
		A = 0;
		
		#5;
        
		D = 0;
		C = 1;
		B = 0;
		A = 1;
		
		#5;
        
		D = 0;
		C = 1;
		B = 1;
		A = 0;
		
		#5;
        
		D = 0;
		C = 1;
		B = 1;
		A = 1;
		
		#5;
        
		D = 1;
		C = 0;
		B = 0;
		A = 0;
		
		#5;
        
		D = 1;
		C = 0;
		B = 0;
		A = 1;
		
		#5;
        
		D = 1;
		C = 0;
		B = 1;
		A = 0;
		
		#5;
        
		D = 1;
		C = 0;
		B = 1;
		A = 1;
		
		#5;
        
		D = 1;
		C = 1;
		B = 0;
		A = 0;
		
		#5;
        
		D = 1;
		C = 1;
		B = 0;
		A = 1;
		
		#5;
        
		D = 1;
		C = 1;
		B = 1;
		A = 0;
		
		#5;
        
		D = 1;
		C = 1;
		B = 1;
		A = 1;
		
		$finish;

	end
      
endmodule

