`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:36:15 11/17/2021
// Design Name:   Decodificador
// Module Name:   C:/Users/Edgar Alan/Documents/Circuitos Logicos II/Parcial 3/Clase 38/decodificador/prueba.v
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

module prueba;

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
		Entrada = 3;
		#15;
      Entrada = 8;
		#15;
		Entrada = 7;
		#15;
		Entrada = 0;
		#15;
		Entrada = 11;
		#15;
		$finish;

	end
      
endmodule

