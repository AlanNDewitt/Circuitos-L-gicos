processor 16F84A
    #include <P16F84A.INC>
    __config _CP_OFF & _PWRTE_ON & _WDT_OFF & _RC_OSC ; 0x3FF3

; RAM-Variable
LRAM_0x0C equ 0x0C
LRAM_0x0D equ 0x0D
LRAM_0x10 equ 0x10
LRAM_0x11 equ 0x11
LRAM_0x12 equ 0x12
LRAM_0x13 equ 0x13
LRAM_0x14 equ 0x14
LRAM_0x15 equ 0x15
LRAM_0x16 equ 0x16
LRAM_0x17 equ 0x17
LRAM_0x18 equ 0x18
LRAM_0x19 equ 0x19

; Program

    Org 0x0000

;   Reset-Vector
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF PCLATH         ; !!Bank Program-Page-Select
    GOTO LADR_0x0231
    NOP
;   Interrupt-Vector
LADR_0x0004
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    RETURN
LADR_0x0025
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,0          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTA,0        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x0037
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,1          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSC PORTA,1        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x0037
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,2          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSC PORTA,2        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x0037
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x0D
    GOTO LADR_0x005A
LADR_0x0037
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,0          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSC PORTA,0        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x0049
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,1          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTA,1        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x0049
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,2          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSC PORTA,2        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x0049
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x0D
    GOTO LADR_0x005A
LADR_0x0049
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,0          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSC PORTA,0        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x005A
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,1          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSC PORTA,1        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x005A
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,2          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTA,2        ; !!Bank!! PORTA - TRISA
    GOTO LADR_0x005A
    MOVLW 0x03           ;   b'00000011'  d'003'
    MOVWF LRAM_0x0D
LADR_0x005A
    GOTO LADR_0x0240
LADR_0x005B
    MOVF LRAM_0x18,W
    CLRF LRAM_0x0D
    SUBWF LRAM_0x17,W
    BTFSC STATUS,C
    GOTO LADR_0x0063
    MOVF LRAM_0x17,W
    MOVWF LRAM_0x0C
    GOTO LADR_0x006F
LADR_0x0063
    CLRF LRAM_0x0C
    MOVLW 0x08           ;   b'00001000'  d'008'
    MOVWF LRAM_0x19
LADR_0x0066
    RLF LRAM_0x17,F
    RLF LRAM_0x0C,F
    MOVF LRAM_0x18,W
    SUBWF LRAM_0x0C,W
    BTFSC STATUS,C
    MOVWF LRAM_0x0C
    RLF LRAM_0x0D,F
    DECFSZ LRAM_0x19,F
    GOTO LADR_0x0066
LADR_0x006F
    RETURN
LADR_0x0070
    MOVF LRAM_0x16,W
    MOVWF LRAM_0x17
    MOVLW 0x0A           ;   b'00001010'  d'010'
    MOVWF LRAM_0x18
    CALL LADR_0x005B
    MOVF LRAM_0x0D,W
    MOVWF LRAM_0x13
    MOVF LRAM_0x16,W
    MOVWF LRAM_0x17
    MOVLW 0x0A           ;   b'00001010'  d'010'
    MOVWF LRAM_0x18
    CALL LADR_0x005B
    MOVF LRAM_0x0C,W
    MOVWF LRAM_0x14
    MOVF LRAM_0x13,W
    MOVWF LRAM_0x17
    MOVF LRAM_0x17,W
    MOVWF LRAM_0x11
    MOVF LRAM_0x11,F
    BTFSS STATUS,Z
    GOTO LADR_0x0095
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x0095
    DECFSZ LRAM_0x11,W
    GOTO LADR_0x00A7
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x00A7
    MOVF LRAM_0x11,W
    SUBLW 0x02           ;   b'00000010'  d'002'
    BTFSS STATUS,Z
    GOTO LADR_0x00BB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x00BB
    MOVF LRAM_0x11,W
    SUBLW 0x03           ;   b'00000011'  d'003'
    BTFSS STATUS,Z
    GOTO LADR_0x00CF
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x00CF
    MOVF LRAM_0x11,W
    SUBLW 0x04           ;   b'00000100'  d'004'
    BTFSS STATUS,Z
    GOTO LADR_0x00E3
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x00E3
    MOVF LRAM_0x11,W
    SUBLW 0x05           ;   b'00000101'  d'005'
    BTFSS STATUS,Z
    GOTO LADR_0x00F7
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x00F7
    MOVF LRAM_0x11,W
    SUBLW 0x06           ;   b'00000110'  d'006'
    BTFSS STATUS,Z
    GOTO LADR_0x010B
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x010B
    MOVF LRAM_0x11,W
    SUBLW 0x07           ;   b'00000111'  d'007'
    BTFSS STATUS,Z
    GOTO LADR_0x011F
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x011F
    MOVF LRAM_0x11,W
    SUBLW 0x08           ;   b'00001000'  d'008'
    BTFSS STATUS,Z
    GOTO LADR_0x0133
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x0133
    MOVF LRAM_0x11,W
    SUBLW 0x09           ;   b'00001001'  d'009'
    BTFSS STATUS,Z
    GOTO LADR_0x0147
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,4          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,4          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,5          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,6          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,7          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,7          ; !!Bank!! PORTB - TRISB
LADR_0x0147
    MOVF LRAM_0x14,W
    MOVWF LRAM_0x17
    MOVF LRAM_0x17,W
    MOVWF LRAM_0x12
    MOVF LRAM_0x12,F
    BTFSS STATUS,Z
    GOTO LADR_0x015E
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x015E
    DECFSZ LRAM_0x12,W
    GOTO LADR_0x0170
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x0170
    MOVF LRAM_0x12,W
    SUBLW 0x02           ;   b'00000010'  d'002'
    BTFSS STATUS,Z
    GOTO LADR_0x0184
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x0184
    MOVF LRAM_0x12,W
    SUBLW 0x03           ;   b'00000011'  d'003'
    BTFSS STATUS,Z
    GOTO LADR_0x0198
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x0198
    MOVF LRAM_0x12,W
    SUBLW 0x04           ;   b'00000100'  d'004'
    BTFSS STATUS,Z
    GOTO LADR_0x01AC
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x01AC
    MOVF LRAM_0x12,W
    SUBLW 0x05           ;   b'00000101'  d'005'
    BTFSS STATUS,Z
    GOTO LADR_0x01C0
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x01C0
    MOVF LRAM_0x12,W
    SUBLW 0x06           ;   b'00000110'  d'006'
    BTFSS STATUS,Z
    GOTO LADR_0x01D4
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x01D4
    MOVF LRAM_0x12,W
    SUBLW 0x07           ;   b'00000111'  d'007'
    BTFSS STATUS,Z
    GOTO LADR_0x01E8
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x01E8
    MOVF LRAM_0x12,W
    SUBLW 0x08           ;   b'00001000'  d'008'
    BTFSS STATUS,Z
    GOTO LADR_0x01FC
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x01FC
    MOVF LRAM_0x12,W
    SUBLW 0x09           ;   b'00001001'  d'009'
    BTFSS STATUS,Z
    GOTO LADR_0x0210
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,0          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,0          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,1          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,2          ; !!Bank!! PORTB - TRISB
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTB,3          ; !!Bank!! PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,3          ; !!Bank!! PORTB - TRISB
LADR_0x0210
    RETURN
LADR_0x0211
    MOVF LRAM_0x10,W
    SUBLW 0x63           ;   b'01100011'  d'099'  "c"
    BTFSS STATUS,Z
    GOTO LADR_0x021A
    MOVLW 0x63           ;   b'01100011'  d'099'  "c"
    MOVWF LRAM_0x10
    MOVF LRAM_0x10,W
    MOVWF LRAM_0x16
    CALL LADR_0x0070
LADR_0x021A
    MOVF LRAM_0x10,W
    MOVWF LRAM_0x16
    CALL LADR_0x0070
    MOVLW 0x01           ;   b'00000001'  d'001'
    ADDWF LRAM_0x10,F
    GOTO LADR_0x0245
LADR_0x0220
    MOVF LRAM_0x10,F
    BTFSS STATUS,Z
    GOTO LADR_0x0227
    CLRF LRAM_0x10
    MOVF LRAM_0x10,W
    MOVWF LRAM_0x16
    CALL LADR_0x0070
LADR_0x0227
    MOVF LRAM_0x10,W
    SUBLW 0x63           ;   b'01100011'  d'099'  "c"
    BTFSS STATUS,C
    GOTO LADR_0x0230
    MOVF LRAM_0x10,W
    MOVWF LRAM_0x16
    CALL LADR_0x0070
    MOVLW 0x01           ;   b'00000001'  d'001'
    SUBWF LRAM_0x10,F
LADR_0x0230
    GOTO LADR_0x0249
LADR_0x0231
    MOVF STATUS,W
    ANDLW 0x1F           ;   b'00011111'  d'031'
    MOVWF STATUS
    CLRF LRAM_0x10
    CLRF LRAM_0x11
    CLRF LRAM_0x12
    CLRF LRAM_0x13
    CLRF LRAM_0x14
    CLRF LRAM_0x15
    CALL LADR_0x0004
LADR_0x023B
    MOVF LRAM_0x10,W
    SUBLW 0x63           ;   b'01100011'  d'099'  "c"
    BTFSS STATUS,C
    GOTO LADR_0x0251
    GOTO LADR_0x0025
LADR_0x0240
    MOVF LRAM_0x0D,W
    MOVWF LRAM_0x15
    DECFSZ LRAM_0x15,W
    GOTO LADR_0x0245
    GOTO LADR_0x0211
LADR_0x0245
    MOVF LRAM_0x15,W
    SUBLW 0x02           ;   b'00000010'  d'002'
    BTFSC STATUS,Z
    GOTO LADR_0x0220
LADR_0x0249
    MOVF LRAM_0x15,W
    SUBLW 0x03           ;   b'00000011'  d'003'
    BTFSC STATUS,Z
    CALL LADR_0x0004
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTA,4          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTA,4          ; !!Bank!! PORTA - TRISA
LADR_0x0251
    MOVF LRAM_0x10,W
    SUBLW 0x64           ;   b'01100100'  d'100'  "d"
    BTFSS STATUS,Z
    GOTO LADR_0x025B
    MOVLW 0x63           ;   b'01100011'  d'099'  "c"
    MOVWF LRAM_0x10
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTA,4          ; !!Bank!! PORTA - TRISA
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTA,4          ; !!Bank!! PORTA - TRISA
LADR_0x025B
    GOTO LADR_0x023B
    SLEEP

    End