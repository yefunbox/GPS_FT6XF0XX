//Deviec:FT60F01X
//-----------------------Variable---------------------------------
		_par1		EQU		39EFF8H
		_par2		EQU		39EFF8H
		_par3		EQU		39EFF8H
		_par4		EQU		39EFF8H
		_par5		EQU		39EFF8H
		_par6		EQU		39EFF8H
//-----------------------Variable END---------------------------------
		ORG		0000H
		LJUMP 	2F6H 			//0000 	3AF6
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
		RETW 	3EH 			//000A 	213E
		RETW 	3CH 			//000B 	213C
		RETW 	0H 			//000C 	2100
		RETW 	0H 			//000D 	2100
		RETW 	0H 			//000E 	2100
		RETW 	20H 			//000F 	2120
		ORG		0010H
		RETW 	7H 			//0010 	2107
		RETW 	0H 			//0011 	2100
		RETW 	8H 			//0012 	2108
		RETW 	10H 			//0013 	2110
		RETW 	0H 			//0014 	2100
		RETW 	1H 			//0015 	2101
		RETW 	0H 			//0016 	2100
		RETW 	1H 			//0017 	2101
		ORG		0018H
		RETW 	1H 			//0018 	2101
		RETW 	1H 			//0019 	2101
		RETW 	1H 			//001A 	2101
		RETW 	3H 			//001B 	2103
		RETW 	0H 			//001C 	2100
		RETW 	0H 			//001D 	2100
		RETW 	0H 			//001E 	2100
		RETW 	1H 			//001F 	2101
		ORG		0020H
		RETW 	1H 			//0020 	2101
		RETW 	2H 			//0021 	2102
		RETW 	4H 			//0022 	2104
		RETW 	8H 			//0023 	2108
		RETW 	0H 			//0024 	2100
		RETW 	0H 			//0025 	2100
		RETW 	0H 			//0026 	2100
		RETW 	1H 			//0027 	2101
		ORG		0028H
		RETW 	1H 			//0028 	2101
		RETW 	3H 			//0029 	2103
		RETW 	8H 			//002A 	2108
		RETW 	10H 			//002B 	2110
		RETW 	0H 			//002C 	2100
		RETW 	0H 			//002D 	2100
		RETW 	0H 			//002E 	2100
		RETW 	1H 			//002F 	2101
		ORG		0030H
		RETW 	1H 			//0030 	2101
		RETW 	4H 			//0031 	2104
		RETW 	0H 			//0032 	2100
		RETW 	8H 			//0033 	2108
		RETW 	0H 			//0034 	2100
		RETW 	0H 			//0035 	2100
		RETW 	0H 			//0036 	2100
		RETW 	1H 			//0037 	2101
		ORG		0038H
		RETW 	1H 			//0038 	2101
		RETW 	5H 			//0039 	2105
		RETW 	0H 			//003A 	2100
		RETW 	3H 			//003B 	2103
		RETW 	0H 			//003C 	2100
		RETW 	1H 			//003D 	2101
		RETW 	0H 			//003E 	2100
		RETW 	1H 			//003F 	2101
		ORG		0040H
		RETW 	1H 			//0040 	2101
		RETW 	6H 			//0041 	2106
		RETW 	8H 			//0042 	2108
		RETW 	EH 			//0043 	210E
		RETW 	0H 			//0044 	2100
		RETW 	1H 			//0045 	2101
		RETW 	0H 			//0046 	2100
		RETW 	1H 			//0047 	2101
		ORG		0048H
		RETW 	1H 			//0048 	2101
		RETW 	2EH 			//0049 	212E
		RETW 	5DH 			//004A 	215D
		RETW 	B5H 			//004B 	21B5
		RETW 	62H 			//004C 	2162
		RETW 	6H 			//004D 	2106
		RETW 	23H 			//004E 	2123
		RETW 	28H 			//004F 	2128
		ORG		0050H
		RETW 	0H 			//0050 	2100
		RETW 	2H 			//0051 	2102
		RETW 	0H 			//0052 	2100
		RETW 	4CH 			//0053 	214C
		RETW 	66H 			//0054 	2166
		RETW 	40H 			//0055 	2140
		RETW 	0H 			//0056 	2100
		RETW 	0H 			//0057 	2100
		ORG		0058H
		RETW 	0H 			//0058 	2100
		RETW 	0H 			//0059 	2100
		RETW 	0H 			//005A 	2100
		RETW 	3H 			//005B 	2103
		RETW 	20H 			//005C 	2120
		RETW 	6H 			//005D 	2106
		RETW 	0H 			//005E 	2100
		RETW 	0H 			//005F 	2100
		ORG		0060H
		RETW 	0H 			//0060 	2100
		RETW 	0H 			//0061 	2100
		RETW 	0H 			//0062 	2100
		RETW 	4BH 			//0063 	214B
		RETW 	7H 			//0064 	2107
		RETW 	0H 			//0065 	2100
		RETW 	0H 			//0066 	2100
		RETW 	0H 			//0067 	2100
		ORG		0068H
		RETW 	0H 			//0068 	2100
		RETW 	0H 			//0069 	2100
		RETW 	0H 			//006A 	2100
		RETW 	0H 			//006B 	2100
		RETW 	1H 			//006C 	2101
		RETW 	0H 			//006D 	2100
		RETW 	0H 			//006E 	2100
		RETW 	2CH 			//006F 	212C
		ORG		0070H
		RETW 	1H 			//0070 	2101
		RETW 	0H 			//0071 	2100
		RETW 	0H 			//0072 	2100
		RETW 	0H 			//0073 	2100
		RETW 	0H 			//0074 	2100
		RETW 	0H 			//0075 	2100
		RETW 	0H 			//0076 	2100
		RETW 	0H 			//0077 	2100
		ORG		0078H
		RETW 	0H 			//0078 	2100
		RETW 	EEH 			//0079 	21EE
		RETW 	44H 			//007A 	2144
		RETW 	B5H 			//007B 	21B5
		RETW 	62H 			//007C 	2162
		RETW 	6H 			//007D 	2106
		RETW 	24H 			//007E 	2124
		RETW 	24H 			//007F 	2124
		ORG		0080H
		RETW 	0H 			//0080 	2100
		RETW 	FFH 			//0081 	21FF
		RETW 	FFH 			//0082 	21FF
		RETW 	0H 			//0083 	2100
		RETW 	3H 			//0084 	2103
		RETW 	0H 			//0085 	2100
		RETW 	0H 			//0086 	2100
		RETW 	0H 			//0087 	2100
		ORG		0088H
		RETW 	0H 			//0088 	2100
		RETW 	10H 			//0089 	2110
		RETW 	27H 			//008A 	2127
		RETW 	0H 			//008B 	2100
		RETW 	0H 			//008C 	2100
		RETW 	0H 			//008D 	2100
		RETW 	0H 			//008E 	2100
		RETW 	5EH 			//008F 	215E
		ORG		0090H
		RETW 	1H 			//0090 	2101
		RETW 	5EH 			//0091 	215E
		RETW 	1H 			//0092 	2101
		RETW 	90H 			//0093 	2190
		RETW 	1H 			//0094 	2101
		RETW 	5EH 			//0095 	215E
		RETW 	1H 			//0096 	2101
		RETW 	64H 			//0097 	2164
		ORG		0098H
		RETW 	3CH 			//0098 	213C
		RETW 	0H 			//0099 	2100
		RETW 	0H 			//009A 	2100
		RETW 	0H 			//009B 	2100
		RETW 	0H 			//009C 	2100
		RETW 	AH 			//009D 	210A
		RETW 	0H 			//009E 	2100
		RETW 	0H 			//009F 	2100
		ORG		00A0H
		RETW 	0H 			//00A0 	2100
		RETW 	0H 			//00A1 	2100
		RETW 	0H 			//00A2 	2100
		RETW 	0H 			//00A3 	2100
		RETW 	0H 			//00A4 	2100
		RETW 	DEH 			//00A5 	21DE
		RETW 	45H 			//00A6 	2145
		RETW 	B5H 			//00A7 	21B5
		ORG		00A8H
		RETW 	62H 			//00A8 	2162
		RETW 	6H 			//00A9 	2106
		RETW 	31H 			//00AA 	2131
		RETW 	20H 			//00AB 	2120
		RETW 	0H 			//00AC 	2100
		RETW 	0H 			//00AD 	2100
		RETW 	1H 			//00AE 	2101
		RETW 	0H 			//00AF 	2100
		ORG		00B0H
		RETW 	0H 			//00B0 	2100
		RETW 	32H 			//00B1 	2132
		RETW 	0H 			//00B2 	2100
		RETW 	0H 			//00B3 	2100
		RETW 	0H 			//00B4 	2100
		RETW 	40H 			//00B5 	2140
		RETW 	42H 			//00B6 	2142
		RETW 	FH 			//00B7 	210F
		ORG		00B8H
		RETW 	0H 			//00B8 	2100
		RETW 	40H 			//00B9 	2140
		RETW 	42H 			//00BA 	2142
		RETW 	FH 			//00BB 	210F
		RETW 	0H 			//00BC 	2100
		RETW 	0H 			//00BD 	2100
		RETW 	0H 			//00BE 	2100
		RETW 	0H 			//00BF 	2100
		ORG		00C0H
		RETW 	0H 			//00C0 	2100
		RETW 	A0H 			//00C1 	21A0
		RETW 	86H 			//00C2 	2186
		RETW 	1H 			//00C3 	2101
		RETW 	0H 			//00C4 	2100
		RETW 	0H 			//00C5 	2100
		RETW 	0H 			//00C6 	2100
		RETW 	0H 			//00C7 	2100
		ORG		00C8H
		RETW 	0H 			//00C8 	2100
		RETW 	F7H 			//00C9 	21F7
		RETW 	0H 			//00CA 	2100
		RETW 	0H 			//00CB 	2100
		RETW 	0H 			//00CC 	2100
		RETW 	CAH 			//00CD 	21CA
		RETW 	B6H 			//00CE 	21B6
		RETW 	B5H 			//00CF 	21B5
		ORG		00D0H
		RETW 	62H 			//00D0 	2162
		RETW 	6H 			//00D1 	2106
		RETW 	41H 			//00D2 	2141
		RETW 	CH 			//00D3 	210C
		RETW 	0H 			//00D4 	2100
		RETW 	0H 			//00D5 	2100
		RETW 	0H 			//00D6 	2100
		RETW 	3H 			//00D7 	2103
		ORG		00D8H
		RETW 	1FH 			//00D8 	211F
		RETW 	78H 			//00D9 	2178
		RETW 	B7H 			//00DA 	21B7
		RETW 	58H 			//00DB 	2158
		RETW 	B7H 			//00DC 	21B7
		RETW 	FFH 			//00DD 	21FF
		RETW 	76H 			//00DE 	2176
		RETW 	CFH 			//00DF 	21CF
		ORG		00E0H
		RETW 	FFH 			//00E0 	21FF
		RETW 	F6H 			//00E1 	21F6
		RETW 	6BH 			//00E2 	216B
		RETW 	B5H 			//00E3 	21B5
		RETW 	62H 			//00E4 	2162
		RETW 	9H 			//00E5 	2109
		RETW 	14H 			//00E6 	2114
		RETW 	4H 			//00E7 	2104
		ORG		00E8H
		RETW 	0H 			//00E8 	2100
		RETW 	0H 			//00E9 	2100
		RETW 	0H 			//00EA 	2100
		RETW 	0H 			//00EB 	2100
		RETW 	0H 			//00EC 	2100
		RETW 	21H 			//00ED 	2121
		RETW 	ECH 			//00EE 	21EC
		ORG		02F6H
		CLRR 	STATUS 			//02F6 	0103
		LJUMP 	3B5H 			//02F7 	3BB5
		STR 	40H 			//02F8 	01C0

		//;TEST_60F01x_IIC.c: 81: unsigned char a;
		//;TEST_60F01x_IIC.c: 82: for(a=0;a<Time;a++)
		CLRR 	41H 			//02F9 	0141
		LDR 	40H,0 			//02FA 	0840
		SUBWR 	41H,0 			//02FB 	0C41
		BTSC 	STATUS,0 		//02FC 	1403
		RET		 					//02FD 	0004
		ORG		02FEH

		//;TEST_60F01x_IIC.c: 83: {
		//;TEST_60F01x_IIC.c: 84: _nop();
		NOP		 					//02FE 	0000
		INCR	41H,1 			//02FF 	09C1
		LJUMP 	2FAH 			//0300 	3AFA
		STR 	48H 			//0301 	01C8

		//;TEST_60F01x_IIC.c: 124: unsigned char a;
		//;TEST_60F01x_IIC.c: 125: for(a=0;a<Time;a++)
		CLRR 	49H 			//0302 	0149
		LDR 	48H,0 			//0303 	0848
		SUBWR 	49H,0 			//0304 	0C49
		BTSC 	STATUS,0 		//0305 	1403
		ORG		0306H
		RET		 					//0306 	0004

		//;TEST_60F01x_IIC.c: 126: {
		//;TEST_60F01x_IIC.c: 127: DelayS(60);
		LDWI 	3CH 			//0307 	2A3C
		LCALL 	348H 			//0308 	3348
		INCR	49H,1 			//0309 	09C9
		LJUMP 	303H 			//030A 	3B03

		//;TEST_60F01x_IIC.c: 55: OSCCON = 0X00|0X70|0X01;
		LDWI 	71H 			//030B 	2A71
		BSR 	STATUS,5 		//030C 	1A83
		STR 	FH 			//030D 	018F
		ORG		030EH

		//;TEST_60F01x_IIC.c: 59: INTCON = 0;
		CLRR 	INTCON 			//030E 	010B

		//;TEST_60F01x_IIC.c: 60: PORTA = 0B00000000;
		BCR 	STATUS,5 		//030F 	1283
		CLRR 	5H 			//0310 	0105

		//;TEST_60F01x_IIC.c: 61: TRISA = 0B11101011;
		LDWI 	EBH 			//0311 	2AEB
		BSR 	STATUS,5 		//0312 	1A83
		STR 	5H 			//0313 	0185

		//;TEST_60F01x_IIC.c: 62: WPUA = 0B00000000;
		CLRR 	15H 			//0314 	0115

		//;TEST_60F01x_IIC.c: 65: OPTION = 0B00001000;
		LDWI 	8H 			//0315 	2A08
		ORG		0316H
		STR 	1H 			//0316 	0181

		//;TEST_60F01x_IIC.c: 67: MSCKCON = 0B00000000;
		BCR 	STATUS,5 		//0317 	1283
		CLRR 	1BH 			//0318 	011B
		RET		 					//0319 	0004
		LDWI 	AH 			//031A 	2A0A

		//;TEST_60F01x_IIC.c: 138: TRISA2 =0;
		BSR 	STATUS,5 		//031B 	1A83
		BCR 	5H,2 			//031C 	1105

		//;TEST_60F01x_IIC.c: 139: RA2=1;
		BCR 	STATUS,5 		//031D 	1283
		ORG		031EH
		BSR 	5H,2 			//031E 	1905

		//;TEST_60F01x_IIC.c: 140: RA4=1;
		BSR 	5H,4 			//031F 	1A05

		//;TEST_60F01x_IIC.c: 141: DelayUs(10);
		LCALL 	2F8H 			//0320 	32F8
		LDWI 	AH 			//0321 	2A0A

		//;TEST_60F01x_IIC.c: 142: RA2=0;
		BCR 	STATUS,5 		//0322 	1283
		BCR 	5H,2 			//0323 	1105

		//;TEST_60F01x_IIC.c: 143: DelayUs(10);
		LCALL 	2F8H 			//0324 	32F8
		LDWI 	AH 			//0325 	2A0A
		ORG		0326H

		//;TEST_60F01x_IIC.c: 144: RA4=0;
		BCR 	STATUS,5 		//0326 	1283
		BCR 	5H,4 			//0327 	1205

		//;TEST_60F01x_IIC.c: 145: DelayUs(10);
		LJUMP 	2F8H 			//0328 	3AF8
		LDWI 	AH 			//0329 	2A0A

		//;TEST_60F01x_IIC.c: 155: TRISA2 =0;
		BSR 	STATUS,5 		//032A 	1A83
		BCR 	5H,2 			//032B 	1105

		//;TEST_60F01x_IIC.c: 156: RA4=0;
		BCR 	STATUS,5 		//032C 	1283
		BCR 	5H,4 			//032D 	1205
		ORG		032EH

		//;TEST_60F01x_IIC.c: 157: RA2=0;
		BCR 	5H,2 			//032E 	1105

		//;TEST_60F01x_IIC.c: 158: DelayUs(10);
		LCALL 	2F8H 			//032F 	32F8
		LDWI 	AH 			//0330 	2A0A

		//;TEST_60F01x_IIC.c: 159: RA4=1;
		BCR 	STATUS,5 		//0331 	1283
		BSR 	5H,4 			//0332 	1A05

		//;TEST_60F01x_IIC.c: 160: DelayUs(10);
		LCALL 	2F8H 			//0333 	32F8
		LDWI 	AH 			//0334 	2A0A

		//;TEST_60F01x_IIC.c: 161: RA2=1;
		BCR 	STATUS,5 		//0335 	1283
		ORG		0336H
		BSR 	5H,2 			//0336 	1905

		//;TEST_60F01x_IIC.c: 162: DelayUs(10);
		LJUMP 	2F8H 			//0337 	3AF8
		STR 	42H 			//0338 	01C2

		//;TEST_60F01x_IIC.c: 95: unsigned char a,b;
		//;TEST_60F01x_IIC.c: 96: for(a=0;a<Time;a++)
		CLRR 	43H 			//0339 	0143
		LDR 	42H,0 			//033A 	0842
		SUBWR 	43H,0 			//033B 	0C43
		BTSC 	STATUS,0 		//033C 	1403
		RET		 					//033D 	0004
		ORG		033EH

		//;TEST_60F01x_IIC.c: 97: {
		//;TEST_60F01x_IIC.c: 98: for(b=0;b<5;b++)
		CLRR 	44H 			//033E 	0144

		//;TEST_60F01x_IIC.c: 99: {
		//;TEST_60F01x_IIC.c: 100: DelayUs(98);
		LDWI 	62H 			//033F 	2A62
		LCALL 	2F8H 			//0340 	32F8
		LDWI 	5H 			//0341 	2A05
		INCR	44H,1 			//0342 	09C4
		SUBWR 	44H,0 			//0343 	0C44
		BTSS 	STATUS,0 		//0344 	1C03
		LJUMP 	33FH 			//0345 	3B3F
		ORG		0346H
		INCR	43H,1 			//0346 	09C3
		LJUMP 	33AH 			//0347 	3B3A
		STR 	45H 			//0348 	01C5

		//;TEST_60F01x_IIC.c: 112: unsigned char a,b;
		//;TEST_60F01x_IIC.c: 113: for(a=0;a<Time;a++)
		CLRR 	46H 			//0349 	0146
		LDR 	45H,0 			//034A 	0845
		SUBWR 	46H,0 			//034B 	0C46
		BTSC 	STATUS,0 		//034C 	1403
		RET		 					//034D 	0004
		ORG		034EH

		//;TEST_60F01x_IIC.c: 114: {
		//;TEST_60F01x_IIC.c: 115: for(b=0;b<10;b++)
		CLRR 	47H 			//034E 	0147

		//;TEST_60F01x_IIC.c: 116: {
		//;TEST_60F01x_IIC.c: 117: DelayMs(100);
		LDWI 	64H 			//034F 	2A64
		LCALL 	338H 			//0350 	3338
		LDWI 	AH 			//0351 	2A0A
		INCR	47H,1 			//0352 	09C7
		SUBWR 	47H,0 			//0353 	0C47
		BTSS 	STATUS,0 		//0354 	1C03
		LJUMP 	34FH 			//0355 	3B4F
		ORG		0356H
		INCR	46H,1 			//0356 	09C6
		LJUMP 	34AH 			//0357 	3B4A
		LDWI 	5H 			//0358 	2A05

		//;TEST_60F01x_IIC.c: 173: unsigned char ucErrTime=0;
		CLRR 	42H 			//0359 	0142

		//;TEST_60F01x_IIC.c: 174: TRISA2 =1;
		BSR 	STATUS,5 		//035A 	1A83
		BSR 	5H,2 			//035B 	1905

		//;TEST_60F01x_IIC.c: 175: RA2=1;
		BCR 	STATUS,5 		//035C 	1283
		BSR 	5H,2 			//035D 	1905
		ORG		035EH

		//;TEST_60F01x_IIC.c: 176: DelayUs(5);
		LCALL 	2F8H 			//035E 	32F8
		LDWI 	5H 			//035F 	2A05

		//;TEST_60F01x_IIC.c: 177: RA4=1;
		BCR 	STATUS,5 		//0360 	1283
		BSR 	5H,4 			//0361 	1A05

		//;TEST_60F01x_IIC.c: 178: DelayUs(5);
		LCALL 	2F8H 			//0362 	32F8

		//;TEST_60F01x_IIC.c: 179: while(RA2)
		BCR 	STATUS,5 		//0363 	1283
		BTSS 	5H,2 			//0364 	1D05
		LJUMP 	36DH 			//0365 	3B6D
		ORG		0366H
		LDWI 	FBH 			//0366 	2AFB

		//;TEST_60F01x_IIC.c: 180: {
		//;TEST_60F01x_IIC.c: 181: ucErrTime++;
		INCR	42H,1 			//0367 	09C2

		//;TEST_60F01x_IIC.c: 182: if(ucErrTime>250)
		SUBWR 	42H,0 			//0368 	0C42
		BTSS 	STATUS,0 		//0369 	1C03
		LJUMP 	363H 			//036A 	3B63

		//;TEST_60F01x_IIC.c: 183: {
		//;TEST_60F01x_IIC.c: 184: IIC_Stop();
		LCALL 	329H 			//036B 	3329

		//;TEST_60F01x_IIC.c: 185: return 1;
		RETW 	1H 			//036C 	2101
		LDWI 	0H 			//036D 	2A00
		ORG		036EH

		//;TEST_60F01x_IIC.c: 186: }
		//;TEST_60F01x_IIC.c: 187: }
		//;TEST_60F01x_IIC.c: 188: RA4=0;
		BCR 	5H,4 			//036E 	1205

		//;TEST_60F01x_IIC.c: 189: return 0;
		RET		 					//036F 	0004
		STR 	48H 			//0370 	01C8

		//;TEST_60F01x_IIC.c: 396: unsigned char i;
		//;TEST_60F01x_IIC.c: 397: IIC_Start();
		LCALL 	31AH 			//0371 	331A

		//;TEST_60F01x_IIC.c: 398: IIC_Send_Byte(chip_addr);
		LDR 	48H,0 			//0372 	0848
		LCALL 	38EH 			//0373 	338E

		//;TEST_60F01x_IIC.c: 400: if(IIC_Wait_Ack()==1){
		LCALL 	358H 			//0374 	3358
		XORWI 	1H 			//0375 	2601
		ORG		0376H
		BTSC 	STATUS,2 		//0376 	1503
		RET		 					//0377 	0004

		//;TEST_60F01x_IIC.c: 403: }
		//;TEST_60F01x_IIC.c: 405: for(i=0; i<Number; i++) {
		CLRR 	49H 			//0378 	0149
		LDR 	47H,0 			//0379 	0847
		XORWI 	80H 			//037A 	2680
		SUBWI 	80H 			//037B 	2880
		BTSS 	STATUS,2 		//037C 	1D03
		LJUMP 	380H 			//037D 	3B80
		ORG		037EH
		LDR 	46H,0 			//037E 	0846
		SUBWR 	49H,0 			//037F 	0C49
		BTSC 	STATUS,0 		//0380 	1403
		LJUMP 	38DH 			//0381 	3B8D

		//;TEST_60F01x_IIC.c: 406: IIC_Send_Byte(*buffer);
		LDR 	45H,0 			//0382 	0845
		STR 	FSR 			//0383 	0184
		LCALL 	1H 			//0384 	3001
		LCALL 	38EH 			//0385 	338E
		ORG		0386H

		//;TEST_60F01x_IIC.c: 407: if(IIC_Wait_Ack()==1) {
		LCALL 	358H 			//0386 	3358
		XORWI 	1H 			//0387 	2601
		BTSC 	STATUS,2 		//0388 	1503
		RET		 					//0389 	0004

		//;TEST_60F01x_IIC.c: 410: }
		//;TEST_60F01x_IIC.c: 411: buffer++;
		INCR	45H,1 			//038A 	09C5
		INCR	49H,1 			//038B 	09C9
		LJUMP 	379H 			//038C 	3B79

		//;TEST_60F01x_IIC.c: 412: }
		//;TEST_60F01x_IIC.c: 413: IIC_Stop();
		LJUMP 	329H 			//038D 	3B29
		ORG		038EH
		STR 	43H 			//038E 	01C3

		//;TEST_60F01x_IIC.c: 231: unsigned char t;
		//;TEST_60F01x_IIC.c: 232: TRISA2 =0;
		BSR 	STATUS,5 		//038F 	1A83
		BCR 	5H,2 			//0390 	1105

		//;TEST_60F01x_IIC.c: 233: RA4=0;
		BCR 	STATUS,5 		//0391 	1283
		BCR 	5H,4 			//0392 	1205

		//;TEST_60F01x_IIC.c: 234: for(t=0;t<8;t++)
		CLRR 	44H 			//0393 	0144

		//;TEST_60F01x_IIC.c: 235: {
		//;TEST_60F01x_IIC.c: 236: if((txd&0x80)>>7)
		LDR 	43H,0 			//0394 	0843
		STR 	42H 			//0395 	01C2
		ORG		0396H
		LDWI 	7H 			//0396 	2A07
		BCR 	STATUS,0 		//0397 	1003
		RRR	42H,1 			//0398 	06C2
		ADDWI 	FFH 			//0399 	27FF
		BTSS 	STATUS,2 		//039A 	1D03
		LJUMP 	397H 			//039B 	3B97
		BTSS 	42H,0 			//039C 	1C42
		LJUMP 	3A1H 			//039D 	3BA1
		ORG		039EH

		//;TEST_60F01x_IIC.c: 237: RA2=1;
		BCR 	STATUS,5 		//039E 	1283
		BSR 	5H,2 			//039F 	1905
		LJUMP 	3A3H 			//03A0 	3BA3

		//;TEST_60F01x_IIC.c: 238: else
		//;TEST_60F01x_IIC.c: 239: RA2=0;
		BCR 	STATUS,5 		//03A1 	1283
		BCR 	5H,2 			//03A2 	1105
		LDWI 	5H 			//03A3 	2A05

		//;TEST_60F01x_IIC.c: 240: txd<<=1;
		BCR 	STATUS,0 		//03A4 	1003
		RLR 	43H,1 			//03A5 	05C3
		ORG		03A6H

		//;TEST_60F01x_IIC.c: 241: DelayUs(5);
		LCALL 	2F8H 			//03A6 	32F8
		LDWI 	5H 			//03A7 	2A05

		//;TEST_60F01x_IIC.c: 242: RA4=1;
		BCR 	STATUS,5 		//03A8 	1283
		BSR 	5H,4 			//03A9 	1A05

		//;TEST_60F01x_IIC.c: 243: DelayUs(5);
		LCALL 	2F8H 			//03AA 	32F8
		LDWI 	5H 			//03AB 	2A05

		//;TEST_60F01x_IIC.c: 244: RA4=0;
		BCR 	STATUS,5 		//03AC 	1283
		BCR 	5H,4 			//03AD 	1205
		ORG		03AEH

		//;TEST_60F01x_IIC.c: 245: DelayUs(5);
		LCALL 	2F8H 			//03AE 	32F8
		LDWI 	8H 			//03AF 	2A08
		INCR	44H,1 			//03B0 	09C4
		SUBWR 	44H,0 			//03B1 	0C44
		BTSC 	STATUS,0 		//03B2 	1403
		RET		 					//03B3 	0004
		LJUMP 	394H 			//03B4 	3B94

		//;TEST_60F01x_IIC.c: 424: char i;
		//;TEST_60F01x_IIC.c: 425: POWER_INITIAL();
		LCALL 	30BH 			//03B5 	330B
		ORG		03B6H

		//;TEST_60F01x_IIC.c: 426: DelayS(1);
		LDWI 	1H 			//03B6 	2A01
		LCALL 	348H 			//03B7 	3348

		//;TEST_60F01x_IIC.c: 427: I2C_SendString(0x84,par1,sizeof(par1));
		LDWI 	C9H 			//03B8 	2AC9
		STR 	45H 			//03B9 	01C5
		LDWI 	14H 			//03BA 	2A14
		STR 	46H 			//03BB 	01C6
		LDWI 	84H 			//03BC 	2A84
		CLRR 	47H 			//03BD 	0147
		ORG		03BEH
		LCALL 	370H 			//03BE 	3370

		//;TEST_60F01x_IIC.c: 428: DelayMs(100);
		LDWI 	64H 			//03BF 	2A64
		LCALL 	338H 			//03C0 	3338

		//;TEST_60F01x_IIC.c: 429: I2C_SendString(0x84,par2,sizeof(par2));
		LDWI 	1H 			//03C1 	2A01
		STR 	45H 			//03C2 	01C5
		LDWI 	44H 			//03C3 	2A44
		STR 	46H 			//03C4 	01C6
		LDWI 	84H 			//03C5 	2A84
		ORG		03C6H
		CLRR 	47H 			//03C6 	0147
		LCALL 	370H 			//03C7 	3370

		//;TEST_60F01x_IIC.c: 430: DelayMs(100);
		LDWI 	64H 			//03C8 	2A64
		LCALL 	338H 			//03C9 	3338

		//;TEST_60F01x_IIC.c: 431: I2C_SendString(0x84,par3,sizeof(par3));
		LDWI 	75H 			//03CA 	2A75
		STR 	45H 			//03CB 	01C5
		LDWI 	2CH 			//03CC 	2A2C
		STR 	46H 			//03CD 	01C6
		ORG		03CEH
		LDWI 	84H 			//03CE 	2A84
		CLRR 	47H 			//03CF 	0147
		LCALL 	370H 			//03D0 	3370

		//;TEST_60F01x_IIC.c: 432: DelayMs(100);
		LDWI 	64H 			//03D1 	2A64
		LCALL 	338H 			//03D2 	3338

		//;TEST_60F01x_IIC.c: 433: I2C_SendString(0x84,par4,sizeof(par4));
		LDWI 	45H 			//03D3 	2A45
		STR 	45H 			//03D4 	01C5
		LDWI 	30H 			//03D5 	2A30
		ORG		03D6H
		STR 	46H 			//03D6 	01C6
		LDWI 	84H 			//03D7 	2A84
		CLRR 	47H 			//03D8 	0147
		LCALL 	370H 			//03D9 	3370

		//;TEST_60F01x_IIC.c: 434: DelayMs(100);
		LDWI 	64H 			//03DA 	2A64
		LCALL 	338H 			//03DB 	3338

		//;TEST_60F01x_IIC.c: 435: I2C_SendString(0x84,par5,sizeof(par5));
		LDWI 	A1H 			//03DC 	2AA1
		STR 	45H 			//03DD 	01C5
		ORG		03DEH
		LDWI 	28H 			//03DE 	2A28
		STR 	46H 			//03DF 	01C6
		LDWI 	84H 			//03E0 	2A84
		CLRR 	47H 			//03E1 	0147
		LCALL 	370H 			//03E2 	3370

		//;TEST_60F01x_IIC.c: 436: DelayMs(100);
		LDWI 	64H 			//03E3 	2A64
		LCALL 	338H 			//03E4 	3338

		//;TEST_60F01x_IIC.c: 437: for(i = 0;i < 30;i++) {
		CLRR 	4AH 			//03E5 	014A
		ORG		03E6H

		//;TEST_60F01x_IIC.c: 438: I2C_SendString(0x84,par6,sizeof(par6));
		LDWI 	DDH 			//03E6 	2ADD
		STR 	45H 			//03E7 	01C5
		LDWI 	CH 			//03E8 	2A0C
		STR 	46H 			//03E9 	01C6
		LDWI 	84H 			//03EA 	2A84
		CLRR 	47H 			//03EB 	0147
		LCALL 	370H 			//03EC 	3370

		//;TEST_60F01x_IIC.c: 439: DelayS(10);
		LDWI 	AH 			//03ED 	2A0A
		ORG		03EEH
		LCALL 	348H 			//03EE 	3348
		LDWI 	1EH 			//03EF 	2A1E
		INCR	4AH,1 			//03F0 	09CA
		SUBWR 	4AH,0 			//03F1 	0C4A
		BTSS 	STATUS,0 		//03F2 	1C03
		LJUMP 	3E6H 			//03F3 	3BE6

		//;TEST_60F01x_IIC.c: 442: I2C_SendString(0x84,par6,sizeof(par6));
		LDWI 	DDH 			//03F4 	2ADD
		STR 	45H 			//03F5 	01C5
		ORG		03F6H
		LDWI 	CH 			//03F6 	2A0C
		STR 	46H 			//03F7 	01C6
		LDWI 	84H 			//03F8 	2A84
		CLRR 	47H 			//03F9 	0147
		LCALL 	370H 			//03FA 	3370

		//;TEST_60F01x_IIC.c: 443: DelayM(50);
		LDWI 	32H 			//03FB 	2A32
		LCALL 	301H 			//03FC 	3301
		LJUMP 	3F4H 			//03FD 	3BF4
		ORG		03FEH

		//;TEST_60F01x_IIC.c: 449: {
		//;TEST_60F01x_IIC.c: 450: _nop();
		NOP		 					//03FE 	0000
		LJUMP 	3FEH 			//03FF 	3BFE
			END
