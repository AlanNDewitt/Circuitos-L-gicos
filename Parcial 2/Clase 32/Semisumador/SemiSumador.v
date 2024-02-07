// Verilog test fixture created from schematic C:\Users\Edgar Alan\Documents\Circuitos Logicos II\Parcial 2\Clase 32\Semisumador\SemiSumador.sch - Wed Nov 10 11:17:57 2021

`timescale 1ns / 1ps

module SemiSumador_SemiSumador_sch_tb();

// Inputs
   reg B;
   reg A;

// Output
   wire S;
   wire C;

// Bidirs

// Instantiate the UUT
   SemiSumador UUT (
		.B(B), 
		.A(A), 
		.S(S), 
		.C(C)
   );

initial begin 

B = 0;
A = 0;

#5;

B = 0;
A = 1;

#5;

B = 1;
A = 0;

#5;

B = 1;
A = 1;

$finish;

end



endmodule
