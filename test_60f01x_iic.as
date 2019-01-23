opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F684
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
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_POWER_INITIAL
	FNCALL	_main,_DelayS
	FNCALL	_main,_I2C_SendString
	FNCALL	_main,_DelayMs
	FNCALL	_main,_DelayM
	FNCALL	_I2C_SendString,_IIC_Start
	FNCALL	_I2C_SendString,_IIC_Send_Byte
	FNCALL	_I2C_SendString,_IIC_Wait_Ack
	FNCALL	_I2C_SendString,_IIC_Stop
	FNCALL	_DelayM,_DelayS
	FNCALL	_IIC_Wait_Ack,_DelayUs
	FNCALL	_IIC_Wait_Ack,_IIC_Stop
	FNCALL	_DelayS,_DelayMs
	FNCALL	_IIC_Send_Byte,_DelayUs
	FNCALL	_IIC_Stop,_DelayUs
	FNCALL	_IIC_Start,_DelayUs
	FNCALL	_DelayMs,_DelayUs
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_par2
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
	file	"i2c.c"
	line	500
_par2:
	retlw	0B5h
	retlw	062h
	retlw	06h
	retlw	03Eh
	retlw	03Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	07h
	retlw	0
	retlw	08h
	retlw	010h
	retlw	0
	retlw	01h
	retlw	0
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	01h
	retlw	03h
	retlw	08h
	retlw	010h
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	01h
	retlw	04h
	retlw	0
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	01h
	retlw	05h
	retlw	0
	retlw	03h
	retlw	0
	retlw	01h
	retlw	0
	retlw	01h
	retlw	01h
	retlw	06h
	retlw	08h
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	01h
	retlw	02Dh
	retlw	059h
	global	_par4
psect	stringtext
	file	"i2c.c"
	line	516
_par4:
	retlw	0B5h
	retlw	062h
	retlw	06h
	retlw	023h
	retlw	028h
	retlw	0
	retlw	02h
	retlw	0
	retlw	04Ch
	retlw	066h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	020h
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04Bh
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	0
	retlw	0
	retlw	02Ch
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0EEh
	retlw	044h
	global	_par3
psect	stringtext
	file	"i2c.c"
	line	510
_par3:
	retlw	0B5h
	retlw	062h
	retlw	06h
	retlw	024h
	retlw	024h
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	027h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	05Eh
	retlw	01h
	retlw	05Eh
	retlw	01h
	retlw	090h
	retlw	01h
	retlw	05Eh
	retlw	01h
	retlw	064h
	retlw	03Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0DEh
	retlw	045h
	global	_par5
psect	stringtext
	file	"i2c.c"
	line	522
_par5:
	retlw	0B5h
	retlw	062h
	retlw	06h
	retlw	031h
	retlw	020h
	retlw	0
	retlw	0
	retlw	01h
	retlw	0
	retlw	0
	retlw	032h
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0
	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F7h
	retlw	0
	retlw	0
	retlw	0
	retlw	0CAh
	retlw	0B6h
	global	_par1
psect	stringtext
	file	"i2c.c"
	line	496
_par1:
	retlw	0B5h
	retlw	062h
	retlw	06h
	retlw	041h
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	01Fh
	retlw	078h
	retlw	0B7h
	retlw	058h
	retlw	0B7h
	retlw	0FFh
	retlw	076h
	retlw	0CFh
	retlw	0FFh
	retlw	0F6h
	retlw	06Bh
	global	_par6
psect	stringtext
	file	"i2c.c"
	line	529
_par6:
	retlw	0B5h
	retlw	062h
	retlw	06h
	retlw	01h
	retlw	08h
	retlw	0
	retlw	09h
	retlw	014h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	02Dh
	retlw	07Dh
	global	_par7
psect	stringtext
	file	"i2c.c"
	line	533
_par7:
	retlw	0B5h
	retlw	062h
	retlw	09h
	retlw	014h
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	021h
	retlw	0ECh
	global	_par2
	global	_par4
	global	_par3
	global	_par5
	global	_par1
	global	_par6
	global	_par7
	global	_FSR
_FSR	set	4
	DABS	1,4,1	;_FSR

	global	_INDF
_INDF	set	0
	DABS	1,0,1	;_INDF

	global	_PCL
_PCL	set	2
	DABS	1,2,1	;_PCL

	global	_PCLATH
_PCLATH	set	10
	DABS	1,10,1	;_PCLATH

	global	_PORTA
_PORTA	set	5
	DABS	1,5,1	;_PORTA

	global	_SFR06
_SFR06	set	6
	DABS	1,6,1	;_SFR06

	global	_SFR07
_SFR07	set	7
	DABS	1,7,1	;_SFR07

	global	_SFR08
_SFR08	set	8
	DABS	1,8,1	;_SFR08

	global	_SFR09
_SFR09	set	9
	DABS	1,9,1	;_SFR09

	global	_STATUS
_STATUS	set	3
	DABS	1,3,1	;_STATUS

	global	_TMR0
_TMR0	set	1
	DABS	1,1,1	;_TMR0

	global	_CCPR1
_CCPR1	set	19
	DABS	1,19,2	;_CCPR1

	global	_TMR1
_TMR1	set	14
	DABS	1,14,2	;_TMR1

	global	_ADCON0
_ADCON0	set	31
	DABS	1,31,1	;_ADCON0

	global	_ADRESH
_ADRESH	set	30
	DABS	1,30,1	;_ADRESH

	global	_CCP1CON
_CCP1CON	set	21
	DABS	1,21,1	;_CCP1CON

	global	_CCPR1H
_CCPR1H	set	20
	DABS	1,20,1	;_CCPR1H

	global	_CCPR1L
_CCPR1L	set	19
	DABS	1,19,1	;_CCPR1L

	global	_CMCON0
_CMCON0	set	25
	DABS	1,25,1	;_CMCON0

	global	_CMCON1
_CMCON1	set	26
	DABS	1,26,1	;_CMCON1

	global	_ECCPAS
_ECCPAS	set	23
	DABS	1,23,1	;_ECCPAS

	global	_INTCONbits
_INTCONbits	set	11
	DABS	1,11,1	;_INTCONbits

	global	_MSCKCONbits
_MSCKCONbits	set	27
	DABS	1,27,1	;_MSCKCONbits

	global	_PCLATHbits
_PCLATHbits	set	10
	DABS	1,10,1	;_PCLATHbits

	global	_PIR1bits
_PIR1bits	set	12
	DABS	1,12,1	;_PIR1bits

	global	_PORTAbits
_PORTAbits	set	5
	DABS	1,5,1	;_PORTAbits

	global	_PORTC
_PORTC	set	7
	DABS	1,7,1	;_PORTC

	global	_PWM1CON
_PWM1CON	set	22
	DABS	1,22,1	;_PWM1CON

	global	_SFR00
_SFR00	set	0
	DABS	1,0,1	;_SFR00

	global	_SFR01
_SFR01	set	1
	DABS	1,1,1	;_SFR01

	global	_SFR02
_SFR02	set	2
	DABS	1,2,1	;_SFR02

	global	_SFR03
_SFR03	set	3
	DABS	1,3,1	;_SFR03

	global	_SFR04
_SFR04	set	4
	DABS	1,4,1	;_SFR04

	global	_SFR05
_SFR05	set	5
	DABS	1,5,1	;_SFR05

	global	_SFR0A
_SFR0A	set	10
	DABS	1,10,1	;_SFR0A

	global	_SFR0B
_SFR0B	set	11
	DABS	1,11,1	;_SFR0B

	global	_SFR0C
_SFR0C	set	12
	DABS	1,12,1	;_SFR0C

	global	_SFR11
_SFR11	set	17
	DABS	1,17,1	;_SFR11

	global	_SFR12
_SFR12	set	18
	DABS	1,18,1	;_SFR12

	global	_SFR18
_SFR18	set	24
	DABS	1,24,1	;_SFR18

	global	_SFR1B
_SFR1B	set	27
	DABS	1,27,1	;_SFR1B

	global	_SFR1C
_SFR1C	set	28
	DABS	1,28,1	;_SFR1C

	global	_SFR1D
_SFR1D	set	29
	DABS	1,29,1	;_SFR1D

	global	_SOSCPRHbits
_SOSCPRHbits	set	29
	DABS	1,29,1	;_SOSCPRHbits

	global	_STATUSbits
_STATUSbits	set	3
	DABS	1,3,1	;_STATUSbits

	global	_T1CON
_T1CON	set	16
	DABS	1,16,1	;_T1CON

	global	_T2CONbits
_T2CONbits	set	18
	DABS	1,18,1	;_T2CONbits

	global	_TMR1H
_TMR1H	set	15
	DABS	1,15,1	;_TMR1H

	global	_TMR1L
_TMR1L	set	14
	DABS	1,14,1	;_TMR1L

	global	_WDTCONbits
_WDTCONbits	set	24
	DABS	1,24,1	;_WDTCONbits

	global	_ADFM
_ADFM	set	255
	DABS	1,31,1	;_ADFM

	global	_ADIF
_ADIF	set	102
	DABS	1,12,1	;_ADIF

	global	_ADON
_ADON	set	248
	DABS	1,31,1	;_ADON

	global	_C
_C	set	24
	DABS	1,3,1	;_C

	global	_C1IF
_C1IF	set	99
	DABS	1,12,1	;_C1IF

	global	_C1INV
_C1INV	set	204
	DABS	1,25,1	;_C1INV

	global	_C1OUT
_C1OUT	set	206
	DABS	1,25,1	;_C1OUT

	global	_C2IF
_C2IF	set	100
	DABS	1,12,1	;_C2IF

	global	_C2INV
_C2INV	set	205
	DABS	1,25,1	;_C2INV

	global	_C2OUT
_C2OUT	set	207
	DABS	1,25,1	;_C2OUT

	global	_C2SYNC
_C2SYNC	set	208
	DABS	1,26,1	;_C2SYNC

	global	_CARRY
_CARRY	set	24
	DABS	1,3,1	;_CARRY

	global	_CCP1IF
_CCP1IF	set	101
	DABS	1,12,1	;_CCP1IF

	global	_CCP1M0
_CCP1M0	set	168
	DABS	1,21,1	;_CCP1M0

	global	_CCP1M1
_CCP1M1	set	169
	DABS	1,21,1	;_CCP1M1

	global	_CCP1M2
_CCP1M2	set	170
	DABS	1,21,1	;_CCP1M2

	global	_CCP1M3
_CCP1M3	set	171
	DABS	1,21,1	;_CCP1M3

	global	_CHS0
_CHS0	set	250
	DABS	1,31,1	;_CHS0

	global	_CHS1
_CHS1	set	251
	DABS	1,31,1	;_CHS1

	global	_CHS2
_CHS2	set	252
	DABS	1,31,1	;_CHS2

	global	_CIS
_CIS	set	203
	DABS	1,25,1	;_CIS

	global	_CKCNTI
_CKCNTI	set	217
	DABS	1,27,1	;_CKCNTI

	global	_CKMAVG
_CKMAVG	set	218
	DABS	1,27,1	;_CKMAVG

	global	_CKMEAIF
_CKMEAIF	set	102
	DABS	1,12,1	;_CKMEAIF

	global	_CM0
_CM0	set	200
	DABS	1,25,1	;_CM0

	global	_CM1
_CM1	set	201
	DABS	1,25,1	;_CM1

	global	_CM2
_CM2	set	202
	DABS	1,25,1	;_CM2

	global	_DC
_DC	set	25
	DABS	1,3,1	;_DC

	global	_DC1B0
_DC1B0	set	172
	DABS	1,21,1	;_DC1B0

	global	_DC1B1
_DC1B1	set	173
	DABS	1,21,1	;_DC1B1

	global	_ECCPAS0
_ECCPAS0	set	188
	DABS	1,23,1	;_ECCPAS0

	global	_ECCPAS1
_ECCPAS1	set	189
	DABS	1,23,1	;_ECCPAS1

	global	_ECCPAS2
_ECCPAS2	set	190
	DABS	1,23,1	;_ECCPAS2

	global	_ECCPASE
_ECCPASE	set	191
	DABS	1,23,1	;_ECCPASE

	global	_ECCPIF
_ECCPIF	set	101
	DABS	1,12,1	;_ECCPIF

	global	_EEIF
_EEIF	set	103
	DABS	1,12,1	;_EEIF

	global	_GIE
_GIE	set	95
	DABS	1,11,1	;_GIE

	global	_GO
_GO	set	249
	DABS	1,31,1	;_GO

	global	_GO_DONE
_GO_DONE	set	249
	DABS	1,31,1	;_GO_DONE

	global	_GO_nDONE
_GO_nDONE	set	249
	DABS	1,31,1	;_GO_nDONE

	global	_HC
_HC	set	25
	DABS	1,3,1	;_HC

	global	_INTE
_INTE	set	92
	DABS	1,11,1	;_INTE

	global	_INTF
_INTF	set	89
	DABS	1,11,1	;_INTF

	global	_IRP
_IRP	set	31
	DABS	1,3,1	;_IRP

	global	_OSFIF
_OSFIF	set	98
	DABS	1,12,1	;_OSFIF

	global	_P1M0
_P1M0	set	174
	DABS	1,21,1	;_P1M0

	global	_P1M1
_P1M1	set	175
	DABS	1,21,1	;_P1M1

	global	_PA0
_PA0	set	40
	DABS	1,5,1	;_PA0

	global	_PA1
_PA1	set	41
	DABS	1,5,1	;_PA1

	global	_PA2
_PA2	set	42
	DABS	1,5,1	;_PA2

	global	_PA3
_PA3	set	43
	DABS	1,5,1	;_PA3

	global	_PA4
_PA4	set	44
	DABS	1,5,1	;_PA4

	global	_PA5
_PA5	set	45
	DABS	1,5,1	;_PA5

	global	_PAGE
_PAGE	set	29
	DABS	1,3,1	;_PAGE

	global	_PAIE
_PAIE	set	91
	DABS	1,11,1	;_PAIE

	global	_PAIF
_PAIF	set	88
	DABS	1,11,1	;_PAIF

	global	_PDC0
_PDC0	set	176
	DABS	1,22,1	;_PDC0

	global	_PDC1
_PDC1	set	177
	DABS	1,22,1	;_PDC1

	global	_PDC2
_PDC2	set	178
	DABS	1,22,1	;_PDC2

	global	_PDC3
_PDC3	set	179
	DABS	1,22,1	;_PDC3

	global	_PDC4
_PDC4	set	180
	DABS	1,22,1	;_PDC4

	global	_PDC5
_PDC5	set	181
	DABS	1,22,1	;_PDC5

	global	_PDC6
_PDC6	set	182
	DABS	1,22,1	;_PDC6

	global	_PEIE
_PEIE	set	94
	DABS	1,11,1	;_PEIE

	global	_PRSEN
_PRSEN	set	183
	DABS	1,22,1	;_PRSEN

	global	_PSSAC0
_PSSAC0	set	186
	DABS	1,23,1	;_PSSAC0

	global	_PSSAC1
_PSSAC1	set	187
	DABS	1,23,1	;_PSSAC1

	global	_PSSBD0
_PSSBD0	set	184
	DABS	1,23,1	;_PSSBD0

	global	_PSSBD1
_PSSBD1	set	185
	DABS	1,23,1	;_PSSBD1

	global	_RA0
_RA0	set	40
	DABS	1,5,1	;_RA0

	global	_RA1
_RA1	set	41
	DABS	1,5,1	;_RA1

	global	_RA2
_RA2	set	42
	DABS	1,5,1	;_RA2

	global	_RA3
_RA3	set	43
	DABS	1,5,1	;_RA3

	global	_RA4
_RA4	set	44
	DABS	1,5,1	;_RA4

	global	_RA5
_RA5	set	45
	DABS	1,5,1	;_RA5

	global	_RAIE
_RAIE	set	91
	DABS	1,11,1	;_RAIE

	global	_RAIF
_RAIF	set	88
	DABS	1,11,1	;_RAIF

	global	_RC0
_RC0	set	56
	DABS	1,7,1	;_RC0

	global	_RC1
_RC1	set	57
	DABS	1,7,1	;_RC1

	global	_RC2
_RC2	set	58
	DABS	1,7,1	;_RC2

	global	_RC3
_RC3	set	59
	DABS	1,7,1	;_RC3

	global	_RC4
_RC4	set	60
	DABS	1,7,1	;_RC4

	global	_RC5
_RC5	set	61
	DABS	1,7,1	;_RC5

	global	_RP
_RP	set	29
	DABS	1,3,1	;_RP

	global	_RP0
_RP0	set	29
	DABS	1,3,1	;_RP0

	global	_RP1
_RP1	set	30
	DABS	1,3,1	;_RP1

	global	_SLVREN
_SLVREN	set	220
	DABS	1,27,1	;_SLVREN

	global	_SWDTEN
_SWDTEN	set	192
	DABS	1,24,1	;_SWDTEN

	global	_T0IE
_T0IE	set	93
	DABS	1,11,1	;_T0IE

	global	_T0IF
_T0IF	set	90
	DABS	1,11,1	;_T0IF

	global	_T1CKPS0
_T1CKPS0	set	132
	DABS	1,16,1	;_T1CKPS0

	global	_T1CKPS1
_T1CKPS1	set	133
	DABS	1,16,1	;_T1CKPS1

	global	_T1GINV
_T1GINV	set	135
	DABS	1,16,1	;_T1GINV

	global	_T1GSS
_T1GSS	set	209
	DABS	1,26,1	;_T1GSS

	global	_T1IF
_T1IF	set	96
	DABS	1,12,1	;_T1IF

	global	_T1OSCEN
_T1OSCEN	set	131
	DABS	1,16,1	;_T1OSCEN

	global	_T2CKPS0
_T2CKPS0	set	144
	DABS	1,18,1	;_T2CKPS0

	global	_T2CKPS1
_T2CKPS1	set	145
	DABS	1,18,1	;_T2CKPS1

	global	_T2IF
_T2IF	set	97
	DABS	1,12,1	;_T2IF

	global	_TMR0IE
_TMR0IE	set	93
	DABS	1,11,1	;_TMR0IE

	global	_TMR0IF
_TMR0IF	set	90
	DABS	1,11,1	;_TMR0IF

	global	_TMR1CS
_TMR1CS	set	129
	DABS	1,16,1	;_TMR1CS

	global	_TMR1GE
_TMR1GE	set	134
	DABS	1,16,1	;_TMR1GE

	global	_TMR1IF
_TMR1IF	set	96
	DABS	1,12,1	;_TMR1IF

	global	_TMR1ON
_TMR1ON	set	128
	DABS	1,16,1	;_TMR1ON

	global	_TMR2IF
_TMR2IF	set	97
	DABS	1,12,1	;_TMR2IF

	global	_TMR2ON
_TMR2ON	set	146
	DABS	1,18,1	;_TMR2ON

	global	_TOUTPS0
_TOUTPS0	set	147
	DABS	1,18,1	;_TOUTPS0

	global	_TOUTPS1
_TOUTPS1	set	148
	DABS	1,18,1	;_TOUTPS1

	global	_TOUTPS2
_TOUTPS2	set	149
	DABS	1,18,1	;_TOUTPS2

	global	_TOUTPS3
_TOUTPS3	set	150
	DABS	1,18,1	;_TOUTPS3

	global	_VCFG
_VCFG	set	254
	DABS	1,31,1	;_VCFG

	global	_WDTPS0
_WDTPS0	set	193
	DABS	1,24,1	;_WDTPS0

	global	_WDTPS1
_WDTPS1	set	194
	DABS	1,24,1	;_WDTPS1

	global	_WDTPS2
_WDTPS2	set	195
	DABS	1,24,1	;_WDTPS2

	global	_WDTPS3
_WDTPS3	set	196
	DABS	1,24,1	;_WDTPS3

	global	_Z
_Z	set	26
	DABS	1,3,1	;_Z

	global	_ZERO
_ZERO	set	26
	DABS	1,3,1	;_ZERO

	global	_nDONE
_nDONE	set	249
	DABS	1,31,1	;_nDONE

	global	_nPD
_nPD	set	27
	DABS	1,3,1	;_nPD

	global	_nPF
_nPF	set	27
	DABS	1,3,1	;_nPF

	global	_nT1SYNC
_nT1SYNC	set	130
	DABS	1,16,1	;_nT1SYNC

	global	_nTF
_nTF	set	28
	DABS	1,3,1	;_nTF

	global	_nTO
_nTO	set	28
	DABS	1,3,1	;_nTO

	global	_OPTION
_OPTION	set	129
	DABS	1,129,1	;_OPTION

	global	_SFR80
_SFR80	set	128
	DABS	1,128,1	;_SFR80

	global	_ADCON1
_ADCON1	set	159
	DABS	1,159,1	;_ADCON1

	global	_ADRESL
_ADRESL	set	158
	DABS	1,158,1	;_ADRESL

	global	_ANSEL
_ANSEL	set	145
	DABS	1,145,1	;_ANSEL

	global	_EECON1bits
_EECON1bits	set	156
	DABS	1,156,1	;_EECON1bits

	global	_EECON2bits
_EECON2bits	set	157
	DABS	1,157,1	;_EECON2bits

	global	_EEDATA
_EEDATA	set	154
	DABS	1,154,1	;_EEDATA

	global	_IOC
_IOC	set	150
	DABS	1,150,1	;_IOC

	global	_IOCAbits
_IOCAbits	set	150
	DABS	1,150,1	;_IOCAbits

	global	_OPTION_REG
_OPTION_REG	set	129
	DABS	1,129,1	;_OPTION_REG

	global	_OPTIONbits
_OPTIONbits	set	129
	DABS	1,129,1	;_OPTIONbits

	global	_OSCCONbits
_OSCCONbits	set	143
	DABS	1,143,1	;_OSCCONbits

	global	_OSCTUNE
_OSCTUNE	set	144
	DABS	1,144,1	;_OSCTUNE

	global	_PCONbits
_PCONbits	set	142
	DABS	1,142,1	;_PCONbits

	global	_PIE1bits
_PIE1bits	set	140
	DABS	1,140,1	;_PIE1bits

	global	_SFR81
_SFR81	set	129
	DABS	1,129,1	;_SFR81

	global	_SFR85
_SFR85	set	133
	DABS	1,133,1	;_SFR85

	global	_SFR8C
_SFR8C	set	140
	DABS	1,140,1	;_SFR8C

	global	_SFR8E
_SFR8E	set	142
	DABS	1,142,1	;_SFR8E

	global	_SFR8F
_SFR8F	set	143
	DABS	1,143,1	;_SFR8F

	global	_SFR92
_SFR92	set	146
	DABS	1,146,1	;_SFR92

	global	_SFR95
_SFR95	set	149
	DABS	1,149,1	;_SFR95

	global	_SFR96
_SFR96	set	150
	DABS	1,150,1	;_SFR96

	global	_SFR9A
_SFR9A	set	154
	DABS	1,154,1	;_SFR9A

	global	_SFR9B
_SFR9B	set	155
	DABS	1,155,1	;_SFR9B

	global	_SFR9C
_SFR9C	set	156
	DABS	1,156,1	;_SFR9C

	global	_SFR9D
_SFR9D	set	157
	DABS	1,157,1	;_SFR9D

	global	_TRISAbits
_TRISAbits	set	133
	DABS	1,133,1	;_TRISAbits

	global	_TRISC
_TRISC	set	135
	DABS	1,135,1	;_TRISC

	global	_VRCON
_VRCON	set	153
	DABS	1,153,1	;_VRCON

	global	_WPU
_WPU	set	149
	DABS	1,149,1	;_WPU

	global	_WPUAbits
_WPUAbits	set	149
	DABS	1,149,1	;_WPUAbits

	global	_ADCS0
_ADCS0	set	1276
	DABS	1,159,1	;_ADCS0

	global	_ADCS1
_ADCS1	set	1277
	DABS	1,159,1	;_ADCS1

	global	_ADCS2
_ADCS2	set	1278
	DABS	1,159,1	;_ADCS2

	global	_ADIE
_ADIE	set	1126
	DABS	1,140,1	;_ADIE

	global	_ANS0
_ANS0	set	1160
	DABS	1,145,1	;_ANS0

	global	_ANS1
_ANS1	set	1161
	DABS	1,145,1	;_ANS1

	global	_ANS2
_ANS2	set	1162
	DABS	1,145,1	;_ANS2

	global	_ANS3
_ANS3	set	1163
	DABS	1,145,1	;_ANS3

	global	_ANS4
_ANS4	set	1164
	DABS	1,145,1	;_ANS4

	global	_ANS5
_ANS5	set	1165
	DABS	1,145,1	;_ANS5

	global	_ANS6
_ANS6	set	1166
	DABS	1,145,1	;_ANS6

	global	_ANS7
_ANS7	set	1167
	DABS	1,145,1	;_ANS7

	global	_C1IE
_C1IE	set	1123
	DABS	1,140,1	;_C1IE

	global	_C2IE
_C2IE	set	1124
	DABS	1,140,1	;_C2IE

	global	_CCP1IE
_CCP1IE	set	1125
	DABS	1,140,1	;_CCP1IE

	global	_CKMEAIE
_CKMEAIE	set	1126
	DABS	1,140,1	;_CKMEAIE

	global	_ECCPIE
_ECCPIE	set	1125
	DABS	1,140,1	;_ECCPIE

	global	_EEIE
_EEIE	set	1127
	DABS	1,140,1	;_EEIE

	global	_HFIOFR
_HFIOFR	set	1146
	DABS	1,143,1	;_HFIOFR

	global	_HTS
_HTS	set	1146
	DABS	1,143,1	;_HTS

	global	_INTEDG
_INTEDG	set	1038
	DABS	1,129,1	;_INTEDG

	global	_IOC0
_IOC0	set	1200
	DABS	1,150,1	;_IOC0

	global	_IOC1
_IOC1	set	1201
	DABS	1,150,1	;_IOC1

	global	_IOC2
_IOC2	set	1202
	DABS	1,150,1	;_IOC2

	global	_IOC3
_IOC3	set	1203
	DABS	1,150,1	;_IOC3

	global	_IOC4
_IOC4	set	1204
	DABS	1,150,1	;_IOC4

	global	_IOC5
_IOC5	set	1205
	DABS	1,150,1	;_IOC5

	global	_IOCA0
_IOCA0	set	1200
	DABS	1,150,1	;_IOCA0

	global	_IOCA1
_IOCA1	set	1201
	DABS	1,150,1	;_IOCA1

	global	_IOCA2
_IOCA2	set	1202
	DABS	1,150,1	;_IOCA2

	global	_IOCA3
_IOCA3	set	1203
	DABS	1,150,1	;_IOCA3

	global	_IOCA4
_IOCA4	set	1204
	DABS	1,150,1	;_IOCA4

	global	_IOCA5
_IOCA5	set	1205
	DABS	1,150,1	;_IOCA5

	global	_IRCF0
_IRCF0	set	1148
	DABS	1,143,1	;_IRCF0

	global	_IRCF1
_IRCF1	set	1149
	DABS	1,143,1	;_IRCF1

	global	_IRCF2
_IRCF2	set	1150
	DABS	1,143,1	;_IRCF2

	global	_LFIOFR
_LFIOFR	set	1145
	DABS	1,143,1	;_LFIOFR

	global	_LFMOD
_LFMOD	set	1151
	DABS	1,143,1	;_LFMOD

	global	_LTS
_LTS	set	1145
	DABS	1,143,1	;_LTS

	global	_OSFIE
_OSFIE	set	1122
	DABS	1,140,1	;_OSFIE

	global	_OSTS
_OSTS	set	1147
	DABS	1,143,1	;_OSTS

	global	_PS0
_PS0	set	1032
	DABS	1,129,1	;_PS0

	global	_PS1
_PS1	set	1033
	DABS	1,129,1	;_PS1

	global	_PS2
_PS2	set	1034
	DABS	1,129,1	;_PS2

	global	_PSA
_PSA	set	1035
	DABS	1,129,1	;_PSA

	global	_RD
_RD	set	1248
	DABS	1,156,1	;_RD

	global	_SBODEN
_SBODEN	set	1140
	DABS	1,142,1	;_SBODEN

	global	_SBOREN
_SBOREN	set	1140
	DABS	1,142,1	;_SBOREN

	global	_SCS
_SCS	set	1144
	DABS	1,143,1	;_SCS

	global	_T0CS
_T0CS	set	1037
	DABS	1,129,1	;_T0CS

	global	_T0SE
_T0SE	set	1036
	DABS	1,129,1	;_T0SE

	global	_T1IE
_T1IE	set	1120
	DABS	1,140,1	;_T1IE

	global	_T2IE
_T2IE	set	1121
	DABS	1,140,1	;_T2IE

	global	_TMR1IE
_TMR1IE	set	1120
	DABS	1,140,1	;_TMR1IE

	global	_TMR2IE
_TMR2IE	set	1121
	DABS	1,140,1	;_TMR2IE

	global	_TRISA0
_TRISA0	set	1064
	DABS	1,133,1	;_TRISA0

	global	_TRISA1
_TRISA1	set	1065
	DABS	1,133,1	;_TRISA1

	global	_TRISA2
_TRISA2	set	1066
	DABS	1,133,1	;_TRISA2

	global	_TRISA3
_TRISA3	set	1067
	DABS	1,133,1	;_TRISA3

	global	_TRISA4
_TRISA4	set	1068
	DABS	1,133,1	;_TRISA4

	global	_TRISA5
_TRISA5	set	1069
	DABS	1,133,1	;_TRISA5

	global	_TRISC0
_TRISC0	set	1080
	DABS	1,135,1	;_TRISC0

	global	_TRISC1
_TRISC1	set	1081
	DABS	1,135,1	;_TRISC1

	global	_TRISC2
_TRISC2	set	1082
	DABS	1,135,1	;_TRISC2

	global	_TRISC3
_TRISC3	set	1083
	DABS	1,135,1	;_TRISC3

	global	_TRISC4
_TRISC4	set	1084
	DABS	1,135,1	;_TRISC4

	global	_TRISC5
_TRISC5	set	1085
	DABS	1,135,1	;_TRISC5

	global	_TUN0
_TUN0	set	1152
	DABS	1,144,1	;_TUN0

	global	_TUN1
_TUN1	set	1153
	DABS	1,144,1	;_TUN1

	global	_TUN2
_TUN2	set	1154
	DABS	1,144,1	;_TUN2

	global	_TUN3
_TUN3	set	1155
	DABS	1,144,1	;_TUN3

	global	_TUN4
_TUN4	set	1156
	DABS	1,144,1	;_TUN4

	global	_ULPWUE
_ULPWUE	set	1141
	DABS	1,142,1	;_ULPWUE

	global	_VR0
_VR0	set	1224
	DABS	1,153,1	;_VR0

	global	_VR1
_VR1	set	1225
	DABS	1,153,1	;_VR1

	global	_VR2
_VR2	set	1226
	DABS	1,153,1	;_VR2

	global	_VR3
_VR3	set	1227
	DABS	1,153,1	;_VR3

	global	_VREN
_VREN	set	1231
	DABS	1,153,1	;_VREN

	global	_VRR
_VRR	set	1229
	DABS	1,153,1	;_VRR

	global	_WPU0
_WPU0	set	1192
	DABS	1,149,1	;_WPU0

	global	_WPU1
_WPU1	set	1193
	DABS	1,149,1	;_WPU1

	global	_WPU2
_WPU2	set	1194
	DABS	1,149,1	;_WPU2

	global	_WPU4
_WPU4	set	1196
	DABS	1,149,1	;_WPU4

	global	_WPU5
_WPU5	set	1197
	DABS	1,149,1	;_WPU5

	global	_WPUA0
_WPUA0	set	1192
	DABS	1,149,1	;_WPUA0

	global	_WPUA1
_WPUA1	set	1193
	DABS	1,149,1	;_WPUA1

	global	_WPUA2
_WPUA2	set	1194
	DABS	1,149,1	;_WPUA2

	global	_WPUA4
_WPUA4	set	1196
	DABS	1,149,1	;_WPUA4

	global	_WPUA5
_WPUA5	set	1197
	DABS	1,149,1	;_WPUA5

	global	_WR
_WR	set	1256
	DABS	1,157,1	;_WR

	global	_WREN
_WREN	set	1250
	DABS	1,156,1	;_WREN

	global	_WREN1
_WREN1	set	1250
	DABS	1,156,1	;_WREN1

	global	_WREN2
_WREN2	set	1252
	DABS	1,156,1	;_WREN2

	global	_WREN3
_WREN3	set	1253
	DABS	1,156,1	;_WREN3

	global	_WRERR
_WRERR	set	1251
	DABS	1,156,1	;_WRERR

	global	_nBOD
_nBOD	set	1136
	DABS	1,142,1	;_nBOD

	global	_nBOR
_nBOR	set	1136
	DABS	1,142,1	;_nBOR

	global	_nPAPU
_nPAPU	set	1039
	DABS	1,129,1	;_nPAPU

	global	_nPOR
_nPOR	set	1137
	DABS	1,142,1	;_nPOR

	global	_nRAPU
_nRAPU	set	1039
	DABS	1,129,1	;_nRAPU

	global	_INTCON
_INTCON	set	11
	DABS	1,11,1	;_INTCON

	global	_PIR1
_PIR1	set	12
	DABS	1,12,1	;_PIR1

	global	_SFR0D
_SFR0D	set	13
	DABS	1,13,1	;_SFR0D

	global	_SFR0E
_SFR0E	set	14
	DABS	1,14,1	;_SFR0E

	global	_SFR0F
_SFR0F	set	15
	DABS	1,15,1	;_SFR0F

	global	_SFR10
_SFR10	set	16
	DABS	1,16,1	;_SFR10

	global	_TMR2
_TMR2	set	17
	DABS	1,17,1	;_TMR2

	global	_SFR13
_SFR13	set	19
	DABS	1,19,1	;_SFR13

	global	_SFR14
_SFR14	set	20
	DABS	1,20,1	;_SFR14

	global	_SFR15
_SFR15	set	21
	DABS	1,21,1	;_SFR15

	global	_SFR16
_SFR16	set	22
	DABS	1,22,1	;_SFR16

	global	_SFR17
_SFR17	set	23
	DABS	1,23,1	;_SFR17

	global	_T2CON
_T2CON	set	18
	DABS	1,18,1	;_T2CON

	global	_WDTCON
_WDTCON	set	24
	DABS	1,24,1	;_WDTCON

	global	_MSCKCON
_MSCKCON	set	27
	DABS	1,27,1	;_MSCKCON

	global	_SFR19
_SFR19	set	25
	DABS	1,25,1	;_SFR19

	global	_SFR1A
_SFR1A	set	26
	DABS	1,26,1	;_SFR1A

	global	_SFR1E
_SFR1E	set	30
	DABS	1,30,1	;_SFR1E

	global	_SFR1F
_SFR1F	set	31
	DABS	1,31,1	;_SFR1F

	global	_SOSCPRH
_SOSCPRH	set	29
	DABS	1,29,1	;_SOSCPRH

	global	_SOSCPRL
_SOSCPRL	set	28
	DABS	1,28,1	;_SOSCPRL

	global	_SFR82
_SFR82	set	130
	DABS	1,130,1	;_SFR82

	global	_SFR83
_SFR83	set	131
	DABS	1,131,1	;_SFR83

	global	_SFR84
_SFR84	set	132
	DABS	1,132,1	;_SFR84

	global	_TRISA
_TRISA	set	133
	DABS	1,133,1	;_TRISA

	global	_PIE1
_PIE1	set	140
	DABS	1,140,1	;_PIE1

	global	_SFR86
_SFR86	set	134
	DABS	1,134,1	;_SFR86

	global	_SFR87
_SFR87	set	135
	DABS	1,135,1	;_SFR87

	global	_SFR88
_SFR88	set	136
	DABS	1,136,1	;_SFR88

	global	_SFR89
_SFR89	set	137
	DABS	1,137,1	;_SFR89

	global	_SFR8A
_SFR8A	set	138
	DABS	1,138,1	;_SFR8A

	global	_SFR8B
_SFR8B	set	139
	DABS	1,139,1	;_SFR8B

	global	_PCON
_PCON	set	142
	DABS	1,142,1	;_PCON

	global	_SFR8D
_SFR8D	set	141
	DABS	1,141,1	;_SFR8D

	global	_OSCCON
_OSCCON	set	143
	DABS	1,143,1	;_OSCCON

	global	_PR2
_PR2	set	146
	DABS	1,146,1	;_PR2

	global	_SFR90
_SFR90	set	144
	DABS	1,144,1	;_SFR90

	global	_SFR91
_SFR91	set	145
	DABS	1,145,1	;_SFR91

	global	_SFR93
_SFR93	set	147
	DABS	1,147,1	;_SFR93

	global	_SFR94
_SFR94	set	148
	DABS	1,148,1	;_SFR94

	global	_WPUA
_WPUA	set	149
	DABS	1,149,1	;_WPUA

	global	_EEDAT
_EEDAT	set	154
	DABS	1,154,1	;_EEDAT

	global	_IOCA
_IOCA	set	150
	DABS	1,150,1	;_IOCA

	global	_SFR97
_SFR97	set	151
	DABS	1,151,1	;_SFR97

	global	_SFR98
_SFR98	set	152
	DABS	1,152,1	;_SFR98

	global	_SFR99
_SFR99	set	153
	DABS	1,153,1	;_SFR99

	global	_EEADR
_EEADR	set	155
	DABS	1,155,1	;_EEADR

	global	_EECON1
_EECON1	set	156
	DABS	1,156,1	;_EECON1

	global	_EECON2
_EECON2	set	157
	DABS	1,157,1	;_EECON2

	global	_SFR9E
_SFR9E	set	158
	DABS	1,158,1	;_SFR9E

	global	_SFR9F
_SFR9F	set	159
	DABS	1,159,1	;_SFR9F

	file	"test_60f01x_iic.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_POWER_INITIAL
?_POWER_INITIAL:	; 0 bytes @ 0x0
	global	?_DelayUs
?_DelayUs:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_DelayS
?_DelayS:	; 0 bytes @ 0x0
	global	?_DelayM
?_DelayM:	; 0 bytes @ 0x0
	global	?_IIC_Start
?_IIC_Start:	; 0 bytes @ 0x0
	global	?_IIC_Stop
?_IIC_Stop:	; 0 bytes @ 0x0
	global	?_IIC_Send_Byte
?_IIC_Send_Byte:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_IIC_Wait_Ack
?_IIC_Wait_Ack:	; 1 bytes @ 0x0
	ds	2
	global	??_POWER_INITIAL
??_POWER_INITIAL:	; 0 bytes @ 0x2
	global	??_DelayUs
??_DelayUs:	; 0 bytes @ 0x2
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x2
	ds	1
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x3
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x4
	global	??_IIC_Start
??_IIC_Start:	; 0 bytes @ 0x4
	global	??_IIC_Stop
??_IIC_Stop:	; 0 bytes @ 0x4
	global	??_IIC_Wait_Ack
??_IIC_Wait_Ack:	; 0 bytes @ 0x4
	global	??_IIC_Send_Byte
??_IIC_Send_Byte:	; 0 bytes @ 0x4
	global	DelayMs@Time
DelayMs@Time:	; 1 bytes @ 0x4
	global	IIC_Wait_Ack@ucErrTime
IIC_Wait_Ack@ucErrTime:	; 1 bytes @ 0x4
	ds	1
	global	DelayMs@a
DelayMs@a:	; 1 bytes @ 0x5
	global	IIC_Send_Byte@txd
IIC_Send_Byte@txd:	; 1 bytes @ 0x5
	ds	1
	global	DelayMs@b
DelayMs@b:	; 1 bytes @ 0x6
	global	IIC_Send_Byte@t
IIC_Send_Byte@t:	; 1 bytes @ 0x6
	ds	1
	global	??_DelayS
??_DelayS:	; 0 bytes @ 0x7
	global	?_I2C_SendString
?_I2C_SendString:	; 1 bytes @ 0x7
	global	DelayS@Time
DelayS@Time:	; 1 bytes @ 0x7
	global	I2C_SendString@buffer
I2C_SendString@buffer:	; 2 bytes @ 0x7
	ds	1
	global	DelayS@a
DelayS@a:	; 1 bytes @ 0x8
	ds	1
	global	DelayS@b
DelayS@b:	; 1 bytes @ 0x9
	global	I2C_SendString@Number
I2C_SendString@Number:	; 2 bytes @ 0x9
	ds	1
	global	??_DelayM
??_DelayM:	; 0 bytes @ 0xA
	global	DelayM@Time
DelayM@Time:	; 1 bytes @ 0xA
	ds	1
	global	??_I2C_SendString
??_I2C_SendString:	; 0 bytes @ 0xB
	global	DelayM@a
DelayM@a:	; 1 bytes @ 0xB
	global	I2C_SendString@chip_addr
I2C_SendString@chip_addr:	; 1 bytes @ 0xB
	ds	1
	global	I2C_SendString@i
I2C_SendString@i:	; 1 bytes @ 0xC
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xD
	global	main@i
main@i:	; 1 bytes @ 0xD
	ds	1
;;Data sizes: Strings 0, constant 248, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          62     14      14

;;
;; Pointer list with targets:

;; I2C_SendString@buffer	PTR const unsigned char  size(2) Largest target is 68
;;		 -> par7(CODE[12]), par6(CODE[16]), par5(CODE[40]), par4(CODE[48]), 
;;		 -> par3(CODE[44]), par2(CODE[68]), par1(CODE[20]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_I2C_SendString
;;   _I2C_SendString->_IIC_Send_Byte
;;   _DelayM->_DelayS
;;   _IIC_Wait_Ack->_DelayUs
;;   _DelayS->_DelayMs
;;   _IIC_Send_Byte->_DelayUs
;;   _IIC_Stop->_DelayUs
;;   _IIC_Start->_DelayUs
;;   _DelayMs->_DelayUs
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     720
;;                                             13 COMMON     1     1      0
;;                      _POWER_INITIAL
;;                             _DelayS
;;                     _I2C_SendString
;;                            _DelayMs
;;                             _DelayM
;; ---------------------------------------------------------------------------------
;; (1) _I2C_SendString                                       6     2      4     270
;;                                              7 COMMON     6     2      4
;;                          _IIC_Start
;;                      _IIC_Send_Byte
;;                       _IIC_Wait_Ack
;;                           _IIC_Stop
;; ---------------------------------------------------------------------------------
;; (1) _DelayM                                               2     2      0     180
;;                                             10 COMMON     2     2      0
;;                             _DelayS
;; ---------------------------------------------------------------------------------
;; (2) _IIC_Wait_Ack                                         1     1      0      75
;;                                              4 COMMON     1     1      0
;;                            _DelayUs
;;                           _IIC_Stop
;; ---------------------------------------------------------------------------------
;; (2) _DelayS                                               3     3      0     150
;;                                              7 COMMON     3     3      0
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _IIC_Send_Byte                                        3     3      0      75
;;                                              4 COMMON     3     3      0
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (2) _IIC_Stop                                             0     0      0      30
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (2) _IIC_Start                                            0     0      0      30
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (3) _DelayMs                                              3     3      0      90
;;                                              4 COMMON     3     3      0
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (4) _DelayUs                                              2     2      0      30
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _POWER_INITIAL                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _POWER_INITIAL
;;   _DelayS
;;     _DelayMs
;;       _DelayUs
;;   _I2C_SendString
;;     _IIC_Start
;;       _DelayUs
;;     _IIC_Send_Byte
;;       _DelayUs
;;     _IIC_Wait_Ack
;;       _DelayUs
;;       _IIC_Stop
;;         _DelayUs
;;     _IIC_Stop
;;       _DelayUs
;;   _DelayMs
;;     _DelayUs
;;   _DelayM
;;     _DelayS
;;       _DelayMs
;;         _DelayUs
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON           3E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON              3E      E       E       1       22.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;DATA                 0      0       0       4        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 539 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         1
;;      Temps:          0
;;      Totals:         1
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_POWER_INITIAL
;;		_DelayS
;;		_I2C_SendString
;;		_DelayMs
;;		_DelayM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"i2c.c"
	line	539
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	541
	
l1677:	
;i2c.c: 540: char i;
;i2c.c: 541: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	542
;i2c.c: 542: DelayS(1);
	movlw	(01h)
	fcall	_DelayS
	line	543
	
l1679:	
;i2c.c: 543: I2C_SendString(0x84,par1,sizeof(par1));
	movlw	low(_par1|8000h)
	movwf	(?_I2C_SendString)
	movlw	high(_par1|8000h)
	movwf	((?_I2C_SendString))+1
	movlw	014h
	movwf	0+(?_I2C_SendString)+02h
	clrf	1+(?_I2C_SendString)+02h
	movlw	(084h)
	fcall	_I2C_SendString
	line	544
	
l1681:	
;i2c.c: 544: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	545
;i2c.c: 545: I2C_SendString(0x84,par2,sizeof(par2));
	movlw	low(_par2|8000h)
	movwf	(?_I2C_SendString)
	movlw	high(_par2|8000h)
	movwf	((?_I2C_SendString))+1
	movlw	044h
	movwf	0+(?_I2C_SendString)+02h
	clrf	1+(?_I2C_SendString)+02h
	movlw	(084h)
	fcall	_I2C_SendString
	line	546
	
l1683:	
;i2c.c: 546: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	547
	
l1685:	
;i2c.c: 547: I2C_SendString(0x84,par3,sizeof(par3));
	movlw	low(_par3|8000h)
	movwf	(?_I2C_SendString)
	movlw	high(_par3|8000h)
	movwf	((?_I2C_SendString))+1
	movlw	02Ch
	movwf	0+(?_I2C_SendString)+02h
	clrf	1+(?_I2C_SendString)+02h
	movlw	(084h)
	fcall	_I2C_SendString
	line	548
;i2c.c: 548: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	549
	
l1687:	
;i2c.c: 549: I2C_SendString(0x84,par4,sizeof(par4));
	movlw	low(_par4|8000h)
	movwf	(?_I2C_SendString)
	movlw	high(_par4|8000h)
	movwf	((?_I2C_SendString))+1
	movlw	030h
	movwf	0+(?_I2C_SendString)+02h
	clrf	1+(?_I2C_SendString)+02h
	movlw	(084h)
	fcall	_I2C_SendString
	line	550
	
l1689:	
;i2c.c: 550: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	551
;i2c.c: 551: I2C_SendString(0x84,par5,sizeof(par5));
	movlw	low(_par5|8000h)
	movwf	(?_I2C_SendString)
	movlw	high(_par5|8000h)
	movwf	((?_I2C_SendString))+1
	movlw	028h
	movwf	0+(?_I2C_SendString)+02h
	clrf	1+(?_I2C_SendString)+02h
	movlw	(084h)
	fcall	_I2C_SendString
	line	552
	
l1691:	
;i2c.c: 552: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	553
	
l1693:	
;i2c.c: 553: I2C_SendString(0x84,par6,sizeof(par6));
	movlw	low(_par6|8000h)
	movwf	(?_I2C_SendString)
	movlw	high(_par6|8000h)
	movwf	((?_I2C_SendString))+1
	movlw	010h
	movwf	0+(?_I2C_SendString)+02h
	clrf	1+(?_I2C_SendString)+02h
	movlw	(084h)
	fcall	_I2C_SendString
	line	554
;i2c.c: 554: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	559
	
l1695:	
;i2c.c: 559: for(i = 0;i < 10;i++) {
	clrf	(main@i)
	line	560
	
l1701:	
;i2c.c: 560: I2C_SendString(0x84,par7,sizeof(par7));
	movlw	low(_par7|8000h)
	movwf	(?_I2C_SendString)
	movlw	high(_par7|8000h)
	movwf	((?_I2C_SendString))+1
	movlw	0Ch
	movwf	0+(?_I2C_SendString)+02h
	clrf	1+(?_I2C_SendString)+02h
	movlw	(084h)
	fcall	_I2C_SendString
	line	561
	
l1703:	
;i2c.c: 561: DelayS(30);
	movlw	(01Eh)
	fcall	_DelayS
	line	559
	
l1705:	
	incf	(main@i),f
	
l1707:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u201
	goto	u200
u201:
	goto	l1701
u200:
	line	564
	
l1709:	
;i2c.c: 564: I2C_SendString(0x84,par7,sizeof(par7));
	movlw	low(_par7|8000h)
	movwf	(?_I2C_SendString)
	movlw	high(_par7|8000h)
	movwf	((?_I2C_SendString))+1
	movlw	0Ch
	movwf	0+(?_I2C_SendString)+02h
	clrf	1+(?_I2C_SendString)+02h
	movlw	(084h)
	fcall	_I2C_SendString
	line	565
	
l1711:	
;i2c.c: 565: DelayM(20);
	movlw	(014h)
	fcall	_DelayM
	goto	l1709
	line	570
;i2c.c: 570: while(1)
	
l583:	
	line	572
;i2c.c: 571: {
;i2c.c: 572: _nop();
	nop
	goto	l583
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	575
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_I2C_SendString
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

;; *************** function _I2C_SendString *****************
;; Defined at:
;;		line 323 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  chip_addr       1    wreg     unsigned char 
;;  buffer          2    7[COMMON] PTR const unsigned char 
;;		 -> par7(12), par6(16), par5(40), par4(48), 
;;		 -> par3(44), par2(68), par1(20), 
;;  Number          2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  chip_addr       1   11[COMMON] unsigned char 
;;  i               1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         4
;;      Locals:         2
;;      Temps:          0
;;      Totals:         6
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IIC_Start
;;		_IIC_Send_Byte
;;		_IIC_Wait_Ack
;;		_IIC_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text120
	file	"i2c.c"
	line	323
	global	__size_of_I2C_SendString
	__size_of_I2C_SendString	equ	__end_of_I2C_SendString-_I2C_SendString
	
_I2C_SendString:	
	opt	stack 3
; Regs used in _I2C_SendString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;I2C_SendString@chip_addr stored from wreg
	line	325
	movwf	(I2C_SendString@chip_addr)
	
l1657:	
;i2c.c: 324: unsigned char i;
;i2c.c: 325: IIC_Start();
	fcall	_IIC_Start
	line	326
;i2c.c: 326: IIC_Send_Byte(chip_addr);
	movf	(I2C_SendString@chip_addr),w
	fcall	_IIC_Send_Byte
	line	328
;i2c.c: 328: if(IIC_Wait_Ack()==1){
	fcall	_IIC_Wait_Ack
	xorlw	01h
	skipz
	goto	u171
	goto	u170
u171:
	goto	l1661
u170:
	goto	l529
	line	333
	
l1661:	
;i2c.c: 331: }
;i2c.c: 333: for(i=0; i<Number; i++) {
	clrf	(I2C_SendString@i)
	goto	l1671
	line	334
	
l1663:	
;i2c.c: 334: IIC_Send_Byte(*buffer);
	movf	(I2C_SendString@buffer+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(I2C_SendString@buffer),w
	movwf	fsr0
	fcall	stringtab
	fcall	_IIC_Send_Byte
	line	335
	
l1665:	
;i2c.c: 335: if(IIC_Wait_Ack()==1) {
	fcall	_IIC_Wait_Ack
	xorlw	01h
	skipz
	goto	u181
	goto	u180
u181:
	goto	l1669
u180:
	goto	l529
	line	339
	
l1669:	
;i2c.c: 338: }
;i2c.c: 339: buffer++;
	incf	(I2C_SendString@buffer),f
	skipnz
	incf	(I2C_SendString@buffer+1),f
	line	333
	incf	(I2C_SendString@i),f
	
l1671:	
	movf	(I2C_SendString@Number+1),w
	xorlw	80h
	sublw	080h
	skipz
	goto	u195
	movf	(I2C_SendString@Number),w
	subwf	(I2C_SendString@i),w
u195:

	skipc
	goto	u191
	goto	u190
u191:
	goto	l1663
u190:
	line	341
	
l1673:	
;i2c.c: 340: }
;i2c.c: 341: IIC_Stop();
	fcall	_IIC_Stop
	line	343
	
l529:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_SendString
	__end_of_I2C_SendString:
;; =============== function _I2C_SendString ends ============

	signat	_I2C_SendString,12409
	global	_DelayM
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _DelayM *****************
;; Defined at:
;;		line 131 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1   10[COMMON] unsigned char 
;;  a               1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         2
;;      Temps:          0
;;      Totals:         2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayS
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text121
	file	"i2c.c"
	line	131
	global	__size_of_DelayM
	__size_of_DelayM	equ	__end_of_DelayM-_DelayM
	
_DelayM:	
	opt	stack 3
; Regs used in _DelayM: [wreg+status,2+status,0+pclath+cstack]
;DelayM@Time stored from wreg
	line	133
	movwf	(DelayM@Time)
	
l1649:	
;i2c.c: 132: unsigned char a;
;i2c.c: 133: for(a=0;a<Time;a++)
	clrf	(DelayM@a)
	goto	l1655
	line	135
	
l1651:	
;i2c.c: 134: {
;i2c.c: 135: DelayS(60);
	movlw	(03Ch)
	fcall	_DelayS
	line	133
	
l1653:	
	incf	(DelayM@a),f
	
l1655:	
	movf	(DelayM@Time),w
	subwf	(DelayM@a),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l1651
u160:
	line	137
	
l479:	
	return
	opt stack 0
GLOBAL	__end_of_DelayM
	__end_of_DelayM:
;; =============== function _DelayM ends ============

	signat	_DelayM,4216
	global	_IIC_Wait_Ack
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _IIC_Wait_Ack *****************
;; Defined at:
;;		line 180 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ucErrTime       1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         1
;;      Temps:          0
;;      Totals:         1
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayUs
;;		_IIC_Stop
;; This function is called by:
;;		_I2C_SendString
;; This function uses a non-reentrant model
;;
psect	text122
	file	"i2c.c"
	line	180
	global	__size_of_IIC_Wait_Ack
	__size_of_IIC_Wait_Ack	equ	__end_of_IIC_Wait_Ack-_IIC_Wait_Ack
	
_IIC_Wait_Ack:	
	opt	stack 3
; Regs used in _IIC_Wait_Ack: [wreg+status,2+status,0+pclath+cstack]
	line	181
	
l1623:	
;i2c.c: 181: unsigned char ucErrTime=0;
	clrf	(IIC_Wait_Ack@ucErrTime)
	line	182
	
l1625:	
;i2c.c: 182: TRISA2 =1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7
	line	183
	
l1627:	
;i2c.c: 183: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	line	184
	
l1629:	
;i2c.c: 184: DelayUs(5);
	movlw	(05h)
	fcall	_DelayUs
	line	185
	
l1631:	
;i2c.c: 185: RA4=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(44/8),(44)&7
	line	186
	
l1633:	
;i2c.c: 186: DelayUs(5);
	movlw	(05h)
	fcall	_DelayUs
	line	187
;i2c.c: 187: while(RA2)
	goto	l488
	line	189
	
l1635:	
;i2c.c: 188: {
;i2c.c: 189: ucErrTime++;
	incf	(IIC_Wait_Ack@ucErrTime),f
	line	190
	
l1637:	
;i2c.c: 190: if(ucErrTime>250)
	movlw	(0FBh)
	subwf	(IIC_Wait_Ack@ucErrTime),w
	skipc
	goto	u141
	goto	u140
u141:
	goto	l488
u140:
	line	192
	
l1639:	
;i2c.c: 191: {
;i2c.c: 192: IIC_Stop();
	fcall	_IIC_Stop
	line	193
	
l1641:	
;i2c.c: 193: return 1;
	movlw	(01h)
	goto	l491
	line	195
	
l488:	
	line	187
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u151
	goto	u150
u151:
	goto	l1635
u150:
	
l492:	
	line	196
;i2c.c: 194: }
;i2c.c: 195: }
;i2c.c: 196: RA4=0;
	bcf	(44/8),(44)&7
	line	197
	
l1645:	
;i2c.c: 197: return 0;
	movlw	(0)
	line	198
	
l491:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_Wait_Ack
	__end_of_IIC_Wait_Ack:
;; =============== function _IIC_Wait_Ack ends ============

	signat	_IIC_Wait_Ack,89
	global	_DelayS
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:

;; *************** function _DelayS *****************
;; Defined at:
;;		line 119 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    7[COMMON] unsigned char 
;;  b               1    9[COMMON] unsigned char 
;;  a               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         3
;;      Temps:          0
;;      Totals:         3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_DelayM
;;		_main
;; This function uses a non-reentrant model
;;
psect	text123
	file	"i2c.c"
	line	119
	global	__size_of_DelayS
	__size_of_DelayS	equ	__end_of_DelayS-_DelayS
	
_DelayS:	
	opt	stack 3
; Regs used in _DelayS: [wreg+status,2+status,0+pclath+cstack]
;DelayS@Time stored from wreg
	line	121
	movwf	(DelayS@Time)
	
l1605:	
;i2c.c: 120: unsigned char a,b;
;i2c.c: 121: for(a=0;a<Time;a++)
	clrf	(DelayS@a)
	goto	l1621
	line	123
	
l1607:	
;i2c.c: 122: {
;i2c.c: 123: for(b=0;b<10;b++)
	clrf	(DelayS@b)
	line	125
	
l1613:	
;i2c.c: 124: {
;i2c.c: 125: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	123
	
l1615:	
	incf	(DelayS@b),f
	
l1617:	
	movlw	(0Ah)
	subwf	(DelayS@b),w
	skipc
	goto	u121
	goto	u120
u121:
	goto	l1613
u120:
	line	121
	
l1619:	
	incf	(DelayS@a),f
	
l1621:	
	movf	(DelayS@Time),w
	subwf	(DelayS@a),w
	skipc
	goto	u131
	goto	u130
u131:
	goto	l1607
u130:
	line	128
	
l473:	
	return
	opt stack 0
GLOBAL	__end_of_DelayS
	__end_of_DelayS:
;; =============== function _DelayS ends ============

	signat	_DelayS,4216
	global	_IIC_Send_Byte
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:

;; *************** function _IIC_Send_Byte *****************
;; Defined at:
;;		line 238 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  txd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  txd             1    5[COMMON] unsigned char 
;;  t               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         2
;;      Temps:          1
;;      Totals:         3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_I2C_SendString
;; This function uses a non-reentrant model
;;
psect	text124
	file	"i2c.c"
	line	238
	global	__size_of_IIC_Send_Byte
	__size_of_IIC_Send_Byte	equ	__end_of_IIC_Send_Byte-_IIC_Send_Byte
	
_IIC_Send_Byte:	
	opt	stack 4
; Regs used in _IIC_Send_Byte: [wreg+status,2+status,0+pclath+cstack]
;IIC_Send_Byte@txd stored from wreg
	line	240
	movwf	(IIC_Send_Byte@txd)
	
l1583:	
;i2c.c: 239: unsigned char t;
;i2c.c: 240: TRISA2 =0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	241
;i2c.c: 241: RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7
	line	242
	
l1585:	
;i2c.c: 242: for(t=0;t<8;t++)
	clrf	(IIC_Send_Byte@t)
	line	244
	
l1591:	
;i2c.c: 243: {
;i2c.c: 244: if((txd&0x80)>>7)
	movf	(IIC_Send_Byte@txd),w
	movwf	(??_IIC_Send_Byte+0)+0
	movlw	07h
u95:
	clrc
	rrf	(??_IIC_Send_Byte+0)+0,f
	addlw	-1
	skipz
	goto	u95
	btfss	0+(??_IIC_Send_Byte+0)+0,(0)&7
	goto	u101
	goto	u100
u101:
	goto	l503
u100:
	line	245
	
l1593:	
;i2c.c: 245: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	goto	l504
	line	246
	
l503:	
	line	247
;i2c.c: 246: else
;i2c.c: 247: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7
	
l504:	
	line	248
;i2c.c: 248: txd<<=1;
	clrc
	rlf	(IIC_Send_Byte@txd),f
	line	249
	
l1595:	
;i2c.c: 249: DelayUs(5);
	movlw	(05h)
	fcall	_DelayUs
	line	250
	
l1597:	
;i2c.c: 250: RA4=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(44/8),(44)&7
	line	251
;i2c.c: 251: DelayUs(5);
	movlw	(05h)
	fcall	_DelayUs
	line	252
	
l1599:	
;i2c.c: 252: RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7
	line	253
;i2c.c: 253: DelayUs(5);
	movlw	(05h)
	fcall	_DelayUs
	line	242
	
l1601:	
	incf	(IIC_Send_Byte@t),f
	
l1603:	
	movlw	(08h)
	subwf	(IIC_Send_Byte@t),w
	skipc
	goto	u111
	goto	u110
u111:
	goto	l1591
u110:
	line	255
	
l505:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_Send_Byte
	__end_of_IIC_Send_Byte:
;; =============== function _IIC_Send_Byte ends ============

	signat	_IIC_Send_Byte,4216
	global	_IIC_Stop
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:

;; *************** function _IIC_Stop *****************
;; Defined at:
;;		line 162 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          0
;;      Totals:         0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_IIC_Wait_Ack
;;		_I2C_SendString
;; This function uses a non-reentrant model
;;
psect	text125
	file	"i2c.c"
	line	162
	global	__size_of_IIC_Stop
	__size_of_IIC_Stop	equ	__end_of_IIC_Stop-_IIC_Stop
	
_IIC_Stop:	
	opt	stack 4
; Regs used in _IIC_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l1575:	
;i2c.c: 163: TRISA2 =0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	164
;i2c.c: 164: RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7
	line	165
;i2c.c: 165: RA2=0;
	bcf	(42/8),(42)&7
	line	166
	
l1577:	
;i2c.c: 166: DelayUs(10);
	movlw	(0Ah)
	fcall	_DelayUs
	line	167
	
l1579:	
;i2c.c: 167: RA4=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(44/8),(44)&7
	line	168
;i2c.c: 168: DelayUs(10);
	movlw	(0Ah)
	fcall	_DelayUs
	line	169
	
l1581:	
;i2c.c: 169: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	line	170
;i2c.c: 170: DelayUs(10);
	movlw	(0Ah)
	fcall	_DelayUs
	line	171
	
l485:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_Stop
	__end_of_IIC_Stop:
;; =============== function _IIC_Stop ends ============

	signat	_IIC_Stop,88
	global	_IIC_Start
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:

;; *************** function _IIC_Start *****************
;; Defined at:
;;		line 145 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          0
;;      Totals:         0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_I2C_SendString
;; This function uses a non-reentrant model
;;
psect	text126
	file	"i2c.c"
	line	145
	global	__size_of_IIC_Start
	__size_of_IIC_Start	equ	__end_of_IIC_Start-_IIC_Start
	
_IIC_Start:	
	opt	stack 4
; Regs used in _IIC_Start: [wreg+status,2+status,0+pclath+cstack]
	line	146
	
l1567:	
;i2c.c: 146: TRISA2 =0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	147
;i2c.c: 147: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	line	148
;i2c.c: 148: RA4=1;
	bsf	(44/8),(44)&7
	line	149
	
l1569:	
;i2c.c: 149: DelayUs(10);
	movlw	(0Ah)
	fcall	_DelayUs
	line	150
	
l1571:	
;i2c.c: 150: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7
	line	151
;i2c.c: 151: DelayUs(10);
	movlw	(0Ah)
	fcall	_DelayUs
	line	152
	
l1573:	
;i2c.c: 152: RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7
	line	153
;i2c.c: 153: DelayUs(10);
	movlw	(0Ah)
	fcall	_DelayUs
	line	154
	
l482:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_Start
	__end_of_IIC_Start:
;; =============== function _IIC_Start ends ============

	signat	_IIC_Start,88
	global	_DelayMs
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 102 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    4[COMMON] unsigned char 
;;  b               1    6[COMMON] unsigned char 
;;  a               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         3
;;      Temps:          0
;;      Totals:         3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_DelayS
;;		_main
;; This function uses a non-reentrant model
;;
psect	text127
	file	"i2c.c"
	line	102
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 3
; Regs used in _DelayMs: [wreg+status,2+status,0+pclath+cstack]
;DelayMs@Time stored from wreg
	line	104
	movwf	(DelayMs@Time)
	
l1549:	
;i2c.c: 103: unsigned char a,b;
;i2c.c: 104: for(a=0;a<Time;a++)
	clrf	(DelayMs@a)
	goto	l1565
	line	106
	
l1551:	
;i2c.c: 105: {
;i2c.c: 106: for(b=0;b<5;b++)
	clrf	(DelayMs@b)
	line	108
	
l1557:	
;i2c.c: 107: {
;i2c.c: 108: DelayUs(98);
	movlw	(062h)
	fcall	_DelayUs
	line	106
	
l1559:	
	incf	(DelayMs@b),f
	
l1561:	
	movlw	(05h)
	subwf	(DelayMs@b),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l1557
u70:
	line	104
	
l1563:	
	incf	(DelayMs@a),f
	
l1565:	
	movf	(DelayMs@Time),w
	subwf	(DelayMs@a),w
	skipc
	goto	u81
	goto	u80
u81:
	goto	l1551
u80:
	line	111
	
l465:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_DelayUs
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 88 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    2[COMMON] unsigned char 
;;  a               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         2
;;      Temps:          0
;;      Totals:         2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelayMs
;;		_IIC_Start
;;		_IIC_Stop
;;		_IIC_Wait_Ack
;;		_IIC_Send_Byte
;; This function uses a non-reentrant model
;;
psect	text128
	file	"i2c.c"
	line	88
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
	opt	stack 3
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	line	90
	movwf	(DelayUs@Time)
	
l1543:	
;i2c.c: 89: unsigned char a;
;i2c.c: 90: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l1547
	line	91
	
l455:	
	line	92
;i2c.c: 91: {
;i2c.c: 92: _nop();
	nop
	line	90
	
l1545:	
	incf	(DelayUs@a),f
	
l1547:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u61
	goto	u60
u61:
	goto	l455
u60:
	line	94
	
l457:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
;; =============== function _DelayUs ends ============

	signat	_DelayUs,4216
	global	_POWER_INITIAL
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 62 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          0
;;      Totals:         0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text129
	file	"i2c.c"
	line	62
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 6
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	63
	
l1511:	
;i2c.c: 63: OSCCON = 0X00|0X70|0X01;
	movlw	(071h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	67
	
l1513:	
;i2c.c: 67: INTCON = 0;
	clrf	(11)	;volatile
	line	68
	
l1515:	
;i2c.c: 68: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	69
;i2c.c: 69: TRISA = 0B11101011;
	movlw	(0EBh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	70
	
l1517:	
;i2c.c: 70: WPUA = 0B00000000;
	clrf	(149)^080h	;volatile
	line	73
	
l1519:	
;i2c.c: 73: OPTION = 0B00001000;
	movlw	(08h)
	movwf	(129)^080h	;volatile
	line	75
;i2c.c: 75: MSCKCON = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(27)	;volatile
	line	80
	
l451:	
	return
	opt stack 0
GLOBAL	__end_of_POWER_INITIAL
	__end_of_POWER_INITIAL:
;; =============== function _POWER_INITIAL ends ============

	signat	_POWER_INITIAL,88
	global	_ISR
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _ISR *****************
;; Defined at:
;;		line 391 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          2
;;      Totals:         2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text130
	file	"i2c.c"
	line	391
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 3
; Regs used in _ISR: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text130
	line	394
	
i1l1521:	
;i2c.c: 394: if(T0IE && T0IF)
	btfss	(93/8),(93)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1531
u1_20:
	
i1l1523:	
	btfss	(90/8),(90)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1531
u2_20:
	line	396
	
i1l1525:	
;i2c.c: 395: {
;i2c.c: 396: TMR0 = 49;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	398
	
i1l1527:	
;i2c.c: 398: T0IF = 0;
	bcf	(90/8),(90)&7
	line	399
	
i1l1529:	
;i2c.c: 399: T0IE = 0;
	bcf	(93/8),(93)&7
	line	403
	
i1l1531:	
;i2c.c: 400: }
;i2c.c: 403: if(PAIE && PAIF)
	btfss	(91/8),(91)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l548
u3_20:
	
i1l1533:	
	btfss	(88/8),(88)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l548
u4_20:
	line	405
	
i1l1535:	
;i2c.c: 404: {
;i2c.c: 405: ReadAPin = PORTA;
	bcf	status, 5	;RP0=0, select bank0
	movf	(5),w	;volatile
	line	406
	
i1l1537:	
;i2c.c: 406: PAIF = 0;
	bcf	(88/8),(88)&7
	line	407
	
i1l1539:	
;i2c.c: 407: if(RA1 == 0)
	btfsc	(41/8),(41)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l548
u5_20:
	line	409
	
i1l1541:	
;i2c.c: 408: {
;i2c.c: 409: PAIE = 0;
	bcf	(91/8),(91)&7
	line	410
;i2c.c: 411: RXFLAG = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1202/8)^080h,(1202)&7
	line	414
	
i1l548:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
