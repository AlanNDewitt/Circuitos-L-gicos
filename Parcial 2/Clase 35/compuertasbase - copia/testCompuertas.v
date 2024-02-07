// Verilog test fixture created from schematic C:\Users\Edgar Alan\Documents\Circuitos Logicos II\Parcial 2\Clase 35\compuertasbase - copia\compuertas.sch - Wed Nov 10 10:41:20 2021

`timescale 1ns / 1ps

module compuertas_compuertas_sch_tb();

// Inputs
   reg B;
   reg A;
   reg C;

// Output
   wire Z;
   wire X;

// Bidirs

// Instantiate the UUT
   compuertas UUT (
		.B(B), 
		.A(A), 
		.Z(Z), 
		.C(C), 
		.X(X)
   );
	
initial begin

A=0;
B=0;
C=0;

#5;

A=1;
B=0;
C=0;

#5;		//tiempo de espera para la sig combinacion

A=0;
B=1;
C=0;

#5;		//tiempo de espera para la sig combinacion

A=1;
B=1;
C=0;

#5;		//tiempo de espera para la sig combinacion

A=0;
B=0;
C=1;

#5;		//tiempo de espera para la sig combinacion

A=1;
B=0;
C=1;

#5;		//tiempo de espera para la sig combinacion

$finish;   //indica fin de las combinaciones

end
	

endmodule
