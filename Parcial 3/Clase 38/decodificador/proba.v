`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:41:03 11/17/2021
// Design Name:   Decodificador
// Module Name:   C:/Users/Edgar Alan/Documents/Circuitos Logicos II/Parcial 3/Clase 38/decodificador/proba.v
// Project Name:  decodificador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decodificador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module proba;

	// Inputs
	reg [3:0] Entrada;

	// Outputs
	wire habilita0;
	wire habilita1;
	wire habilita2;
	wire habilita3;
	wire [7:0] Salida;

	// Instantiate the Unit Under Test (UUT)
	Decodificador uut (
		.habilita0(habilita0), 
		.habilita1(habilita1), 
		.habilita2(habilita2), 
		.habilita3(habilita3), 
		.Entrada(Entrada), 
		.Salida(Salida)
	);

	initial begin
		
		Entrada = 0;
		#15;
		Entrada = 1;
		#15;
		Entrada = 2;
		#15;
        
		$finish;

	end
      
endmodule

