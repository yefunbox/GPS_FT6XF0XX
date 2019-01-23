//Deviec:FT60F01X
//-----------------------Variable---------------------------------
		_ISR		EQU		40F5A8H
		_par1		EQU		40F5A8H
		_par2		EQU		40F5A8H
		_par3		EQU		40F5A8H
		_par4		EQU		40F5A8H
		_par5		EQU		40F5A8H
		_par6		EQU		40F5A8H
		_par7		EQU		40F5A8H
		_ISR		EQU		40F5A8H
//-----------------------Variable END---------------------------------
		ORG		0000H
		LJUMP 	0AH 			//0000 	380A
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	40H 			//0006 	01C0
		LDR 	PCLATH,0 		//0007 	080A
		STR 	41H 			//0008 	01C1
		LJUMP 	2B8H 			//0009 	3AB8
		LJUMP 	34AH 			//000A 	3B4A
		ORG		0100H
		BTSC 	7FH,7 			//0100 	17FF
		LJUMP 	10AH 			//0101 	390A
		BCR 	STATUS,7 		//0102 	1383
		BTSC 	7FH,0 			//0103 	147F
		BSR 	STATUS,7 		//0104 	1B83
		LDR 	INDF,0 			//0105 	0800
		INCR	FSR,1 			//0106 	0984
		BTSC 	STATUS,2 		//0107 	1503
		ORG		0108H
		INCR	7FH,1 			//0108 	09FF
		RET		 					//0109 	0004
		LDR 	7FH,0 			//010A 	087F
		ANDWI 	7FH 			//010B 	247F
		STR 	PCLATH 			//010C 	018A
		LDR 	FSR,0 			//010D 	0804
		INCR	FSR,1 			//010E 	0984
		BTSC 	STATUS,2 		//010F 	1503
		ORG		0110H
		INCR	7FH,1 			//0110 	09FF
		STR 	PCL 			//0111 	0182
		RETW 	B5H 			//0112 	21B5
		RETW 	62H 			//0113 	2162
		RETW 	6H 			//0114 	2106
		RETW 	3EH 			//0115 	213E
		RETW 	3CH 			//0116 	213C
		RETW 	0H 			//0117 	2100
		ORG		0118H
		RETW 	0H 			//0118 	2100
		RETW 	0H 			//0119 	2100
		RETW 	20H 			//011A 	2120
		RETW 	7H 			//011B 	2107
		RETW 	0H 			//011C 	2100
		RETW 	8H 			//011D 	2108
		RETW 	10H 			//011E 	2110
		RETW 	0H 			//011F 	2100
		ORG		0120H
		RETW 	1H 			//0120 	2101
		RETW 	0H 			//0121 	2100
		RETW 	1H 			//0122 	2101
		RETW 	1H 			//0123 	2101
		RETW 	1H 			//0124 	2101
		RETW 	1H 			//0125 	2101
		RETW 	3H 			//0126 	2103
		RETW 	0H 			//0127 	2100
		ORG		0128H
		RETW 	0H 			//0128 	2100
		RETW 	0H 			//0129 	2100
		RETW 	1H 			//012A 	2101
		RETW 	1H 			//012B 	2101
		RETW 	2H 			//012C 	2102
		RETW 	4H 			//012D 	2104
		RETW 	8H 			//012E 	2108
		RETW 	0H 			//012F 	2100
		ORG		0130H
		RETW 	0H 			//0130 	2100
		RETW 	0H 			//0131 	2100
		RETW 	1H 			//0132 	2101
		RETW 	1H 			//0133 	2101
		RETW 	3H 			//0134 	2103
		RETW 	8H 			//0135 	2108
		RETW 	10H 			//0136 	2110
		RETW 	0H 			//0137 	2100
		ORG		0138H
		RETW 	0H 			//0138 	2100
		RETW 	0H 			//0139 	2100
		RETW 	1H 			//013A 	2101
		RETW 	1H 			//013B 	2101
		RETW 	4H 			//013C 	2104
		RETW 	0H 			//013D 	2100
		RETW 	8H 			//013E 	2108
		RETW 	0H 			//013F 	2100
		ORG		0140H
		RETW 	0H 			//0140 	2100
		RETW 	0H 			//0141 	2100
		RETW 	1H 			//0142 	2101
		RETW 	1H 			//0143 	2101
		RETW 	5H 			//0144 	2105
		RETW 	0H 			//0145 	2100
		RETW 	3H 			//0146 	2103
		RETW 	0H 			//0147 	2100
		ORG		0148H
		RETW 	1H 			//0148 	2101
		RETW 	0H 			//0149 	2100
		RETW 	1H 			//014A 	2101
		RETW 	1H 			//014B 	2101
		RETW 	6H 			//014C 	2106
		RETW 	8H 			//014D 	2108
		RETW 	EH 			//014E 	210E
		RETW 	0H 			//014F 	2100
		ORG		0150H
		RETW 	0H 			//0150 	2100
		RETW 	0H 			//0151 	2100
		RETW 	1H 			//0152 	2101
		RETW 	1H 			//0153 	2101
		RETW 	2DH 			//0154 	212D
		RETW 	59H 			//0155 	2159
		RETW 	B5H 			//0156 	21B5
		RETW 	62H 			//0157 	2162
		ORG		0158H
		RETW 	6H 			//0158 	2106
		RETW 	23H 			//0159 	2123
		RETW 	28H 			//015A 	2128
		RETW 	0H 			//015B 	2100
		RETW 	2H 			//015C 	2102
		RETW 	0H 			//015D 	2100
		RETW 	4CH 			//015E 	214C
		RETW 	66H 			//015F 	2166
		ORG		0160H
		RETW 	40H 			//0160 	2140
		RETW 	0H 			//0161 	2100
		RETW 	0H 			//0162 	2100
		RETW 	0H 			//0163 	2100
		RETW 	0H 			//0164 	2100
		RETW 	0H 			//0165 	2100
		RETW 	3H 			//0166 	2103
		RETW 	20H 			//0167 	2120
		ORG		0168H
		RETW 	6H 			//0168 	2106
		RETW 	0H 			//0169 	2100
		RETW 	0H 			//016A 	2100
		RETW 	0H 			//016B 	2100
		RETW 	0H 			//016C 	2100
		RETW 	0H 			//016D 	2100
		RETW 	4BH 			//016E 	214B
		RETW 	7H 			//016F 	2107
		ORG		0170H
		RETW 	0H 			//0170 	2100
		RETW 	0H 			//0171 	2100
		RETW 	0H 			//0172 	2100
		RETW 	0H 			//0173 	2100
		RETW 	0H 			//0174 	2100
		RETW 	0H 			//0175 	2100
		RETW 	0H 			//0176 	2100
		RETW 	1H 			//0177 	2101
		ORG		0178H
		RETW 	0H 			//0178 	2100
		RETW 	0H 			//0179 	2100
		RETW 	2CH 			//017A 	212C
		RETW 	1H 			//017B 	2101
		RETW 	0H 			//017C 	2100
		RETW 	0H 			//017D 	2100
		RETW 	0H 			//017E 	2100
		RETW 	0H 			//017F 	2100
		ORG		0180H
		RETW 	0H 			//0180 	2100
		RETW 	0H 			//0181 	2100
		RETW 	0H 			//0182 	2100
		RETW 	0H 			//0183 	2100
		RETW 	EEH 			//0184 	21EE
		RETW 	44H 			//0185 	2144
		RETW 	B5H 			//0186 	21B5
		RETW 	62H 			//0187 	2162
		ORG		0188H
		RETW 	6H 			//0188 	2106
		RETW 	24H 			//0189 	2124
		RETW 	24H 			//018A 	2124
		RETW 	0H 			//018B 	2100
		RETW 	FFH 			//018C 	21FF
		RETW 	FFH 			//018D 	21FF
		RETW 	0H 			//018E 	2100
		RETW 	3H 			//018F 	2103
		ORG		0190H
		RETW 	0H 			//0190 	2100
		RETW 	0H 			//0191 	2100
		RETW 	0H 			//0192 	2100
		RETW 	0H 			//0193 	2100
		RETW 	10H 			//0194 	2110
		RETW 	27H 			//0195 	2127
		RETW 	0H 			//0196 	2100
		RETW 	0H 			//0197 	2100
		ORG		0198H
		RETW 	0H 			//0198 	2100
		RETW 	0H 			//0199 	2100
		RETW 	5EH 			//019A 	215E
		RETW 	1H 			//019B 	2101
		RETW 	5EH 			//019C 	215E
		RETW 	1H 			//019D 	2101
		RETW 	90H 			//019E 	2190
		RETW 	1H 			//019F 	2101
		ORG		01A0H
		RETW 	5EH 			//01A0 	215E
		RETW 	1H 			//01A1 	2101
		RETW 	64H 			//01A2 	2164
		RETW 	3CH 			//01A3 	213C
		RETW 	0H 			//01A4 	2100
		RETW 	0H 			//01A5 	2100
		RETW 	0H 			//01A6 	2100
		RETW 	0H 			//01A7 	2100
		ORG		01A8H
		RETW 	AH 			//01A8 	210A
		RETW 	0H 			//01A9 	2100
		RETW 	0H 			//01AA 	2100
		RETW 	0H 			//01AB 	2100
		RETW 	0H 			//01AC 	2100
		RETW 	0H 			//01AD 	2100
		RETW 	0H 			//01AE 	2100
		RETW 	0H 			//01AF 	2100
		ORG		01B0H
		RETW 	DEH 			//01B0 	21DE
		RETW 	45H 			//01B1 	2145
		RETW 	B5H 			//01B2 	21B5
		RETW 	62H 			//01B3 	2162
		RETW 	6H 			//01B4 	2106
		RETW 	31H 			//01B5 	2131
		RETW 	20H 			//01B6 	2120
		RETW 	0H 			//01B7 	2100
		ORG		01B8H
		RETW 	0H 			//01B8 	2100
		RETW 	1H 			//01B9 	2101
		RETW 	0H 			//01BA 	2100
		RETW 	0H 			//01BB 	2100
		RETW 	32H 			//01BC 	2132
		RETW 	0H 			//01BD 	2100
		RETW 	0H 			//01BE 	2100
		RETW 	0H 			//01BF 	2100
		ORG		01C0H
		RETW 	40H 			//01C0 	2140
		RETW 	42H 			//01C1 	2142
		RETW 	FH 			//01C2 	210F
		RETW 	0H 			//01C3 	2100
		RETW 	40H 			//01C4 	2140
		RETW 	42H 			//01C5 	2142
		RETW 	FH 			//01C6 	210F
		RETW 	0H 			//01C7 	2100
		ORG		01C8H
		RETW 	0H 			//01C8 	2100
		RETW 	0H 			//01C9 	2100
		RETW 	0H 			//01CA 	2100
		RETW 	0H 			//01CB 	2100
		RETW 	A0H 			//01CC 	21A0
		RETW 	86H 			//01CD 	2186
		RETW 	1H 			//01CE 	2101
		RETW 	0H 			//01CF 	2100
		ORG		01D0H
		RETW 	0H 			//01D0 	2100
		RETW 	0H 			//01D1 	2100
		RETW 	0H 			//01D2 	2100
		RETW 	0H 			//01D3 	2100
		RETW 	F7H 			//01D4 	21F7
		RETW 	0H 			//01D5 	2100
		RETW 	0H 			//01D6 	2100
		RETW 	0H 			//01D7 	2100
		ORG		01D8H
		RETW 	CAH 			//01D8 	21CA
		RETW 	B6H 			//01D9 	21B6
		RETW 	B5H 			//01DA 	21B5
		RETW 	62H 			//01DB 	2162
		RETW 	6H 			//01DC 	2106
		RETW 	41H 			//01DD 	2141
		RETW 	CH 			//01DE 	210C
		RETW 	0H 			//01DF 	2100
		ORG		01E0H
		RETW 	0H 			//01E0 	2100
		RETW 	0H 			//01E1 	2100
		RETW 	3H 			//01E2 	2103
		RETW 	1FH 			//01E3 	211F
		RETW 	78H 			//01E4 	2178
		RETW 	B7H 			//01E5 	21B7
		RETW 	58H 			//01E6 	2158
		RETW 	B7H 			//01E7 	21B7
		ORG		01E8H
		RETW 	FFH 			//01E8 	21FF
		RETW 	76H 			//01E9 	2176
		RETW 	CFH 			//01EA 	21CF
		RETW 	FFH 			//01EB 	21FF
		RETW 	F6H 			//01EC 	21F6
		RETW 	6BH 			//01ED 	216B
		RETW 	B5H 			//01EE 	21B5
		RETW 	62H 			//01EF 	2162
		ORG		01F0H
		RETW 	6H 			//01F0 	2106
		RETW 	1H 			//01F1 	2101
		RETW 	8H 			//01F2 	2108
		RETW 	0H 			//01F3 	2100
		RETW 	9H 			//01F4 	2109
		RETW 	14H 			//01F5 	2114
		RETW 	1H 			//01F6 	2101
		RETW 	0H 			//01F7 	2100
		ORG		01F8H
		RETW 	0H 			//01F8 	2100
		RETW 	0H 			//01F9 	2100
		RETW 	0H 			//01FA 	2100
		RETW 	0H 			//01FB 	2100
		RETW 	2DH 			//01FC 	212D
		RETW 	7DH 			//01FD 	217D
		RETW 	B5H 			//01FE 	21B5
		RETW 	62H 			//01FF 	2162
		ORG		0200H
		RETW 	9H 			//0200 	2109
		RETW 	14H 			//0201 	2114
		RETW 	4H 			//0202 	2104
		RETW 	0H 			//0203 	2100
		RETW 	0H 			//0204 	2100
		RETW 	0H 			//0205 	2100
		RETW 	0H 			//0206 	2100
		RETW 	0H 			//0207 	2100
		ORG		0208H
		RETW 	21H 			//0208 	2121
		RETW 	ECH 			//0209 	21EC

		//;i2c.c: 540: char i;
		//;i2c.c: 541: POWER_INITIAL();
		LCALL 	328H 			//020A 	3328

		//;i2c.c: 542: DelayS(1);
		LDWI 	1H 			//020B 	2A01
		LCALL 	2EAH 			//020C 	32EA

		//;i2c.c: 543: I2C_SendString(0x84,par1,sizeof(par1));
		LDWI 	DAH 			//020D 	2ADA
		STR 	47H 			//020E 	01C7
		LDWI 	81H 			//020F 	2A81
		ORG		0210H
		STR 	48H 			//0210 	01C8
		LDWI 	14H 			//0211 	2A14
		STR 	49H 			//0212 	01C9
		LDWI 	84H 			//0213 	2A84
		CLRR 	4AH 			//0214 	014A
		LCALL 	295H 			//0215 	3295

		//;i2c.c: 544: DelayMs(100);
		LDWI 	64H 			//0216 	2A64
		LCALL 	2FAH 			//0217 	32FA
		ORG		0218H

		//;i2c.c: 545: I2C_SendString(0x84,par2,sizeof(par2));
		LDWI 	12H 			//0218 	2A12
		STR 	47H 			//0219 	01C7
		LDWI 	81H 			//021A 	2A81
		STR 	48H 			//021B 	01C8
		LDWI 	44H 			//021C 	2A44
		STR 	49H 			//021D 	01C9
		LDWI 	84H 			//021E 	2A84
		CLRR 	4AH 			//021F 	014A
		ORG		0220H
		LCALL 	295H 			//0220 	3295

		//;i2c.c: 546: DelayMs(100);
		LDWI 	64H 			//0221 	2A64
		LCALL 	2FAH 			//0222 	32FA

		//;i2c.c: 547: I2C_SendString(0x84,par3,sizeof(par3));
		LDWI 	86H 			//0223 	2A86
		STR 	47H 			//0224 	01C7
		LDWI 	81H 			//0225 	2A81
		STR 	48H 			//0226 	01C8
		LDWI 	2CH 			//0227 	2A2C
		ORG		0228H
		STR 	49H 			//0228 	01C9
		LDWI 	84H 			//0229 	2A84
		CLRR 	4AH 			//022A 	014A
		LCALL 	295H 			//022B 	3295

		//;i2c.c: 548: DelayMs(100);
		LDWI 	64H 			//022C 	2A64
		LCALL 	2FAH 			//022D 	32FA

		//;i2c.c: 549: I2C_SendString(0x84,par4,sizeof(par4));
		LDWI 	56H 			//022E 	2A56
		STR 	47H 			//022F 	01C7
		ORG		0230H
		LDWI 	81H 			//0230 	2A81
		STR 	48H 			//0231 	01C8
		LDWI 	30H 			//0232 	2A30
		STR 	49H 			//0233 	01C9
		LDWI 	84H 			//0234 	2A84
		CLRR 	4AH 			//0235 	014A
		LCALL 	295H 			//0236 	3295

		//;i2c.c: 550: DelayMs(100);
		LDWI 	64H 			//0237 	2A64
		ORG		0238H
		LCALL 	2FAH 			//0238 	32FA

		//;i2c.c: 551: I2C_SendString(0x84,par5,sizeof(par5));
		LDWI 	B2H 			//0239 	2AB2
		STR 	47H 			//023A 	01C7
		LDWI 	81H 			//023B 	2A81
		STR 	48H 			//023C 	01C8
		LDWI 	28H 			//023D 	2A28
		STR 	49H 			//023E 	01C9
		LDWI 	84H 			//023F 	2A84
		ORG		0240H
		CLRR 	4AH 			//0240 	014A
		LCALL 	295H 			//0241 	3295

		//;i2c.c: 552: DelayMs(100);
		LDWI 	64H 			//0242 	2A64
		LCALL 	2FAH 			//0243 	32FA

		//;i2c.c: 553: I2C_SendString(0x84,par6,sizeof(par6));
		LDWI 	EEH 			//0244 	2AEE
		STR 	47H 			//0245 	01C7
		LDWI 	81H 			//0246 	2A81
		STR 	48H 			//0247 	01C8
		ORG		0248H
		LDWI 	10H 			//0248 	2A10
		STR 	49H 			//0249 	01C9
		LDWI 	84H 			//024A 	2A84
		CLRR 	4AH 			//024B 	014A
		LCALL 	295H 			//024C 	3295

		//;i2c.c: 554: DelayMs(100);
		LDWI 	64H 			//024D 	2A64
		LCALL 	2FAH 			//024E 	32FA

		//;i2c.c: 559: for(i = 0;i < 10;i++) {
		CLRR 	4DH 			//024F 	014D
		ORG		0250H

		//;i2c.c: 560: I2C_SendString(0x84,par7,sizeof(par7));
		LDWI 	FEH 			//0250 	2AFE
		STR 	47H 			//0251 	01C7
		LDWI 	81H 			//0252 	2A81
		STR 	48H 			//0253 	01C8
		LDWI 	CH 			//0254 	2A0C
		STR 	49H 			//0255 	01C9
		LDWI 	84H 			//0256 	2A84
		CLRR 	4AH 			//0257 	014A
		ORG		0258H
		LCALL 	295H 			//0258 	3295

		//;i2c.c: 561: DelayS(30);
		LDWI 	1EH 			//0259 	2A1E
		LCALL 	2EAH 			//025A 	32EA
		LDWI 	AH 			//025B 	2A0A
		INCR	4DH,1 			//025C 	09CD
		SUBWR 	4DH,0 			//025D 	0C4D
		BTSS 	STATUS,0 		//025E 	1C03
		LJUMP 	250H 			//025F 	3A50
		ORG		0260H

		//;i2c.c: 564: I2C_SendString(0x84,par7,sizeof(par7));
		LDWI 	FEH 			//0260 	2AFE
		STR 	47H 			//0261 	01C7
		LDWI 	81H 			//0262 	2A81
		STR 	48H 			//0263 	01C8
		LDWI 	CH 			//0264 	2A0C
		STR 	49H 			//0265 	01C9
		LDWI 	84H 			//0266 	2A84
		CLRR 	4AH 			//0267 	014A
		ORG		0268H
		LCALL 	295H 			//0268 	3295

		//;i2c.c: 565: DelayM(20);
		LDWI 	14H 			//0269 	2A14
		LCALL 	337H 			//026A 	3337
		LJUMP 	260H 			//026B 	3A60

		//;i2c.c: 570: while(1)
		//;i2c.c: 571: {
		//;i2c.c: 572: _nop();
		NOP		 					//026C 	0000
		LJUMP 	26CH 			//026D 	3A6C
		STR 	45H 			//026E 	01C5

		//;i2c.c: 239: unsigned char t;
		//;i2c.c: 240: TRISA2 =0;
		BSR 	STATUS,5 		//026F 	1A83
		ORG		0270H
		BCR 	5H,2 			//0270 	1105

		//;i2c.c: 241: RA4=0;
		BCR 	STATUS,5 		//0271 	1283
		BCR 	5H,4 			//0272 	1205

		//;i2c.c: 242: for(t=0;t<8;t++)
		CLRR 	46H 			//0273 	0146

		//;i2c.c: 243: {
		//;i2c.c: 244: if((txd&0x80)>>7)
		LDR 	45H,0 			//0274 	0845
		STR 	44H 			//0275 	01C4
		LDWI 	7H 			//0276 	2A07
		BCR 	STATUS,0 		//0277 	1003
		ORG		0278H
		RRR	44H,1 			//0278 	06C4
		ADDWI 	FFH 			//0279 	27FF
		BTSS 	STATUS,2 		//027A 	1D03
		LJUMP 	277H 			//027B 	3A77
		BTSS 	44H,0 			//027C 	1C44
		LJUMP 	281H 			//027D 	3A81

		//;i2c.c: 245: RA2=1;
		BCR 	STATUS,5 		//027E 	1283
		BSR 	5H,2 			//027F 	1905
		ORG		0280H
		LJUMP 	283H 			//0280 	3A83

		//;i2c.c: 246: else
		//;i2c.c: 247: RA2=0;
		BCR 	STATUS,5 		//0281 	1283
		BCR 	5H,2 			//0282 	1105
		LDWI 	5H 			//0283 	2A05

		//;i2c.c: 248: txd<<=1;
		BCR 	STATUS,0 		//0284 	1003
		RLR 	45H,1 			//0285 	05C5

		//;i2c.c: 249: DelayUs(5);
		LCALL 	341H 			//0286 	3341
		LDWI 	5H 			//0287 	2A05
		ORG		0288H

		//;i2c.c: 250: RA4=1;
		BCR 	STATUS,5 		//0288 	1283
		BSR 	5H,4 			//0289 	1A05

		//;i2c.c: 251: DelayUs(5);
		LCALL 	341H 			//028A 	3341
		LDWI 	5H 			//028B 	2A05

		//;i2c.c: 252: RA4=0;
		BCR 	STATUS,5 		//028C 	1283
		BCR 	5H,4 			//028D 	1205

		//;i2c.c: 253: DelayUs(5);
		LCALL 	341H 			//028E 	3341
		LDWI 	8H 			//028F 	2A08
		ORG		0290H
		INCR	46H,1 			//0290 	09C6
		SUBWR 	46H,0 			//0291 	0C46
		BTSC 	STATUS,0 		//0292 	1403
		RET		 					//0293 	0004
		LJUMP 	274H 			//0294 	3A74
		STR 	4BH 			//0295 	01CB

		//;i2c.c: 324: unsigned char i;
		//;i2c.c: 325: IIC_Start();
		LCALL 	319H 			//0296 	3319

		//;i2c.c: 326: IIC_Send_Byte(chip_addr);
		LDR 	4BH,0 			//0297 	084B
		ORG		0298H
		LCALL 	26EH 			//0298 	326E

		//;i2c.c: 328: if(IIC_Wait_Ack()==1){
		LCALL 	2D2H 			//0299 	32D2
		XORWI 	1H 			//029A 	2601
		BTSC 	STATUS,2 		//029B 	1503
		RET		 					//029C 	0004

		//;i2c.c: 331: }
		//;i2c.c: 333: for(i=0; i<Number; i++) {
		CLRR 	4CH 			//029D 	014C
		LDR 	4AH,0 			//029E 	084A
		XORWI 	80H 			//029F 	2680
		ORG		02A0H
		SUBWI 	80H 			//02A0 	2880
		BTSS 	STATUS,2 		//02A1 	1D03
		LJUMP 	2A5H 			//02A2 	3AA5
		LDR 	49H,0 			//02A3 	0849
		SUBWR 	4CH,0 			//02A4 	0C4C
		BTSC 	STATUS,0 		//02A5 	1403
		LJUMP 	2B7H 			//02A6 	3AB7

		//;i2c.c: 334: IIC_Send_Byte(*buffer);
		LDR 	48H,0 			//02A7 	0848
		ORG		02A8H
		BCR 	STATUS,5 		//02A8 	1283
		STR 	7FH 			//02A9 	01FF
		LDR 	47H,0 			//02AA 	0847
		STR 	FSR 			//02AB 	0184
		LCALL 	100H 			//02AC 	3100
		LCALL 	26EH 			//02AD 	326E

		//;i2c.c: 335: if(IIC_Wait_Ack()==1) {
		LCALL 	2D2H 			//02AE 	32D2
		XORWI 	1H 			//02AF 	2601
		ORG		02B0H
		BTSC 	STATUS,2 		//02B0 	1503
		RET		 					//02B1 	0004

		//;i2c.c: 338: }
		//;i2c.c: 339: buffer++;
		INCR	47H,1 			//02B2 	09C7
		BTSC 	STATUS,2 		//02B3 	1503
		INCR	48H,1 			//02B4 	09C8
		INCR	4CH,1 			//02B5 	09CC
		LJUMP 	29EH 			//02B6 	3A9E

		//;i2c.c: 340: }
		//;i2c.c: 341: IIC_Stop();
		LJUMP 	30AH 			//02B7 	3B0A
		ORG		02B8H

		//;i2c.c: 394: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//02B8 	168B
		BTSS 	INTCON,2 		//02B9 	1D0B
		LJUMP 	2C0H 			//02BA 	3AC0

		//;i2c.c: 395: {
		//;i2c.c: 396: TMR0 = 49;
		LDWI 	31H 			//02BB 	2A31
		BCR 	STATUS,5 		//02BC 	1283
		STR 	1H 			//02BD 	0181

		//;i2c.c: 398: T0IF = 0;
		BCR 	INTCON,2 		//02BE 	110B

		//;i2c.c: 399: T0IE = 0;
		BCR 	INTCON,5 		//02BF 	128B
		ORG		02C0H

		//;i2c.c: 400: }
		//;i2c.c: 403: if(PAIE && PAIF)
		BTSC 	INTCON,3 		//02C0 	158B
		BTSS 	INTCON,0 		//02C1 	1C0B
		LJUMP 	2CBH 			//02C2 	3ACB

		//;i2c.c: 404: {
		//;i2c.c: 405: ReadAPin = PORTA;
		BCR 	STATUS,5 		//02C3 	1283
		LDR 	5H,0 			//02C4 	0805

		//;i2c.c: 406: PAIF = 0;
		BCR 	INTCON,0 		//02C5 	100B

		//;i2c.c: 407: if(RA1 == 0)
		BTSC 	5H,1 			//02C6 	1485
		LJUMP 	2CBH 			//02C7 	3ACB
		ORG		02C8H

		//;i2c.c: 408: {
		//;i2c.c: 409: PAIE = 0;
		BCR 	INTCON,3 		//02C8 	118B

		//;i2c.c: 411: RXFLAG = 1;
		BSR 	STATUS,5 		//02C9 	1A83
		BCR 	16H,2 			//02CA 	1116
		LDR 	41H,0 			//02CB 	0841
		STR 	PCLATH 			//02CC 	018A
		SWAPR 	40H,0 			//02CD 	0740
		STR 	STATUS 			//02CE 	0183
		SWAPR 	7EH,1 			//02CF 	07FE
		ORG		02D0H
		SWAPR 	7EH,0 			//02D0 	077E
		RETI		 			//02D1 	0009
		LDWI 	5H 			//02D2 	2A05

		//;i2c.c: 181: unsigned char ucErrTime=0;
		CLRR 	44H 			//02D3 	0144

		//;i2c.c: 182: TRISA2 =1;
		BSR 	STATUS,5 		//02D4 	1A83
		BSR 	5H,2 			//02D5 	1905

		//;i2c.c: 183: RA2=1;
		BCR 	STATUS,5 		//02D6 	1283
		BSR 	5H,2 			//02D7 	1905
		ORG		02D8H

		//;i2c.c: 184: DelayUs(5);
		LCALL 	341H 			//02D8 	3341
		LDWI 	5H 			//02D9 	2A05

		//;i2c.c: 185: RA4=1;
		BCR 	STATUS,5 		//02DA 	1283
		BSR 	5H,4 			//02DB 	1A05

		//;i2c.c: 186: DelayUs(5);
		LCALL 	341H 			//02DC 	3341

		//;i2c.c: 187: while(RA2)
		BCR 	STATUS,5 		//02DD 	1283
		BTSS 	5H,2 			//02DE 	1D05
		LJUMP 	2E7H 			//02DF 	3AE7
		ORG		02E0H
		LDWI 	FBH 			//02E0 	2AFB

		//;i2c.c: 188: {
		//;i2c.c: 189: ucErrTime++;
		INCR	44H,1 			//02E1 	09C4

		//;i2c.c: 190: if(ucErrTime>250)
		SUBWR 	44H,0 			//02E2 	0C44
		BTSS 	STATUS,0 		//02E3 	1C03
		LJUMP 	2DDH 			//02E4 	3ADD

		//;i2c.c: 191: {
		//;i2c.c: 192: IIC_Stop();
		LCALL 	30AH 			//02E5 	330A

		//;i2c.c: 193: return 1;
		RETW 	1H 			//02E6 	2101
		LDWI 	0H 			//02E7 	2A00
		ORG		02E8H

		//;i2c.c: 194: }
		//;i2c.c: 195: }
		//;i2c.c: 196: RA4=0;
		BCR 	5H,4 			//02E8 	1205

		//;i2c.c: 197: return 0;
		RET		 					//02E9 	0004
		STR 	47H 			//02EA 	01C7

		//;i2c.c: 120: unsigned char a,b;
		//;i2c.c: 121: for(a=0;a<Time;a++)
		CLRR 	48H 			//02EB 	0148
		LDR 	47H,0 			//02EC 	0847
		SUBWR 	48H,0 			//02ED 	0C48
		BTSC 	STATUS,0 		//02EE 	1403
		RET		 					//02EF 	0004
		ORG		02F0H

		//;i2c.c: 122: {
		//;i2c.c: 123: for(b=0;b<10;b++)
		CLRR 	49H 			//02F0 	0149

		//;i2c.c: 124: {
		//;i2c.c: 125: DelayMs(100);
		LDWI 	64H 			//02F1 	2A64
		LCALL 	2FAH 			//02F2 	32FA
		LDWI 	AH 			//02F3 	2A0A
		INCR	49H,1 			//02F4 	09C9
		SUBWR 	49H,0 			//02F5 	0C49
		BTSS 	STATUS,0 		//02F6 	1C03
		LJUMP 	2F1H 			//02F7 	3AF1
		ORG		02F8H
		INCR	48H,1 			//02F8 	09C8
		LJUMP 	2ECH 			//02F9 	3AEC
		STR 	44H 			//02FA 	01C4

		//;i2c.c: 103: unsigned char a,b;
		//;i2c.c: 104: for(a=0;a<Time;a++)
		CLRR 	45H 			//02FB 	0145
		LDR 	44H,0 			//02FC 	0844
		SUBWR 	45H,0 			//02FD 	0C45
		BTSC 	STATUS,0 		//02FE 	1403
		RET		 					//02FF 	0004
		ORG		0300H

		//;i2c.c: 105: {
		//;i2c.c: 106: for(b=0;b<5;b++)
		CLRR 	46H 			//0300 	0146

		//;i2c.c: 107: {
		//;i2c.c: 108: DelayUs(98);
		LDWI 	62H 			//0301 	2A62
		LCALL 	341H 			//0302 	3341
		LDWI 	5H 			//0303 	2A05
		INCR	46H,1 			//0304 	09C6
		SUBWR 	46H,0 			//0305 	0C46
		BTSS 	STATUS,0 		//0306 	1C03
		LJUMP 	301H 			//0307 	3B01
		ORG		0308H
		INCR	45H,1 			//0308 	09C5
		LJUMP 	2FCH 			//0309 	3AFC
		LDWI 	AH 			//030A 	2A0A

		//;i2c.c: 163: TRISA2 =0;
		BSR 	STATUS,5 		//030B 	1A83
		BCR 	5H,2 			//030C 	1105

		//;i2c.c: 164: RA4=0;
		BCR 	STATUS,5 		//030D 	1283
		BCR 	5H,4 			//030E 	1205

		//;i2c.c: 165: RA2=0;
		BCR 	5H,2 			//030F 	1105
		ORG		0310H

		//;i2c.c: 166: DelayUs(10);
		LCALL 	341H 			//0310 	3341
		LDWI 	AH 			//0311 	2A0A

		//;i2c.c: 167: RA4=1;
		BCR 	STATUS,5 		//0312 	1283
		BSR 	5H,4 			//0313 	1A05

		//;i2c.c: 168: DelayUs(10);
		LCALL 	341H 			//0314 	3341
		LDWI 	AH 			//0315 	2A0A

		//;i2c.c: 169: RA2=1;
		BCR 	STATUS,5 		//0316 	1283
		BSR 	5H,2 			//0317 	1905
		ORG		0318H

		//;i2c.c: 170: DelayUs(10);
		LJUMP 	341H 			//0318 	3B41
		LDWI 	AH 			//0319 	2A0A

		//;i2c.c: 146: TRISA2 =0;
		BSR 	STATUS,5 		//031A 	1A83
		BCR 	5H,2 			//031B 	1105

		//;i2c.c: 147: RA2=1;
		BCR 	STATUS,5 		//031C 	1283
		BSR 	5H,2 			//031D 	1905

		//;i2c.c: 148: RA4=1;
		BSR 	5H,4 			//031E 	1A05

		//;i2c.c: 149: DelayUs(10);
		LCALL 	341H 			//031F 	3341
		ORG		0320H
		LDWI 	AH 			//0320 	2A0A

		//;i2c.c: 150: RA2=0;
		BCR 	STATUS,5 		//0321 	1283
		BCR 	5H,2 			//0322 	1105

		//;i2c.c: 151: DelayUs(10);
		LCALL 	341H 			//0323 	3341
		LDWI 	AH 			//0324 	2A0A

		//;i2c.c: 152: RA4=0;
		BCR 	STATUS,5 		//0325 	1283
		BCR 	5H,4 			//0326 	1205

		//;i2c.c: 153: DelayUs(10);
		LJUMP 	341H 			//0327 	3B41
		ORG		0328H

		//;i2c.c: 63: OSCCON = 0X00|0X70|0X01;
		LDWI 	71H 			//0328 	2A71
		BSR 	STATUS,5 		//0329 	1A83
		STR 	FH 			//032A 	018F

		//;i2c.c: 67: INTCON = 0;
		CLRR 	INTCON 			//032B 	010B

		//;i2c.c: 68: PORTA = 0B00000000;
		BCR 	STATUS,5 		//032C 	1283
		CLRR 	5H 			//032D 	0105

		//;i2c.c: 69: TRISA = 0B11101011;
		LDWI 	EBH 			//032E 	2AEB
		BSR 	STATUS,5 		//032F 	1A83
		ORG		0330H
		STR 	5H 			//0330 	0185

		//;i2c.c: 70: WPUA = 0B00000000;
		CLRR 	15H 			//0331 	0115

		//;i2c.c: 73: OPTION = 0B00001000;
		LDWI 	8H 			//0332 	2A08
		STR 	1H 			//0333 	0181

		//;i2c.c: 75: MSCKCON = 0B00000000;
		BCR 	STATUS,5 		//0334 	1283
		CLRR 	1BH 			//0335 	011B
		RET		 					//0336 	0004
		STR 	4AH 			//0337 	01CA
		ORG		0338H

		//;i2c.c: 132: unsigned char a;
		//;i2c.c: 133: for(a=0;a<Time;a++)
		CLRR 	4BH 			//0338 	014B
		LDR 	4AH,0 			//0339 	084A
		SUBWR 	4BH,0 			//033A 	0C4B
		BTSC 	STATUS,0 		//033B 	1403
		RET		 					//033C 	0004

		//;i2c.c: 134: {
		//;i2c.c: 135: DelayS(60);
		LDWI 	3CH 			//033D 	2A3C
		LCALL 	2EAH 			//033E 	32EA
		INCR	4BH,1 			//033F 	09CB
		ORG		0340H
		LJUMP 	339H 			//0340 	3B39
		STR 	42H 			//0341 	01C2

		//;i2c.c: 89: unsigned char a;
		//;i2c.c: 90: for(a=0;a<Time;a++)
		CLRR 	43H 			//0342 	0143
		LDR 	42H,0 			//0343 	0842
		SUBWR 	43H,0 			//0344 	0C43
		BTSC 	STATUS,0 		//0345 	1403
		RET		 					//0346 	0004

		//;i2c.c: 91: {
		//;i2c.c: 92: _nop();
		NOP		 					//0347 	0000
		ORG		0348H
		INCR	43H,1 			//0348 	09C3
		LJUMP 	343H 			//0349 	3B43
		CLRR 	STATUS 			//034A 	0103
		LJUMP 	20AH 			//034B 	3A0A
			END
