;Desarrollar el calculo siguiente:;
;VAR_A=15
;VAR_B=7
;VAR_R1= VAR_A+VAR_B
;VAR_R2= VAR_A-VAR_B
#INCLUDE "P16F84A.INC";LIBRERIA DEL MICROCONTROLADOR
VAR_A EQU 0XC   ;SE ESTABLECE QUE EL REGFISTRO 0XC ES VAR_A
VAR_B EQU 0XD   ;SE ESTABLECE QUE EL REGFISTRO 0XD ES VAR_B
VAR_R1 EQU 0XE  ;SE ESTABLECE QUE EL REGFISTRO 0XE ES VAR_R1
VAR_R2 EQU 0XF  ;SE ESTABLECE QUE EL REGFISTRO 0XF ES VAR_R2
MOVLW D'15'		;W=15
MOVWF VAR_A	;VAR_A=W=15
MOVLW D'7' 	;W=7
MOVWF VAR_B		;VAR_B=W Y W=7
;---------OPERACIONES------------
CLRW			;LIMPIAR W,W=0
MOVF VAR_A,W	;W=VAR-A=15
ADDWF VAR_B,W	;W=W(VAR_A)+VAR_B
MOVWF VAR_R1	;VAR_R1=W(VAR_A)+VAR_B

MOVF VAR_B,W	;EL MINUENDO ES VAR_B ENTONCES W=7
SUBWF VAR_A,W	;W=W(VAR_A)-VAR_B
MOVWF VAR_R2	;VAR_R2=W(VAR_A)-VAR_B

FIN
GOTO FIN
END