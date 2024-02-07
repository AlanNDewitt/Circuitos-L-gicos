#include "P16F84a.INC" 
;DIVISIÓN 6/3 Y 7/3
DIVIDENDO EQU 0XC
DIVISOR EQU 0XD
COCIENTE EQU 0XE
RESIDUO EQU 0XF
MULTIPLICANDO EQU 0X10
MULTIPLICADOR EQU 0X11
PRODUCTO EQU 0X12
MINUENDO EQU 0X13
SUSTRAENDO EQU 0X14
RESTA EQU 0X15
OP1 EQU 0X16; SUSTRAENDO, MULTIPLICADOR, DIVISOR
OP2 EQU 0X17; MINUENDO, MULTIPLICANDO , DIVIDENDO
;CONFIGURAR LAS ENTRADAS Y SALIDAS
BSF STATUS,RP0;COLOCAR A UNO EL BIT RP0 DEL STATUS (BANCO1)
CLRF TRISB;LIMPIAR EL REGISTRO TRISB (PUERTOB ES SALIDA)
;PUERTO A SE ENCUNETRA EN 1 (TODOS ENTRADA)
BSF TRISA,4;BIT 4 PORTA DEBE SER SALIDA
BCF STATUS,RP0;REGRESARA BANCO 0, POR LO QUE L BITRP0 DE SATUS DEBE SER 0
BSF PORTA,4;BIT 4 DE PORTA DEBE ESTAR EN 1 PARA INHABILITAR EL 74X245
CLRF PORTB;INICIA LA CUENTA EN 0
;BIT0 DE PORTA EN 1=CONTEO ASCENDENTE
;BIT1 DE PORTA EN 1=CONTEO DESCENDENTE
;BIT2 DE PORTA EN 1=BORRAR EL CONTEO

CICLOP
BTFSC PORTA,0;SALTA SI EL BIT0 DE PORTA=0
GOTO INCREMENTA
BTFSC PORTA,1;SALTA SI EL BIT1 DE PORTA ES 0
GOTO DECREMENTA
BTFSC PORTA,3;SALTA SI EL BIT 3 DEPORTA ES 0
GOTO BORRAR
GOTO CICLOP

INCREMENTA
BTFSC PORTA,0 ;MIENTRAS EL BIT ESTE EN 1 NO SALE DEL CICLO Y LA ETIQUETA
GOTO INCREMENTA
;DETECTAR QUE EL N�MERO NO PUEDA SER MAYOR A 99 (TAREA)
INCF PORTB,F ;INCREMENTAR EL PUERTOB EN 1
GOTO CICLOP

DECREMENTA
BTFSC PORTA,1 ;MIENTRAS EL BIT ESTE EN 1 NO SALE DEL CICLO Y LA ETIQUETA
GOTO DECREMENTA
DECF PORTB,F ;DECREMENTAR EL PUERTOB EN 1
GOTO CICLOP

BORRAR
BTFSC PORTA,3
GOTO BORRAR
CLRF PORTB
GOTO CICLOP

;-------------------------- SUBRUTINAS ---------------------
RESTAR
MOVF OP2,W
MOVWF MINUENDO
MOVF OP1,W
MOVWF SUSTRAENDO
MOVF SUSTRAENDO,W
SUBWF MINUENDO,W
MOVWF RESTA
RETURN

DIVIDIR ;ETIQUETA DE OPERACIÓN DE DIVISIÓN
MOVF OP2,W; MOVER DE OP2 A W
MOVWF DIVIDENDO ;GUARA EL VALOR INMEDIATO 
MOVF OP1,W; MOVER OP1 A W
MOVWF DIVISOR; GUARDA EL VALOR INMEDIATO
CLRF COCIENTE ;COCIENTE SE INICIA A 0
CICLO ;ETIQUETA DE INICIO DEL CICLO
INCF COCIENTE,F ;INCREMENTA EN 1 Y ALMACENA EL VALOR EN EL REGISTRO UTILIZADO
MOVF DIVISOR,W ;INDICA MOVER EL VALOR DEL REGISTRO DIVISOR A W
SUBWF DIVIDENDO,F ; DIDVIDENOD=DIVIDENDO-W(DIVISOR)
BTFSC STATUS,C ;BIT TEST FILE STATUS BIT ACARREO=0 SIGNO NEGATIVO
GOTO CICLO ;REGRESA AL CICLO
DECF COCIENTE,F ;DECREMENTE EN 1 EL REGISTRO COCIENTE
RETURN

MULTIPLICAR
MOVF OP2,W
MOVWF MULTIPLICANDO
MOVF OP1,W
MOVWF MULTIPLICADOR
CLRF PRODUCTO ;LIMPIAR EL REGISTRO PRODUCTO
CLRW ;BORRA EL CONTENIDO DE W
REGRESA ;ETIQUETA DEL CICLO
ADDWF MULTIPLICANDO,W ;W=W+MULTIPLICANDO
DECFSZ MULTIPLICADOR,F ;DECREMENTE EL VALOR DEL REGISTRO MULTIPLICADOR EN 1 Y SI ES 0 BRINCA LA INSTRUCCIÓN SIGUIENTE
GOTO REGRESA
MOVWF PRODUCTO ;MOVER EL RESULTADO DE W A PRODUCTO
RETURN

FIN
NOP
GOTO FIN

END ;COLOCAR EN MPLAB
