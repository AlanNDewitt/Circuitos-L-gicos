`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:50:29 12/16/2021
// Design Name:   preg1_suarez_vega
// Module Name:   C:/Users/Edgar Alan/Documents/Circuitos Logicos II/Parcial 3/Suarez Vega Examen/3 parc/pregunta1_Suarez Vega/Preg1_Suarez_Vega/test.v
// Project Name:  Preg1_Suarez_Vega
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: preg1_suarez_vega
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
	reg [3:0] V;

	// Outputs
	wire [2:0] Z;

	// Instantiate the Unit Under Test (UUT)
	preg1_suarez_vega uut (
		.V(V), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
	   V = 0000;
		#5;
      V = 0001;
		#5;
		V = 0010;
		#5;
		V = 0011;
		#5;
		V = 0100;
		#5;
		V = 0101;
		#5;
		V = 0110;
		#5;
		V = 0111;
		#5;
		V = 1000;
		#5;
		V = 1001;
		#5;
		V = 1010;
		#5;
		V = 1011;
		#5;
		V = 1100;
		#5;
		V = 1101;
		#5;
		V = 1110;
		#5;
		V = 1111;
		#5;
     
		
	$finish;

	end
      
	endmodule

