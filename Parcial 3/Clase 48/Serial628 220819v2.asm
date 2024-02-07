;******************************************************************* 
; INTERFAZ SERIE RS232 - ECO Y DISPLAY EN LEDS
; CONVERTIDOR SERIE RS232 - PARALELO 8 BITS
;******************************************************************* 

        LIST P=16F628, R=DEC    ; Usar el PIC16F628 y sistema decimal

        #include "P16F628A.INC"  ; Incluye datos de PIC16F628A

	__CONFIG   _CP_OFF & _WDT_OFF & _LVP_OFF & _PWRTE_ON & _INTRC_OSC_NOCLKOUT & _MCLRE_OFF

;******************************************************************* 
; CONFIGURACION
;******************************************************************* 

; El PIC es configurado para usar todas las entradas y salidas 
; posibles = 16. Por eso no se usa el oscilador con cristal externo, 
; lo que deja libres las patas 15 y 16 para usar como bits de puerto. 
; Se define el clock interno a 4 MHz. No se usa el master reset 
; (pata 4), que queda convertida en el puerto A, bit 5 (entrada).

;******************************************************************* 
; VARIABLES
;******************************************************************* 

contador	EQU	0x28		; variable
dato_serie		EQU	0x29	; dato serie desde la PC

;******************************************************************* 

        ORG    0x000            ; El programa empieza en 0x000 

;******************************************************************* 
; Inhibe comparadores
;******************************************************************* 

	movlw 7
	movwf CMCON		; CMCON=7 inhibir los comparadores
 
;******************************************************************* 
; Inicializar Ports
;******************************************************************* 
 
	movlw b'00000000'       ; valor inicial portA
        movwf PORTA		
        movlw b'00000000'       ; valor inicial portB
        movwf PORTB		

        bsf STATUS,RP0          ; Pág 1 RAM

        movlw b'00000000'
        movwf TRISA		; salidas (para mostrar el dato en LEDS)
				; de estas salidas, no usaremos
				; PORTA 4, que tiene salida open drain, y 
				; PORTA 5, que sólo puede ser entrada

        movlw b'11001011'	; RB0 entrada
				; RB1 (RX) = entrada
				; RB2 (TX) = salida
				; RB3 = entrada 
				; RB2 = salida del bit 4 del dato a LEDS
				; RB5 = salida del bit 5 del dato a LEDS
				; RB6 y RB7 = entradas
        movwf TRISB

;******************************************************************* 
; BAUD RATE para la comunicación RS232
; y otras definiciones para USART
;******************************************************************* 
; Baud Rate = 9600, Sin Paridad, 1 Bit parada

;
        movlw 0x19              ; 0x19=9600 bps (0x0C=19200 bps)
        movwf SPBRG
        movlw b'00100100'       ; 0X24
        movwf TXSTA             ; habilita la transmisión Async

        bcf STATUS,RP0          ; RAM PAGE 0

        movlw b'10010000'       ; habilita de recepción Async
        movwf RCSTA

;******************************************************************* 
; TIEMPO DE ESTABILIZACION
;******************************************************************* 

        clrf contador
estab	decfsz contador,F	;255 CICLOS DE ESPERA
        goto estab

        movf RCREG,W            ; vacía el buffer de recepción

;******************************************************************* 
; LAZO PRINCIPAL
;******************************************************************* 

loop    BTFSC PORTB,0		;detecta para enviar el bit 0 de portb
	GOTO MANDARX
	clrw
	btfss PIR1,RCIF         ; (5) se fija si hay dato RS232
	goto loop		; no, no llegó
	call recibeRS232	; sí, hay
	movwf dato_serie	; guarda dato (para uso de cualquier rutina)
	sublw h'30'		;resta si recibe 0 reinicia el contador
	btfsc STATUS,2		;bandera de z=1 borra contador
	clrf contador
	;call enviaRS232		; envía el eco a la PC
	call muestra		; muestra el caracter recibido en LEDS
	goto loop

;***********************************************************************************
; RECIBE CARACTER SERIE - RS232 - DESDE LA PC
;***********************************************************************************

recibeRS232	
        movf RCREG,W            ; guarda dato recibido en acumulador 
        return

;
;***********************************************************************************
; MUESTRA DATO
;***********************************************************************************

muestra
	movf dato_serie,w	; recupera el dato guardado	
	movwf PORTA		; exhibe el dato en LEDS en PORTA
	btfss dato_serie,4	; pero, como el PORTA tiene el bit 4 que es
	bcf PORTB,4		; open drain, nos conviene poner
	btfsc dato_serie,4	; el bit 4 del dato en otra salida;
	bsf PORTB,4		; lo hacemos en el bit 4 del PORTB.
	btfss dato_serie,5	; y , como el PORTA tiene el bit 5 que es
	bcf PORTB,5		; sólo usable como entrada, tenemos que poner
	btfsc dato_serie,5	; el bit 5 del dato en alguna salida;
	bsf PORTB,5		; lo hacemos en el bit 5 del PORTB.
	return

;***********************************************************************************
; MENSAJES
;***********************************************************************************


MANDARX NOP
	BTFSC PORTB,0
	GOTO MANDARX
	INCF contador,1		;INCREMANTA CONTADOR
	MOVF contador,0		;GUARDA EL VALOR DE CONTADOR A W
	call enviaRS232
	GOTO loop
;***********************************************************************************
; ENVIA CARACTER SERIE - RS232 - A LA PC Y ESPERA A QUE HAYA SALIDO
;***********************************************************************************

enviaRS232	
	movwf TXREG             ; envío el dato en acunulador w
	bsf STATUS,RP0		; Pág 1 RAM
Espere 	btfss TXSTA,TRMT        ; transmision completa si es alto
       	goto Espere
       	bcf STATUS,RP0          ; Pág 0 RAM
	call muestra		;MUESTRA EL VALOR ENVIADO
       	return


        END