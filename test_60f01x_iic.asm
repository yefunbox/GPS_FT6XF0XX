//Deviec:FT60F01X
//-----------------------Variable---------------------------------
		_ISR		EQU		36F068H
		_par1		EQU		36F068H
		_par2		EQU		36F068H
		_par3		EQU		36F068H
		_par4		EQU		36F068H
		_par5		EQU		36F068H
		_par6		EQU		36F068H
		_par7		EQU		36F068H
		_par_back_AOP		EQU		36F068H
		_ISR		EQU		36F068H
//-----------------------Variable END---------------------------------
		ORG		0000H
		LJUMP 	0AH 			//0000 	380A
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	40H 			//0006 	01C0
		LDR 	PCLATH,0 		//0007 	080A
		STR 	41H 			//0008 	01C1
		LJUMP 	30CH 			//0009 	3B0C
		LJUMP 	390H 			//000A 	3B90
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
		RETW 	1H 			//0150 	2101
		RETW 	0H 			//0151 	2100
		RETW 	1H 			//0152 	2101
		RETW 	1H 			//0153 	2101
		RETW 	2EH 			//0154 	212E
		RETW 	5DH 			//0155 	215D
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
		RETW 	4H 			//018E 	2104
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
		RETW 	C8H 			//019E 	21C8
		RETW 	0H 			//019F 	2100
		ORG		01A0H
		RETW 	5EH 			//01A0 	215E
		RETW 	1H 			//01A1 	2101
		RETW 	C8H 			//01A2 	21C8
		RETW 	3CH 			//01A3 	213C
		RETW 	0H 			//01A4 	2100
		RETW 	0H 			//01A5 	2100
		RETW 	0H 			//01A6 	2100
		RETW 	0H 			//01A7 	2100
		ORG		01A8H
		RETW 	1EH 			//01A8 	211E
		RETW 	0H 			//01A9 	2100
		RETW 	0H 			//01AA 	2100
		RETW 	0H 			//01AB 	2100
		RETW 	0H 			//01AC 	2100
		RETW 	0H 			//01AD 	2100
		RETW 	0H 			//01AE 	2100
		RETW 	0H 			//01AF 	2100
		ORG		01B0H
		RETW 	91H 			//01B0 	2191
		RETW 	C4H 			//01B1 	21C4
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
		RETW 	17H 			//01DD 	2117
		RETW 	14H 			//01DE 	2114
		RETW 	0H 			//01DF 	2100
		ORG		01E0H
		RETW 	0H 			//01E0 	2100
		RETW 	40H 			//01E1 	2140
		RETW 	0H 			//01E2 	2100
		RETW 	2H 			//01E3 	2102
		RETW 	60H 			//01E4 	2160
		RETW 	0H 			//01E5 	2100
		RETW 	0H 			//01E6 	2100
		RETW 	0H 			//01E7 	2100
		ORG		01E8H
		RETW 	0H 			//01E8 	2100
		RETW 	1H 			//01E9 	2101
		RETW 	0H 			//01EA 	2100
		RETW 	1H 			//01EB 	2101
		RETW 	0H 			//01EC 	2100
		RETW 	0H 			//01ED 	2100
		RETW 	0H 			//01EE 	2100
		RETW 	0H 			//01EF 	2100
		ORG		01F0H
		RETW 	0H 			//01F0 	2100
		RETW 	0H 			//01F1 	2100
		RETW 	0H 			//01F2 	2100
		RETW 	0H 			//01F3 	2100
		RETW 	D5H 			//01F4 	21D5
		RETW 	4FH 			//01F5 	214F
		RETW 	B5H 			//01F6 	21B5
		RETW 	62H 			//01F7 	2162
		ORG		01F8H
		RETW 	6H 			//01F8 	2106
		RETW 	41H 			//01F9 	2141
		RETW 	CH 			//01FA 	210C
		RETW 	0H 			//01FB 	2100
		RETW 	0H 			//01FC 	2100
		RETW 	0H 			//01FD 	2100
		RETW 	3H 			//01FE 	2103
		RETW 	1FH 			//01FF 	211F
		ORG		0200H
		RETW 	78H 			//0200 	2178
		RETW 	B7H 			//0201 	21B7
		RETW 	58H 			//0202 	2158
		RETW 	B7H 			//0203 	21B7
		RETW 	FFH 			//0204 	21FF
		RETW 	76H 			//0205 	2176
		RETW 	CFH 			//0206 	21CF
		RETW 	FFH 			//0207 	21FF
		ORG		0208H
		RETW 	F6H 			//0208 	21F6
		RETW 	6BH 			//0209 	216B
		RETW 	B5H 			//020A 	21B5
		RETW 	62H 			//020B 	2162
		RETW 	6H 			//020C 	2106
		RETW 	1H 			//020D 	2101
		RETW 	8H 			//020E 	2108
		RETW 	0H 			//020F 	2100
		ORG		0210H
		RETW 	9H 			//0210 	2109
		RETW 	14H 			//0211 	2114
		RETW 	1H 			//0212 	2101
		RETW 	0H 			//0213 	2100
		RETW 	0H 			//0214 	2100
		RETW 	0H 			//0215 	2100
		RETW 	0H 			//0216 	2100
		RETW 	0H 			//0217 	2100
		ORG		0218H
		RETW 	2DH 			//0218 	212D
		RETW 	7DH 			//0219 	217D
		RETW 	B5H 			//021A 	21B5
		RETW 	62H 			//021B 	2162
		RETW 	9H 			//021C 	2109
		RETW 	14H 			//021D 	2114
		RETW 	4H 			//021E 	2104
		RETW 	0H 			//021F 	2100
		ORG		0220H
		RETW 	0H 			//0220 	2100
		RETW 	0H 			//0221 	2100
		RETW 	0H 			//0222 	2100
		RETW 	0H 			//0223 	2100
		RETW 	21H 			//0224 	2121
		RETW 	ECH 			//0225 	21EC

		//;i2c.c: 542: char i;
		//;i2c.c: 543: POWER_INITIAL();
		LCALL 	36EH 			//0226 	336E

		//;i2c.c: 544: DelayS(1);
		LDWI 	1H 			//0227 	2A01
		ORG		0228H
		LCALL 	33EH 			//0228 	333E

		//;i2c.c: 545: DelayMs(500);
		LDWI 	F4H 			//0229 	2AF4
		STR 	44H 			//022A 	01C4
		LDWI 	1H 			//022B 	2A01
		STR 	45H 			//022C 	01C5
		LCALL 	2F0H 			//022D 	32F0

		//;i2c.c: 546: I2C_SendString(0x84,par1,sizeof(par1));
		LDWI 	F6H 			//022E 	2AF6
		STR 	47H 			//022F 	01C7
		ORG		0230H
		LDWI 	81H 			//0230 	2A81
		STR 	48H 			//0231 	01C8
		LDWI 	14H 			//0232 	2A14
		STR 	49H 			//0233 	01C9
		LDWI 	84H 			//0234 	2A84
		CLRR 	4AH 			//0235 	014A
		LCALL 	2CDH 			//0236 	32CD

		//;i2c.c: 547: DelayMs(100);
		LDWI 	64H 			//0237 	2A64
		ORG		0238H
		STR 	44H 			//0238 	01C4
		CLRR 	45H 			//0239 	0145
		LCALL 	2F0H 			//023A 	32F0

		//;i2c.c: 548: I2C_SendString(0x84,par2,sizeof(par2));
		LDWI 	12H 			//023B 	2A12
		STR 	47H 			//023C 	01C7
		LDWI 	81H 			//023D 	2A81
		STR 	48H 			//023E 	01C8
		LDWI 	44H 			//023F 	2A44
		ORG		0240H
		STR 	49H 			//0240 	01C9
		LDWI 	84H 			//0241 	2A84
		CLRR 	4AH 			//0242 	014A
		LCALL 	2CDH 			//0243 	32CD

		//;i2c.c: 549: DelayMs(100);
		LDWI 	64H 			//0244 	2A64
		STR 	44H 			//0245 	01C4
		CLRR 	45H 			//0246 	0145
		LCALL 	2F0H 			//0247 	32F0
		ORG		0248H

		//;i2c.c: 550: I2C_SendString(0x84,par3,sizeof(par3));
		LDWI 	86H 			//0248 	2A86
		STR 	47H 			//0249 	01C7
		LDWI 	81H 			//024A 	2A81
		STR 	48H 			//024B 	01C8
		LDWI 	2CH 			//024C 	2A2C
		STR 	49H 			//024D 	01C9
		LDWI 	84H 			//024E 	2A84
		CLRR 	4AH 			//024F 	014A
		ORG		0250H
		LCALL 	2CDH 			//0250 	32CD

		//;i2c.c: 551: DelayMs(100);
		LDWI 	64H 			//0251 	2A64
		STR 	44H 			//0252 	01C4
		CLRR 	45H 			//0253 	0145
		LCALL 	2F0H 			//0254 	32F0

		//;i2c.c: 552: I2C_SendString(0x84,par4,sizeof(par4));
		LDWI 	DAH 			//0255 	2ADA
		STR 	47H 			//0256 	01C7
		LDWI 	81H 			//0257 	2A81
		ORG		0258H
		STR 	48H 			//0258 	01C8
		LDWI 	1CH 			//0259 	2A1C
		STR 	49H 			//025A 	01C9
		LDWI 	84H 			//025B 	2A84
		CLRR 	4AH 			//025C 	014A
		LCALL 	2CDH 			//025D 	32CD

		//;i2c.c: 553: DelayMs(100);
		LDWI 	64H 			//025E 	2A64
		STR 	44H 			//025F 	01C4
		ORG		0260H
		CLRR 	45H 			//0260 	0145
		LCALL 	2F0H 			//0261 	32F0

		//;i2c.c: 554: I2C_SendString(0x84,par5,sizeof(par5));
		LDWI 	56H 			//0262 	2A56
		STR 	47H 			//0263 	01C7
		LDWI 	81H 			//0264 	2A81
		STR 	48H 			//0265 	01C8
		LDWI 	30H 			//0266 	2A30
		STR 	49H 			//0267 	01C9
		ORG		0268H
		LDWI 	84H 			//0268 	2A84
		CLRR 	4AH 			//0269 	014A
		LCALL 	2CDH 			//026A 	32CD

		//;i2c.c: 555: DelayMs(100);
		LDWI 	64H 			//026B 	2A64
		STR 	44H 			//026C 	01C4
		CLRR 	45H 			//026D 	0145
		LCALL 	2F0H 			//026E 	32F0

		//;i2c.c: 556: I2C_SendString(0x84,par6,sizeof(par6));
		LDWI 	B2H 			//026F 	2AB2
		ORG		0270H
		STR 	47H 			//0270 	01C7
		LDWI 	81H 			//0271 	2A81
		STR 	48H 			//0272 	01C8
		LDWI 	28H 			//0273 	2A28
		STR 	49H 			//0274 	01C9
		LDWI 	84H 			//0275 	2A84
		CLRR 	4AH 			//0276 	014A
		LCALL 	2CDH 			//0277 	32CD
		ORG		0278H

		//;i2c.c: 557: DelayMs(100);
		LDWI 	64H 			//0278 	2A64
		STR 	44H 			//0279 	01C4
		CLRR 	45H 			//027A 	0145
		LCALL 	2F0H 			//027B 	32F0

		//;i2c.c: 558: I2C_SendString(0x84,par7,sizeof(par7));
		LDWI 	AH 			//027C 	2A0A
		STR 	47H 			//027D 	01C7
		LDWI 	82H 			//027E 	2A82
		STR 	48H 			//027F 	01C8
		ORG		0280H
		LDWI 	10H 			//0280 	2A10
		STR 	49H 			//0281 	01C9
		LDWI 	84H 			//0282 	2A84
		CLRR 	4AH 			//0283 	014A
		LCALL 	2CDH 			//0284 	32CD

		//;i2c.c: 562: DelayS(30);
		LDWI 	1EH 			//0285 	2A1E
		LCALL 	33EH 			//0286 	333E

		//;i2c.c: 563: for(i = 0;i < 10;i++) {
		CLRR 	4FH 			//0287 	014F
		ORG		0288H

		//;i2c.c: 564: I2C_SendString(0x84,par_back_AOP,sizeof(par_back_AOP));
		LDWI 	1AH 			//0288 	2A1A
		STR 	47H 			//0289 	01C7
		LDWI 	82H 			//028A 	2A82
		STR 	48H 			//028B 	01C8
		LDWI 	CH 			//028C 	2A0C
		STR 	49H 			//028D 	01C9
		LDWI 	84H 			//028E 	2A84
		CLRR 	4AH 			//028F 	014A
		ORG		0290H
		LCALL 	2CDH 			//0290 	32CD

		//;i2c.c: 565: DelayS(30);
		LDWI 	1EH 			//0291 	2A1E
		LCALL 	33EH 			//0292 	333E
		LDWI 	AH 			//0293 	2A0A
		INCR	4FH,1 			//0294 	09CF
		SUBWR 	4FH,0 			//0295 	0C4F
		BTSS 	STATUS,0 		//0296 	1C03
		LJUMP 	288H 			//0297 	3A88
		ORG		0298H

		//;i2c.c: 568: I2C_SendString(0x84,par_back_AOP,sizeof(par_back_AOP));
		LDWI 	1AH 			//0298 	2A1A
		STR 	47H 			//0299 	01C7
		LDWI 	82H 			//029A 	2A82
		STR 	48H 			//029B 	01C8
		LDWI 	CH 			//029C 	2A0C
		STR 	49H 			//029D 	01C9
		LDWI 	84H 			//029E 	2A84
		CLRR 	4AH 			//029F 	014A
		ORG		02A0H
		LCALL 	2CDH 			//02A0 	32CD

		//;i2c.c: 569: DelayM(5);
		LDWI 	5H 			//02A1 	2A05
		LCALL 	37DH 			//02A2 	337D
		LJUMP 	298H 			//02A3 	3A98

		//;i2c.c: 574: while(1)
		//;i2c.c: 575: {
		//;i2c.c: 576: _nop();
		NOP		 					//02A4 	0000
		LJUMP 	2A4H 			//02A5 	3AA4
		STR 	45H 			//02A6 	01C5

		//;i2c.c: 239: unsigned char t;
		//;i2c.c: 240: TRISA2 =0;
		BSR 	STATUS,5 		//02A7 	1A83
		ORG		02A8H
		BCR 	5H,2 			//02A8 	1105

		//;i2c.c: 241: RA4=0;
		BCR 	STATUS,5 		//02A9 	1283
		BCR 	5H,4 			//02AA 	1205

		//;i2c.c: 242: for(t=0;t<8;t++)
		CLRR 	46H 			//02AB 	0146

		//;i2c.c: 243: {
		//;i2c.c: 244: if((txd&0x80)>>7)
		LDR 	45H,0 			//02AC 	0845
		STR 	44H 			//02AD 	01C4
		LDWI 	7H 			//02AE 	2A07
		BCR 	STATUS,0 		//02AF 	1003
		ORG		02B0H
		RRR	44H,1 			//02B0 	06C4
		ADDWI 	FFH 			//02B1 	27FF
		BTSS 	STATUS,2 		//02B2 	1D03
		LJUMP 	2AFH 			//02B3 	3AAF
		BTSS 	44H,0 			//02B4 	1C44
		LJUMP 	2B9H 			//02B5 	3AB9

		//;i2c.c: 245: RA2=1;
		BCR 	STATUS,5 		//02B6 	1283
		BSR 	5H,2 			//02B7 	1905
		ORG		02B8H
		LJUMP 	2BBH 			//02B8 	3ABB

		//;i2c.c: 246: else
		//;i2c.c: 247: RA2=0;
		BCR 	STATUS,5 		//02B9 	1283
		BCR 	5H,2 			//02BA 	1105
		LDWI 	5H 			//02BB 	2A05

		//;i2c.c: 248: txd<<=1;
		BCR 	STATUS,0 		//02BC 	1003
		RLR 	45H,1 			//02BD 	05C5

		//;i2c.c: 249: DelayUs(5);
		LCALL 	387H 			//02BE 	3387
		LDWI 	5H 			//02BF 	2A05
		ORG		02C0H

		//;i2c.c: 250: RA4=1;
		BCR 	STATUS,5 		//02C0 	1283
		BSR 	5H,4 			//02C1 	1A05

		//;i2c.c: 251: DelayUs(5);
		LCALL 	387H 			//02C2 	3387
		LDWI 	5H 			//02C3 	2A05

		//;i2c.c: 252: RA4=0;
		BCR 	STATUS,5 		//02C4 	1283
		BCR 	5H,4 			//02C5 	1205

		//;i2c.c: 253: DelayUs(5);
		LCALL 	387H 			//02C6 	3387
		LDWI 	8H 			//02C7 	2A08
		ORG		02C8H
		INCR	46H,1 			//02C8 	09C6
		SUBWR 	46H,0 			//02C9 	0C46
		BTSC 	STATUS,0 		//02CA 	1403
		RET		 					//02CB 	0004
		LJUMP 	2ACH 			//02CC 	3AAC
		STR 	4BH 			//02CD 	01CB

		//;i2c.c: 324: unsigned char i;
		//;i2c.c: 325: IIC_Start();
		LCALL 	35FH 			//02CE 	335F

		//;i2c.c: 326: IIC_Send_Byte(chip_addr);
		LDR 	4BH,0 			//02CF 	084B
		ORG		02D0H
		LCALL 	2A6H 			//02D0 	32A6

		//;i2c.c: 328: if(IIC_Wait_Ack()==1){
		LCALL 	326H 			//02D1 	3326
		XORWI 	1H 			//02D2 	2601
		BTSC 	STATUS,2 		//02D3 	1503
		RET		 					//02D4 	0004

		//;i2c.c: 331: }
		//;i2c.c: 333: for(i=0; i<Number; i++) {
		CLRR 	4CH 			//02D5 	014C
		LDR 	4AH,0 			//02D6 	084A
		XORWI 	80H 			//02D7 	2680
		ORG		02D8H
		SUBWI 	80H 			//02D8 	2880
		BTSS 	STATUS,2 		//02D9 	1D03
		LJUMP 	2DDH 			//02DA 	3ADD
		LDR 	49H,0 			//02DB 	0849
		SUBWR 	4CH,0 			//02DC 	0C4C
		BTSC 	STATUS,0 		//02DD 	1403
		LJUMP 	2EFH 			//02DE 	3AEF

		//;i2c.c: 334: IIC_Send_Byte(*buffer);
		LDR 	48H,0 			//02DF 	0848
		ORG		02E0H
		BCR 	STATUS,5 		//02E0 	1283
		STR 	7FH 			//02E1 	01FF
		LDR 	47H,0 			//02E2 	0847
		STR 	FSR 			//02E3 	0184
		LCALL 	100H 			//02E4 	3100
		LCALL 	2A6H 			//02E5 	32A6

		//;i2c.c: 335: if(IIC_Wait_Ack()==1) {
		LCALL 	326H 			//02E6 	3326
		XORWI 	1H 			//02E7 	2601
		ORG		02E8H
		BTSC 	STATUS,2 		//02E8 	1503
		RET		 					//02E9 	0004

		//;i2c.c: 338: }
		//;i2c.c: 339: buffer++;
		INCR	47H,1 			//02EA 	09C7
		BTSC 	STATUS,2 		//02EB 	1503
		INCR	48H,1 			//02EC 	09C8
		INCR	4CH,1 			//02ED 	09CC
		LJUMP 	2D6H 			//02EE 	3AD6

		//;i2c.c: 340: }
		//;i2c.c: 341: IIC_Stop();
		LJUMP 	350H 			//02EF 	3B50
		ORG		02F0H

		//;i2c.c: 103: unsigned int a,b;
		//;i2c.c: 104: for(a=0;a<Time;a++)
		CLRR 	46H 			//02F0 	0146
		CLRR 	47H 			//02F1 	0147
		LDR 	45H,0 			//02F2 	0845
		SUBWR 	47H,0 			//02F3 	0C47
		BTSS 	STATUS,2 		//02F4 	1D03
		LJUMP 	2F8H 			//02F5 	3AF8
		LDR 	44H,0 			//02F6 	0844
		SUBWR 	46H,0 			//02F7 	0C46
		ORG		02F8H
		BTSC 	STATUS,0 		//02F8 	1403
		RET		 					//02F9 	0004

		//;i2c.c: 105: {
		//;i2c.c: 106: for(b=0;b<5;b++)
		CLRR 	48H 			//02FA 	0148
		CLRR 	49H 			//02FB 	0149

		//;i2c.c: 107: {
		//;i2c.c: 108: DelayUs(98);
		LDWI 	62H 			//02FC 	2A62
		LCALL 	387H 			//02FD 	3387
		INCR	48H,1 			//02FE 	09C8
		BTSC 	STATUS,2 		//02FF 	1503
		ORG		0300H
		INCR	49H,1 			//0300 	09C9
		LDWI 	0H 			//0301 	2A00
		SUBWR 	49H,0 			//0302 	0C49
		LDWI 	5H 			//0303 	2A05
		BTSC 	STATUS,2 		//0304 	1503
		SUBWR 	48H,0 			//0305 	0C48
		BTSS 	STATUS,0 		//0306 	1C03
		LJUMP 	2FCH 			//0307 	3AFC
		ORG		0308H
		INCR	46H,1 			//0308 	09C6
		BTSC 	STATUS,2 		//0309 	1503
		INCR	47H,1 			//030A 	09C7
		LJUMP 	2F2H 			//030B 	3AF2

		//;i2c.c: 394: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//030C 	168B
		BTSS 	INTCON,2 		//030D 	1D0B
		LJUMP 	314H 			//030E 	3B14

		//;i2c.c: 395: {
		//;i2c.c: 396: TMR0 = 49;
		LDWI 	31H 			//030F 	2A31
		ORG		0310H
		BCR 	STATUS,5 		//0310 	1283
		STR 	1H 			//0311 	0181

		//;i2c.c: 398: T0IF = 0;
		BCR 	INTCON,2 		//0312 	110B

		//;i2c.c: 399: T0IE = 0;
		BCR 	INTCON,5 		//0313 	128B

		//;i2c.c: 400: }
		//;i2c.c: 403: if(PAIE && PAIF)
		BTSC 	INTCON,3 		//0314 	158B
		BTSS 	INTCON,0 		//0315 	1C0B
		LJUMP 	31FH 			//0316 	3B1F

		//;i2c.c: 404: {
		//;i2c.c: 405: ReadAPin = PORTA;
		BCR 	STATUS,5 		//0317 	1283
		ORG		0318H
		LDR 	5H,0 			//0318 	0805

		//;i2c.c: 406: PAIF = 0;
		BCR 	INTCON,0 		//0319 	100B

		//;i2c.c: 407: if(RA1 == 0)
		BTSC 	5H,1 			//031A 	1485
		LJUMP 	31FH 			//031B 	3B1F

		//;i2c.c: 408: {
		//;i2c.c: 409: PAIE = 0;
		BCR 	INTCON,3 		//031C 	118B

		//;i2c.c: 411: RXFLAG = 1;
		BSR 	STATUS,5 		//031D 	1A83
		BCR 	16H,2 			//031E 	1116
		LDR 	41H,0 			//031F 	0841
		ORG		0320H
		STR 	PCLATH 			//0320 	018A
		SWAPR 	40H,0 			//0321 	0740
		STR 	STATUS 			//0322 	0183
		SWAPR 	7EH,1 			//0323 	07FE
		SWAPR 	7EH,0 			//0324 	077E
		RETI		 			//0325 	0009
		LDWI 	5H 			//0326 	2A05

		//;i2c.c: 181: unsigned char ucErrTime=0;
		CLRR 	44H 			//0327 	0144
		ORG		0328H

		//;i2c.c: 182: TRISA2 =1;
		BSR 	STATUS,5 		//0328 	1A83
		BSR 	5H,2 			//0329 	1905

		//;i2c.c: 183: RA2=1;
		BCR 	STATUS,5 		//032A 	1283
		BSR 	5H,2 			//032B 	1905

		//;i2c.c: 184: DelayUs(5);
		LCALL 	387H 			//032C 	3387
		LDWI 	5H 			//032D 	2A05

		//;i2c.c: 185: RA4=1;
		BCR 	STATUS,5 		//032E 	1283
		BSR 	5H,4 			//032F 	1A05
		ORG		0330H

		//;i2c.c: 186: DelayUs(5);
		LCALL 	387H 			//0330 	3387

		//;i2c.c: 187: while(RA2)
		BCR 	STATUS,5 		//0331 	1283
		BTSS 	5H,2 			//0332 	1D05
		LJUMP 	33BH 			//0333 	3B3B
		LDWI 	FBH 			//0334 	2AFB

		//;i2c.c: 188: {
		//;i2c.c: 189: ucErrTime++;
		INCR	44H,1 			//0335 	09C4

		//;i2c.c: 190: if(ucErrTime>250)
		SUBWR 	44H,0 			//0336 	0C44
		BTSS 	STATUS,0 		//0337 	1C03
		ORG		0338H
		LJUMP 	331H 			//0338 	3B31

		//;i2c.c: 191: {
		//;i2c.c: 192: IIC_Stop();
		LCALL 	350H 			//0339 	3350

		//;i2c.c: 193: return 1;
		RETW 	1H 			//033A 	2101
		LDWI 	0H 			//033B 	2A00

		//;i2c.c: 194: }
		//;i2c.c: 195: }
		//;i2c.c: 196: RA4=0;
		BCR 	5H,4 			//033C 	1205

		//;i2c.c: 197: return 0;
		RET		 					//033D 	0004
		STR 	4AH 			//033E 	01CA

		//;i2c.c: 120: unsigned char a,b;
		//;i2c.c: 121: for(a=0;a<Time;a++)
		CLRR 	4BH 			//033F 	014B
		ORG		0340H
		LDR 	4AH,0 			//0340 	084A
		SUBWR 	4BH,0 			//0341 	0C4B
		BTSC 	STATUS,0 		//0342 	1403
		RET		 					//0343 	0004

		//;i2c.c: 122: {
		//;i2c.c: 123: for(b=0;b<10;b++)
		CLRR 	4CH 			//0344 	014C

		//;i2c.c: 124: {
		//;i2c.c: 125: DelayMs(100);
		LDWI 	64H 			//0345 	2A64
		STR 	44H 			//0346 	01C4
		CLRR 	45H 			//0347 	0145
		ORG		0348H
		LCALL 	2F0H 			//0348 	32F0
		LDWI 	AH 			//0349 	2A0A
		INCR	4CH,1 			//034A 	09CC
		SUBWR 	4CH,0 			//034B 	0C4C
		BTSS 	STATUS,0 		//034C 	1C03
		LJUMP 	345H 			//034D 	3B45
		INCR	4BH,1 			//034E 	09CB
		LJUMP 	340H 			//034F 	3B40
		ORG		0350H
		LDWI 	AH 			//0350 	2A0A

		//;i2c.c: 163: TRISA2 =0;
		BSR 	STATUS,5 		//0351 	1A83
		BCR 	5H,2 			//0352 	1105

		//;i2c.c: 164: RA4=0;
		BCR 	STATUS,5 		//0353 	1283
		BCR 	5H,4 			//0354 	1205

		//;i2c.c: 165: RA2=0;
		BCR 	5H,2 			//0355 	1105

		//;i2c.c: 166: DelayUs(10);
		LCALL 	387H 			//0356 	3387
		LDWI 	AH 			//0357 	2A0A
		ORG		0358H

		//;i2c.c: 167: RA4=1;
		BCR 	STATUS,5 		//0358 	1283
		BSR 	5H,4 			//0359 	1A05

		//;i2c.c: 168: DelayUs(10);
		LCALL 	387H 			//035A 	3387
		LDWI 	AH 			//035B 	2A0A

		//;i2c.c: 169: RA2=1;
		BCR 	STATUS,5 		//035C 	1283
		BSR 	5H,2 			//035D 	1905

		//;i2c.c: 170: DelayUs(10);
		LJUMP 	387H 			//035E 	3B87
		LDWI 	AH 			//035F 	2A0A
		ORG		0360H

		//;i2c.c: 146: TRISA2 =0;
		BSR 	STATUS,5 		//0360 	1A83
		BCR 	5H,2 			//0361 	1105

		//;i2c.c: 147: RA2=1;
		BCR 	STATUS,5 		//0362 	1283
		BSR 	5H,2 			//0363 	1905

		//;i2c.c: 148: RA4=1;
		BSR 	5H,4 			//0364 	1A05

		//;i2c.c: 149: DelayUs(10);
		LCALL 	387H 			//0365 	3387
		LDWI 	AH 			//0366 	2A0A

		//;i2c.c: 150: RA2=0;
		BCR 	STATUS,5 		//0367 	1283
		ORG		0368H
		BCR 	5H,2 			//0368 	1105

		//;i2c.c: 151: DelayUs(10);
		LCALL 	387H 			//0369 	3387
		LDWI 	AH 			//036A 	2A0A

		//;i2c.c: 152: RA4=0;
		BCR 	STATUS,5 		//036B 	1283
		BCR 	5H,4 			//036C 	1205

		//;i2c.c: 153: DelayUs(10);
		LJUMP 	387H 			//036D 	3B87

		//;i2c.c: 63: OSCCON = 0X00|0X70|0X01;
		LDWI 	71H 			//036E 	2A71
		BSR 	STATUS,5 		//036F 	1A83
		ORG		0370H
		STR 	FH 			//0370 	018F

		//;i2c.c: 67: INTCON = 0;
		CLRR 	INTCON 			//0371 	010B

		//;i2c.c: 68: PORTA = 0B00000000;
		BCR 	STATUS,5 		//0372 	1283
		CLRR 	5H 			//0373 	0105

		//;i2c.c: 69: TRISA = 0B11101011;
		LDWI 	EBH 			//0374 	2AEB
		BSR 	STATUS,5 		//0375 	1A83
		STR 	5H 			//0376 	0185

		//;i2c.c: 70: WPUA = 0B00000000;
		CLRR 	15H 			//0377 	0115
		ORG		0378H

		//;i2c.c: 73: OPTION = 0B00001000;
		LDWI 	8H 			//0378 	2A08
		STR 	1H 			//0379 	0181

		//;i2c.c: 75: MSCKCON = 0B00000000;
		BCR 	STATUS,5 		//037A 	1283
		CLRR 	1BH 			//037B 	011B
		RET		 					//037C 	0004
		STR 	4DH 			//037D 	01CD

		//;i2c.c: 132: unsigned char a;
		//;i2c.c: 133: for(a=0;a<Time;a++)
		CLRR 	4EH 			//037E 	014E
		LDR 	4DH,0 			//037F 	084D
		ORG		0380H
		SUBWR 	4EH,0 			//0380 	0C4E
		BTSC 	STATUS,0 		//0381 	1403
		RET		 					//0382 	0004

		//;i2c.c: 134: {
		//;i2c.c: 135: DelayS(60);
		LDWI 	3CH 			//0383 	2A3C
		LCALL 	33EH 			//0384 	333E
		INCR	4EH,1 			//0385 	09CE
		LJUMP 	37FH 			//0386 	3B7F
		STR 	42H 			//0387 	01C2
		ORG		0388H

		//;i2c.c: 89: unsigned char a;
		//;i2c.c: 90: for(a=0;a<Time;a++)
		CLRR 	43H 			//0388 	0143
		LDR 	42H,0 			//0389 	0842
		SUBWR 	43H,0 			//038A 	0C43
		BTSC 	STATUS,0 		//038B 	1403
		RET		 					//038C 	0004

		//;i2c.c: 91: {
		//;i2c.c: 92: _nop();
		NOP		 					//038D 	0000
		INCR	43H,1 			//038E 	09C3
		LJUMP 	389H 			//038F 	3B89
		ORG		0390H
		CLRR 	STATUS 			//0390 	0103
		LJUMP 	226H 			//0391 	3A26
			END
