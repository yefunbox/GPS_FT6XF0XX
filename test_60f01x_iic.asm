//Deviec:FT60F01X
//-----------------------Variable---------------------------------
		_par1		EQU		37EDE8H
		_par2		EQU		37EDE8H
		_par3		EQU		37EDE8H
		_par4		EQU		37EDE8H
		_par5		EQU		37EDE8H
//-----------------------Variable END---------------------------------
		ORG		0000H
		LJUMP 	2FFH 			//0000 	3AFF
		LDWI 	0H 			//0001 	2A00
		STR 	PCLATH 			//0002 	018A
		LDR 	FSR,0 			//0003 	0804
		INCR	FSR,1 			//0004 	0984
		ADDWR 	PCL,1 			//0005 	0B82
		RETW 	0H 			//0006 	2100
		RETW 	B5H 			//0007 	21B5
		ORG		0008H
		RETW 	62H 			//0008 	2162
		RETW 	6H 			//0009 	2106
		RETW 	23H 			//000A 	2123
		RETW 	28H 			//000B 	2128
		RETW 	0H 			//000C 	2100
		RETW 	2H 			//000D 	2102
		RETW 	0H 			//000E 	2100
		RETW 	4CH 			//000F 	214C
		ORG		0010H
		RETW 	66H 			//0010 	2166
		RETW 	40H 			//0011 	2140
		RETW 	0H 			//0012 	2100
		RETW 	0H 			//0013 	2100
		RETW 	0H 			//0014 	2100
		RETW 	0H 			//0015 	2100
		RETW 	0H 			//0016 	2100
		RETW 	3H 			//0017 	2103
		ORG		0018H
		RETW 	20H 			//0018 	2120
		RETW 	6H 			//0019 	2106
		RETW 	0H 			//001A 	2100
		RETW 	0H 			//001B 	2100
		RETW 	0H 			//001C 	2100
		RETW 	0H 			//001D 	2100
		RETW 	0H 			//001E 	2100
		RETW 	4BH 			//001F 	214B
		ORG		0020H
		RETW 	7H 			//0020 	2107
		RETW 	0H 			//0021 	2100
		RETW 	0H 			//0022 	2100
		RETW 	0H 			//0023 	2100
		RETW 	0H 			//0024 	2100
		RETW 	0H 			//0025 	2100
		RETW 	0H 			//0026 	2100
		RETW 	0H 			//0027 	2100
		ORG		0028H
		RETW 	1H 			//0028 	2101
		RETW 	0H 			//0029 	2100
		RETW 	0H 			//002A 	2100
		RETW 	2CH 			//002B 	212C
		RETW 	1H 			//002C 	2101
		RETW 	0H 			//002D 	2100
		RETW 	0H 			//002E 	2100
		RETW 	0H 			//002F 	2100
		ORG		0030H
		RETW 	0H 			//0030 	2100
		RETW 	0H 			//0031 	2100
		RETW 	0H 			//0032 	2100
		RETW 	0H 			//0033 	2100
		RETW 	0H 			//0034 	2100
		RETW 	EEH 			//0035 	21EE
		RETW 	44H 			//0036 	2144
		RETW 	B5H 			//0037 	21B5
		ORG		0038H
		RETW 	62H 			//0038 	2162
		RETW 	6H 			//0039 	2106
		RETW 	24H 			//003A 	2124
		RETW 	24H 			//003B 	2124
		RETW 	0H 			//003C 	2100
		RETW 	FFH 			//003D 	21FF
		RETW 	FFH 			//003E 	21FF
		RETW 	0H 			//003F 	2100
		ORG		0040H
		RETW 	3H 			//0040 	2103
		RETW 	0H 			//0041 	2100
		RETW 	0H 			//0042 	2100
		RETW 	0H 			//0043 	2100
		RETW 	0H 			//0044 	2100
		RETW 	10H 			//0045 	2110
		RETW 	27H 			//0046 	2127
		RETW 	0H 			//0047 	2100
		ORG		0048H
		RETW 	0H 			//0048 	2100
		RETW 	0H 			//0049 	2100
		RETW 	0H 			//004A 	2100
		RETW 	5EH 			//004B 	215E
		RETW 	1H 			//004C 	2101
		RETW 	5EH 			//004D 	215E
		RETW 	1H 			//004E 	2101
		RETW 	90H 			//004F 	2190
		ORG		0050H
		RETW 	1H 			//0050 	2101
		RETW 	5EH 			//0051 	215E
		RETW 	1H 			//0052 	2101
		RETW 	64H 			//0053 	2164
		RETW 	3CH 			//0054 	213C
		RETW 	0H 			//0055 	2100
		RETW 	0H 			//0056 	2100
		RETW 	0H 			//0057 	2100
		ORG		0058H
		RETW 	0H 			//0058 	2100
		RETW 	AH 			//0059 	210A
		RETW 	0H 			//005A 	2100
		RETW 	0H 			//005B 	2100
		RETW 	0H 			//005C 	2100
		RETW 	0H 			//005D 	2100
		RETW 	0H 			//005E 	2100
		RETW 	0H 			//005F 	2100
		ORG		0060H
		RETW 	0H 			//0060 	2100
		RETW 	DEH 			//0061 	21DE
		RETW 	45H 			//0062 	2145
		RETW 	B5H 			//0063 	21B5
		RETW 	62H 			//0064 	2162
		RETW 	6H 			//0065 	2106
		RETW 	0H 			//0066 	2100
		RETW 	14H 			//0067 	2114
		ORG		0068H
		RETW 	0H 			//0068 	2100
		RETW 	1H 			//0069 	2101
		RETW 	0H 			//006A 	2100
		RETW 	0H 			//006B 	2100
		RETW 	0H 			//006C 	2100
		RETW 	D0H 			//006D 	21D0
		RETW 	8H 			//006E 	2108
		RETW 	0H 			//006F 	2100
		ORG		0070H
		RETW 	0H 			//0070 	2100
		RETW 	0H 			//0071 	2100
		RETW 	96H 			//0072 	2196
		RETW 	0H 			//0073 	2100
		RETW 	0H 			//0074 	2100
		RETW 	7H 			//0075 	2107
		RETW 	0H 			//0076 	2100
		RETW 	3H 			//0077 	2103
		ORG		0078H
		RETW 	0H 			//0078 	2100
		RETW 	0H 			//0079 	2100
		RETW 	0H 			//007A 	2100
		RETW 	0H 			//007B 	2100
		RETW 	0H 			//007C 	2100
		RETW 	93H 			//007D 	2193
		RETW 	90H 			//007E 	2190
		RETW 	B5H 			//007F 	21B5
		ORG		0080H
		RETW 	62H 			//0080 	2162
		RETW 	6H 			//0081 	2106
		RETW 	8H 			//0082 	2108
		RETW 	6H 			//0083 	2106
		RETW 	0H 			//0084 	2100
		RETW 	64H 			//0085 	2164
		RETW 	0H 			//0086 	2100
		RETW 	1H 			//0087 	2101
		ORG		0088H
		RETW 	0H 			//0088 	2100
		RETW 	1H 			//0089 	2101
		RETW 	0H 			//008A 	2100
		RETW 	7AH 			//008B 	217A
		RETW 	12H 			//008C 	2112
		RETW 	B5H 			//008D 	21B5
		RETW 	62H 			//008E 	2162
		RETW 	9H 			//008F 	2109
		ORG		0090H
		RETW 	14H 			//0090 	2114
		RETW 	4H 			//0091 	2104
		RETW 	0H 			//0092 	2100
		RETW 	0H 			//0093 	2100
		RETW 	0H 			//0094 	2100
		RETW 	0H 			//0095 	2100
		RETW 	0H 			//0096 	2100
		RETW 	21H 			//0097 	2121
		ORG		0098H
		RETW 	ECH 			//0098 	21EC
		ORG		02FFH
		CLRR 	STATUS 			//02FF 	0103
		LJUMP 	3BEH 			//0300 	3BBE
		STR 	40H 			//0301 	01C0

		//;TEST_60F01x_IIC.c: 81: unsigned char a;
		//;TEST_60F01x_IIC.c: 82: for(a=0;a<Time;a++)
		CLRR 	41H 			//0302 	0141
		LDR 	40H,0 			//0303 	0840
		SUBWR 	41H,0 			//0304 	0C41
		BTSC 	STATUS,0 		//0305 	1403
		RET		 					//0306 	0004
		ORG		0307H

		//;TEST_60F01x_IIC.c: 83: {
		//;TEST_60F01x_IIC.c: 84: _nop();
		NOP		 					//0307 	0000
		INCR	41H,1 			//0308 	09C1
		LJUMP 	303H 			//0309 	3B03
		STR 	48H 			//030A 	01C8

		//;TEST_60F01x_IIC.c: 124: unsigned char a;
		//;TEST_60F01x_IIC.c: 125: for(a=0;a<Time;a++)
		CLRR 	49H 			//030B 	0149
		LDR 	48H,0 			//030C 	0848
		SUBWR 	49H,0 			//030D 	0C49
		BTSC 	STATUS,0 		//030E 	1403
		ORG		030FH
		RET		 					//030F 	0004

		//;TEST_60F01x_IIC.c: 126: {
		//;TEST_60F01x_IIC.c: 127: DelayS(60);
		LDWI 	3CH 			//0310 	2A3C
		LCALL 	351H 			//0311 	3351
		INCR	49H,1 			//0312 	09C9
		LJUMP 	30CH 			//0313 	3B0C

		//;TEST_60F01x_IIC.c: 55: OSCCON = 0X00|0X70|0X01;
		LDWI 	71H 			//0314 	2A71
		BSR 	STATUS,5 		//0315 	1A83
		STR 	FH 			//0316 	018F
		ORG		0317H

		//;TEST_60F01x_IIC.c: 59: INTCON = 0;
		CLRR 	INTCON 			//0317 	010B

		//;TEST_60F01x_IIC.c: 60: PORTA = 0B00000000;
		BCR 	STATUS,5 		//0318 	1283
		CLRR 	5H 			//0319 	0105

		//;TEST_60F01x_IIC.c: 61: TRISA = 0B11101011;
		LDWI 	EBH 			//031A 	2AEB
		BSR 	STATUS,5 		//031B 	1A83
		STR 	5H 			//031C 	0185

		//;TEST_60F01x_IIC.c: 62: WPUA = 0B00000000;
		CLRR 	15H 			//031D 	0115

		//;TEST_60F01x_IIC.c: 65: OPTION = 0B00001000;
		LDWI 	8H 			//031E 	2A08
		ORG		031FH
		STR 	1H 			//031F 	0181

		//;TEST_60F01x_IIC.c: 67: MSCKCON = 0B00000000;
		BCR 	STATUS,5 		//0320 	1283
		CLRR 	1BH 			//0321 	011B
		RET		 					//0322 	0004
		LDWI 	AH 			//0323 	2A0A

		//;TEST_60F01x_IIC.c: 138: TRISA2 =0;
		BSR 	STATUS,5 		//0324 	1A83
		BCR 	5H,2 			//0325 	1105

		//;TEST_60F01x_IIC.c: 139: RA2=1;
		BCR 	STATUS,5 		//0326 	1283
		ORG		0327H
		BSR 	5H,2 			//0327 	1905

		//;TEST_60F01x_IIC.c: 140: RA4=1;
		BSR 	5H,4 			//0328 	1A05

		//;TEST_60F01x_IIC.c: 141: DelayUs(10);
		LCALL 	301H 			//0329 	3301
		LDWI 	AH 			//032A 	2A0A

		//;TEST_60F01x_IIC.c: 142: RA2=0;
		BCR 	STATUS,5 		//032B 	1283
		BCR 	5H,2 			//032C 	1105

		//;TEST_60F01x_IIC.c: 143: DelayUs(10);
		LCALL 	301H 			//032D 	3301
		LDWI 	AH 			//032E 	2A0A
		ORG		032FH

		//;TEST_60F01x_IIC.c: 144: RA4=0;
		BCR 	STATUS,5 		//032F 	1283
		BCR 	5H,4 			//0330 	1205

		//;TEST_60F01x_IIC.c: 145: DelayUs(10);
		LJUMP 	301H 			//0331 	3B01
		LDWI 	AH 			//0332 	2A0A

		//;TEST_60F01x_IIC.c: 155: TRISA2 =0;
		BSR 	STATUS,5 		//0333 	1A83
		BCR 	5H,2 			//0334 	1105

		//;TEST_60F01x_IIC.c: 156: RA4=0;
		BCR 	STATUS,5 		//0335 	1283
		BCR 	5H,4 			//0336 	1205
		ORG		0337H

		//;TEST_60F01x_IIC.c: 157: RA2=0;
		BCR 	5H,2 			//0337 	1105

		//;TEST_60F01x_IIC.c: 158: DelayUs(10);
		LCALL 	301H 			//0338 	3301
		LDWI 	AH 			//0339 	2A0A

		//;TEST_60F01x_IIC.c: 159: RA4=1;
		BCR 	STATUS,5 		//033A 	1283
		BSR 	5H,4 			//033B 	1A05

		//;TEST_60F01x_IIC.c: 160: DelayUs(10);
		LCALL 	301H 			//033C 	3301
		LDWI 	AH 			//033D 	2A0A

		//;TEST_60F01x_IIC.c: 161: RA2=1;
		BCR 	STATUS,5 		//033E 	1283
		ORG		033FH
		BSR 	5H,2 			//033F 	1905

		//;TEST_60F01x_IIC.c: 162: DelayUs(10);
		LJUMP 	301H 			//0340 	3B01
		STR 	42H 			//0341 	01C2

		//;TEST_60F01x_IIC.c: 95: unsigned char a,b;
		//;TEST_60F01x_IIC.c: 96: for(a=0;a<Time;a++)
		CLRR 	43H 			//0342 	0143
		LDR 	42H,0 			//0343 	0842
		SUBWR 	43H,0 			//0344 	0C43
		BTSC 	STATUS,0 		//0345 	1403
		RET		 					//0346 	0004
		ORG		0347H

		//;TEST_60F01x_IIC.c: 97: {
		//;TEST_60F01x_IIC.c: 98: for(b=0;b<5;b++)
		CLRR 	44H 			//0347 	0144

		//;TEST_60F01x_IIC.c: 99: {
		//;TEST_60F01x_IIC.c: 100: DelayUs(98);
		LDWI 	62H 			//0348 	2A62
		LCALL 	301H 			//0349 	3301
		LDWI 	5H 			//034A 	2A05
		INCR	44H,1 			//034B 	09C4
		SUBWR 	44H,0 			//034C 	0C44
		BTSS 	STATUS,0 		//034D 	1C03
		LJUMP 	348H 			//034E 	3B48
		ORG		034FH
		INCR	43H,1 			//034F 	09C3
		LJUMP 	343H 			//0350 	3B43
		STR 	45H 			//0351 	01C5

		//;TEST_60F01x_IIC.c: 112: unsigned char a,b;
		//;TEST_60F01x_IIC.c: 113: for(a=0;a<Time;a++)
		CLRR 	46H 			//0352 	0146
		LDR 	45H,0 			//0353 	0845
		SUBWR 	46H,0 			//0354 	0C46
		BTSC 	STATUS,0 		//0355 	1403
		RET		 					//0356 	0004
		ORG		0357H

		//;TEST_60F01x_IIC.c: 114: {
		//;TEST_60F01x_IIC.c: 115: for(b=0;b<10;b++)
		CLRR 	47H 			//0357 	0147

		//;TEST_60F01x_IIC.c: 116: {
		//;TEST_60F01x_IIC.c: 117: DelayMs(100);
		LDWI 	64H 			//0358 	2A64
		LCALL 	341H 			//0359 	3341
		LDWI 	AH 			//035A 	2A0A
		INCR	47H,1 			//035B 	09C7
		SUBWR 	47H,0 			//035C 	0C47
		BTSS 	STATUS,0 		//035D 	1C03
		LJUMP 	358H 			//035E 	3B58
		ORG		035FH
		INCR	46H,1 			//035F 	09C6
		LJUMP 	353H 			//0360 	3B53
		LDWI 	5H 			//0361 	2A05

		//;TEST_60F01x_IIC.c: 173: unsigned char ucErrTime=0;
		CLRR 	42H 			//0362 	0142

		//;TEST_60F01x_IIC.c: 174: TRISA2 =1;
		BSR 	STATUS,5 		//0363 	1A83
		BSR 	5H,2 			//0364 	1905

		//;TEST_60F01x_IIC.c: 175: RA2=1;
		BCR 	STATUS,5 		//0365 	1283
		BSR 	5H,2 			//0366 	1905
		ORG		0367H

		//;TEST_60F01x_IIC.c: 176: DelayUs(5);
		LCALL 	301H 			//0367 	3301
		LDWI 	5H 			//0368 	2A05

		//;TEST_60F01x_IIC.c: 177: RA4=1;
		BCR 	STATUS,5 		//0369 	1283
		BSR 	5H,4 			//036A 	1A05

		//;TEST_60F01x_IIC.c: 178: DelayUs(5);
		LCALL 	301H 			//036B 	3301

		//;TEST_60F01x_IIC.c: 179: while(RA2)
		BCR 	STATUS,5 		//036C 	1283
		BTSS 	5H,2 			//036D 	1D05
		LJUMP 	376H 			//036E 	3B76
		ORG		036FH
		LDWI 	FBH 			//036F 	2AFB

		//;TEST_60F01x_IIC.c: 180: {
		//;TEST_60F01x_IIC.c: 181: ucErrTime++;
		INCR	42H,1 			//0370 	09C2

		//;TEST_60F01x_IIC.c: 182: if(ucErrTime>250)
		SUBWR 	42H,0 			//0371 	0C42
		BTSS 	STATUS,0 		//0372 	1C03
		LJUMP 	36CH 			//0373 	3B6C

		//;TEST_60F01x_IIC.c: 183: {
		//;TEST_60F01x_IIC.c: 184: IIC_Stop();
		LCALL 	332H 			//0374 	3332

		//;TEST_60F01x_IIC.c: 185: return 1;
		RETW 	1H 			//0375 	2101
		LDWI 	0H 			//0376 	2A00
		ORG		0377H

		//;TEST_60F01x_IIC.c: 186: }
		//;TEST_60F01x_IIC.c: 187: }
		//;TEST_60F01x_IIC.c: 188: RA4=0;
		BCR 	5H,4 			//0377 	1205

		//;TEST_60F01x_IIC.c: 189: return 0;
		RET		 					//0378 	0004
		STR 	48H 			//0379 	01C8

		//;TEST_60F01x_IIC.c: 358: unsigned char i;
		//;TEST_60F01x_IIC.c: 359: IIC_Start();
		LCALL 	323H 			//037A 	3323

		//;TEST_60F01x_IIC.c: 360: IIC_Send_Byte(chip_addr);
		LDR 	48H,0 			//037B 	0848
		LCALL 	397H 			//037C 	3397

		//;TEST_60F01x_IIC.c: 362: if(IIC_Wait_Ack()==1){
		LCALL 	361H 			//037D 	3361
		XORWI 	1H 			//037E 	2601
		ORG		037FH
		BTSC 	STATUS,2 		//037F 	1503
		RET		 					//0380 	0004

		//;TEST_60F01x_IIC.c: 365: }
		//;TEST_60F01x_IIC.c: 367: for(i=0; i<Number; i++) {
		CLRR 	49H 			//0381 	0149
		LDR 	47H,0 			//0382 	0847
		XORWI 	80H 			//0383 	2680
		SUBWI 	80H 			//0384 	2880
		BTSS 	STATUS,2 		//0385 	1D03
		LJUMP 	389H 			//0386 	3B89
		ORG		0387H
		LDR 	46H,0 			//0387 	0846
		SUBWR 	49H,0 			//0388 	0C49
		BTSC 	STATUS,0 		//0389 	1403
		LJUMP 	396H 			//038A 	3B96

		//;TEST_60F01x_IIC.c: 368: IIC_Send_Byte(*buffer);
		LDR 	45H,0 			//038B 	0845
		STR 	FSR 			//038C 	0184
		LCALL 	1H 			//038D 	3001
		LCALL 	397H 			//038E 	3397
		ORG		038FH

		//;TEST_60F01x_IIC.c: 369: if(IIC_Wait_Ack()==1) {
		LCALL 	361H 			//038F 	3361
		XORWI 	1H 			//0390 	2601
		BTSC 	STATUS,2 		//0391 	1503
		RET		 					//0392 	0004

		//;TEST_60F01x_IIC.c: 372: }
		//;TEST_60F01x_IIC.c: 373: buffer++;
		INCR	45H,1 			//0393 	09C5
		INCR	49H,1 			//0394 	09C9
		LJUMP 	382H 			//0395 	3B82

		//;TEST_60F01x_IIC.c: 374: }
		//;TEST_60F01x_IIC.c: 375: IIC_Stop();
		LJUMP 	332H 			//0396 	3B32
		ORG		0397H
		STR 	43H 			//0397 	01C3

		//;TEST_60F01x_IIC.c: 231: unsigned char t;
		//;TEST_60F01x_IIC.c: 232: TRISA2 =0;
		BSR 	STATUS,5 		//0398 	1A83
		BCR 	5H,2 			//0399 	1105

		//;TEST_60F01x_IIC.c: 233: RA4=0;
		BCR 	STATUS,5 		//039A 	1283
		BCR 	5H,4 			//039B 	1205

		//;TEST_60F01x_IIC.c: 234: for(t=0;t<8;t++)
		CLRR 	44H 			//039C 	0144

		//;TEST_60F01x_IIC.c: 235: {
		//;TEST_60F01x_IIC.c: 236: if((txd&0x80)>>7)
		LDR 	43H,0 			//039D 	0843
		STR 	42H 			//039E 	01C2
		ORG		039FH
		LDWI 	7H 			//039F 	2A07
		BCR 	STATUS,0 		//03A0 	1003
		RRR	42H,1 			//03A1 	06C2
		ADDWI 	FFH 			//03A2 	27FF
		BTSS 	STATUS,2 		//03A3 	1D03
		LJUMP 	3A0H 			//03A4 	3BA0
		BTSS 	42H,0 			//03A5 	1C42
		LJUMP 	3AAH 			//03A6 	3BAA
		ORG		03A7H

		//;TEST_60F01x_IIC.c: 237: RA2=1;
		BCR 	STATUS,5 		//03A7 	1283
		BSR 	5H,2 			//03A8 	1905
		LJUMP 	3ACH 			//03A9 	3BAC

		//;TEST_60F01x_IIC.c: 238: else
		//;TEST_60F01x_IIC.c: 239: RA2=0;
		BCR 	STATUS,5 		//03AA 	1283
		BCR 	5H,2 			//03AB 	1105
		LDWI 	5H 			//03AC 	2A05

		//;TEST_60F01x_IIC.c: 240: txd<<=1;
		BCR 	STATUS,0 		//03AD 	1003
		RLR 	43H,1 			//03AE 	05C3
		ORG		03AFH

		//;TEST_60F01x_IIC.c: 241: DelayUs(5);
		LCALL 	301H 			//03AF 	3301
		LDWI 	5H 			//03B0 	2A05

		//;TEST_60F01x_IIC.c: 242: RA4=1;
		BCR 	STATUS,5 		//03B1 	1283
		BSR 	5H,4 			//03B2 	1A05

		//;TEST_60F01x_IIC.c: 243: DelayUs(5);
		LCALL 	301H 			//03B3 	3301
		LDWI 	5H 			//03B4 	2A05

		//;TEST_60F01x_IIC.c: 244: RA4=0;
		BCR 	STATUS,5 		//03B5 	1283
		BCR 	5H,4 			//03B6 	1205
		ORG		03B7H

		//;TEST_60F01x_IIC.c: 245: DelayUs(5);
		LCALL 	301H 			//03B7 	3301
		LDWI 	8H 			//03B8 	2A08
		INCR	44H,1 			//03B9 	09C4
		SUBWR 	44H,0 			//03BA 	0C44
		BTSC 	STATUS,0 		//03BB 	1403
		RET		 					//03BC 	0004
		LJUMP 	39DH 			//03BD 	3B9D

		//;TEST_60F01x_IIC.c: 386: char i;
		//;TEST_60F01x_IIC.c: 387: POWER_INITIAL();
		LCALL 	314H 			//03BE 	3314
		ORG		03BFH

		//;TEST_60F01x_IIC.c: 388: DelayS(1);
		LDWI 	1H 			//03BF 	2A01
		LCALL 	351H 			//03C0 	3351

		//;TEST_60F01x_IIC.c: 389: I2C_SendString(0x84,par1,sizeof(par1));
		LDWI 	31H 			//03C1 	2A31
		STR 	45H 			//03C2 	01C5
		LDWI 	2CH 			//03C3 	2A2C
		STR 	46H 			//03C4 	01C6
		LDWI 	84H 			//03C5 	2A84
		CLRR 	47H 			//03C6 	0147
		ORG		03C7H
		LCALL 	379H 			//03C7 	3379

		//;TEST_60F01x_IIC.c: 390: DelayMs(100);
		LDWI 	64H 			//03C8 	2A64
		LCALL 	341H 			//03C9 	3341

		//;TEST_60F01x_IIC.c: 391: I2C_SendString(0x84,par2,sizeof(par2));
		LDWI 	1H 			//03CA 	2A01
		STR 	45H 			//03CB 	01C5
		LDWI 	30H 			//03CC 	2A30
		STR 	46H 			//03CD 	01C6
		LDWI 	84H 			//03CE 	2A84
		ORG		03CFH
		CLRR 	47H 			//03CF 	0147
		LCALL 	379H 			//03D0 	3379

		//;TEST_60F01x_IIC.c: 392: DelayMs(100);
		LDWI 	64H 			//03D1 	2A64
		LCALL 	341H 			//03D2 	3341

		//;TEST_60F01x_IIC.c: 393: I2C_SendString(0x84,par3,sizeof(par3));
		LDWI 	79H 			//03D3 	2A79
		STR 	45H 			//03D4 	01C5
		LDWI 	EH 			//03D5 	2A0E
		STR 	46H 			//03D6 	01C6
		ORG		03D7H
		LDWI 	84H 			//03D7 	2A84
		CLRR 	47H 			//03D8 	0147
		LCALL 	379H 			//03D9 	3379

		//;TEST_60F01x_IIC.c: 394: DelayMs(100);
		LDWI 	64H 			//03DA 	2A64
		LCALL 	341H 			//03DB 	3341

		//;TEST_60F01x_IIC.c: 395: I2C_SendString(0x84,par4,sizeof(par4));
		LDWI 	5DH 			//03DC 	2A5D
		STR 	45H 			//03DD 	01C5
		LDWI 	1CH 			//03DE 	2A1C
		ORG		03DFH
		STR 	46H 			//03DF 	01C6
		LDWI 	84H 			//03E0 	2A84
		CLRR 	47H 			//03E1 	0147
		LCALL 	379H 			//03E2 	3379

		//;TEST_60F01x_IIC.c: 396: DelayMs(100);
		LDWI 	64H 			//03E3 	2A64
		LCALL 	341H 			//03E4 	3341

		//;TEST_60F01x_IIC.c: 397: for(i = 0;i < 30;i++) {
		CLRR 	4AH 			//03E5 	014A

		//;TEST_60F01x_IIC.c: 398: I2C_SendString(0x84,par5,sizeof(par5));
		LDWI 	87H 			//03E6 	2A87
		ORG		03E7H
		STR 	45H 			//03E7 	01C5
		LDWI 	CH 			//03E8 	2A0C
		STR 	46H 			//03E9 	01C6
		LDWI 	84H 			//03EA 	2A84
		CLRR 	47H 			//03EB 	0147
		LCALL 	379H 			//03EC 	3379

		//;TEST_60F01x_IIC.c: 399: DelayS(10);
		LDWI 	AH 			//03ED 	2A0A
		LCALL 	351H 			//03EE 	3351
		ORG		03EFH
		LDWI 	1EH 			//03EF 	2A1E
		INCR	4AH,1 			//03F0 	09CA
		SUBWR 	4AH,0 			//03F1 	0C4A
		BTSS 	STATUS,0 		//03F2 	1C03
		LJUMP 	3E6H 			//03F3 	3BE6

		//;TEST_60F01x_IIC.c: 402: I2C_SendString(0x84,par5,sizeof(par5));
		LDWI 	87H 			//03F4 	2A87
		STR 	45H 			//03F5 	01C5
		LDWI 	CH 			//03F6 	2A0C
		ORG		03F7H
		STR 	46H 			//03F7 	01C6
		LDWI 	84H 			//03F8 	2A84
		CLRR 	47H 			//03F9 	0147
		LCALL 	379H 			//03FA 	3379

		//;TEST_60F01x_IIC.c: 403: DelayM(5);
		LDWI 	5H 			//03FB 	2A05
		LCALL 	30AH 			//03FC 	330A
		LJUMP 	3F4H 			//03FD 	3BF4

		//;TEST_60F01x_IIC.c: 409: {
		//;TEST_60F01x_IIC.c: 410: _nop();
		NOP		 					//03FE 	0000
		ORG		03FFH
		LJUMP 	3FEH 			//03FF 	3BFE
			END
