#INCLUDE "P16F84A.INC";
TEM EQU 0XC;
MOVLW 			D'255'; mover valor literal a W(LW), W=255
ADDLW 			D'1' ; sumar 1 el valor literal 1 a W 
CLRW ; 			limpiar el registro w , W = 0
BCF STATUS,C ; 	bit clear File(nombre), numero de bit o nombre, este caso acarreo
MOVLW D'1'; 	w = 1
SUBLW D'1';		W = 1 - W  el valor literal es el minuendo, w es sustraendo
BCF STATUS,C; 	Limpiar acarreo, resta dara 1 en el acarreo
MOVLW D'2'; 	D = 2
SUBLW D'3';		W = 3 - W , C=1 , xk resta positiva
BCF STATUS,C;   limpiamos acarreo
MOVLW D'2';		W = 2
SUBLW D'1';		W = 1 - W , C=0 , resta negativa
FIN;			Etiqueta que define la posicion de llegada de un salto
GOTO FIN;		va la etiqueta fin

END
 