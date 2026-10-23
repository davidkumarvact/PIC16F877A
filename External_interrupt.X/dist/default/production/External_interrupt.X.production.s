subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Users/PC User/.mchp_packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_External_interrupt
	FNCALL	_main,_init_config
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_PORTB
_PORTB	set	0x6
	global	_INTF
_INTF	set	0x59
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_RB1
_RB1	set	0x31
	global	_INTEDG
_INTEDG	set	0x40E
	global	_TRISB1
_TRISB1	set	0x431
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = always
	config default_idlocs  = always
	config WDTE = "OFF"
	file	"dist/default/production\External_interrupt.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_config:	; 1 bytes @ 0x0
?_External_interrupt:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
	ds	2
??_init_config:	; 1 bytes @ 0x2
??_External_interrupt:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      2       2
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;!                 _External_interrupt
;!                        _init_config
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _External_interrupt                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _isr                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _External_interrupt
;!   _init_config
;!
;! _isr (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14      2       2     14.3%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       2      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_External_interrupt
;;		_init_config
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	25
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	25
	
_main:	
;incstack = 0
	callstack 6
; Regs used in _main: [status,2+status,0+pclath+cstack]
	line	26
	
l588:	
	fcall	_init_config
	line	27
	fcall	_External_interrupt
	line	28
	
l23:	
	line	31
	
l24:	
	goto	l23
	global	start
	ljmp	start
	callstack 0
	line	32
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 12 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext1
__ptext1:	;psect for function _init_config
psect	text1
	file	"main.c"
	line	12
	
_init_config:	
;incstack = 0
	callstack 6
; Regs used in _init_config: [status,2]
	line	15
	
l580:	
;main.c: 15:     while(1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	16
	
l582:	
;main.c: 16:     {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7	;volatile
	line	17
	
l584:	
;main.c: 17:         ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	18
	
l15:	
	return
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_External_interrupt

;; *************** function _External_interrupt *****************
;; Defined at:
;;		line 19 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	19
global __ptext2
__ptext2:	;psect for function _External_interrupt
psect	text2
	file	"main.c"
	line	19
	
_External_interrupt:	
;incstack = 0
	callstack 6
; Regs used in _External_interrupt: []
	line	21
	
l586:	
	bsf	(92/8),(92)&7	;volatile
	line	22
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	23
	bsf	(95/8),(95)&7	;volatile
	line	24
	
l18:	
	return
	callstack 0
GLOBAL	__end_of_External_interrupt
	__end_of_External_interrupt:
	signat	_External_interrupt,89
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 3 in file "isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"isr.c"
	line	3
global __ptext3
__ptext3:	;psect for function _isr
psect	text3
	file	"isr.c"
	line	3
	
_isr:	
;incstack = 0
	callstack 6
; Regs used in _isr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	pclath,w
	movwf	(??_isr+1)
	ljmp	_isr
psect	text3
	line	5
	
i1l590:	
;isr.c: 5:     if(INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l36
u1_20:
	line	7
	
i1l592:	
;isr.c: 6:     {;isr.c: 7:         RB1=!RB1;
	movlw	1<<((49)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((49)/8),f
	line	8
	
i1l594:	
;isr.c: 8:         INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	10
	
i1l36:	
	movf	(??_isr+1),w
	movwf	pclath
	swapf	(??_isr+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,0x7E,2	;btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	global wtemp0
	wtemp0 set btemp+0
	global wtemp0a
	wtemp0a set btemp+1
	global ttemp0a
	ttemp0a set btemp+1
	global ltemp0a
	ltemp0a set btemp+2
	end
