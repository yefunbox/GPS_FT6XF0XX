//Deviec:FT60F01X
//-----------------------Variable---------------------------------
		_ISR		EQU		14EF10H
		_par1		EQU		14EF10H
		_par2		EQU		14EF10H
		_par3		EQU		14EF10H
		_par4		EQU		14EF10H
		_par5		EQU		14EF10H
		_par6		EQU		14EF10H
		_par7		EQU		14EF10H
		_par8		EQU		14EF10H
		_par9		EQU		14EF10H
		_par10		EQU		14EF10H
		_par11		EQU		14EF10H
		_par12		EQU		14EF10H
		_par13		EQU		14EF10H
		_ISR		EQU		14EF10H
//-----------------------Variable END---------------------------------
		ORG		0000H
		LJUMP 	0AH 			//0000 	380A
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	40H 			//0006 	01C0
		LDR 	PCLATH,0 		//0007 	080A
		STR 	41H 			//0008 	01C1
		LJUMP 	387H 			//0009 	3B87
		LJUMP 	3F8H 			//000A 	3BF8
		STR 	4DH 			//000B 	01CD
		ORG		000CH

		//;i2c.c: 132: unsigned char a;
		//;i2c.c: 133: for(a=0;a<Time;a++)
		CLRR 	4EH 			//000C 	014E
		LDR 	4DH,0 			//000D 	084D
		SUBWR 	4EH,0 			//000E 	0C4E
		BTSC 	STATUS,0 		//000F 	1403
		RET		 					//0010 	0004

		//;i2c.c: 134: {
		//;i2c.c: 135: DelayS(60);
		LDWI 	3CH 			//0011 	2A3C
		LCALL 	3B9H 			//0012 	33B9
		INCR	4EH,1 			//0013 	09CE
		ORG		0014H
		LJUMP 	0DH 			//0014 	380D
		STR 	42H 			//0015 	01C2

		//;i2c.c: 89: unsigned char a;
		//;i2c.c: 90: for(a=0;a<Time;a++)
		CLRR 	43H 			//0016 	0143
		LDR 	42H,0 			//0017 	0842
		SUBWR 	43H,0 			//0018 	0C43
		BTSC 	STATUS,0 		//0019 	1403
		RET		 					//001A 	0004

		//;i2c.c: 91: {
		//;i2c.c: 92: _nop();
		NOP		 					//001B 	0000
		ORG		001CH
		INCR	43H,1 			//001C 	09C3
		LJUMP 	17H 			//001D 	3817
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
		RETW 	8H 			//018E 	2108
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
		RETW 	5H 			//0198 	2105
		RETW 	0H 			//0199 	2100
		RETW 	FAH 			//019A 	21FA
		RETW 	0H 			//019B 	2100
		RETW 	FAH 			//019C 	21FA
		RETW 	0H 			//019D 	2100
		RETW 	64H 			//019E 	2164
		RETW 	0H 			//019F 	2100
		ORG		01A0H
		RETW 	5EH 			//01A0 	215E
		RETW 	1H 			//01A1 	2101
		RETW 	64H 			//01A2 	2164
		RETW 	3CH 			//01A3 	213C
		RETW 	4H 			//01A4 	2104
		RETW 	1CH 			//01A5 	211C
		RETW 	0H 			//01A6 	2100
		RETW 	0H 			//01A7 	2100
		ORG		01A8H
		RETW 	0H 			//01A8 	2100
		RETW 	0H 			//01A9 	2100
		RETW 	0H 			//01AA 	2100
		RETW 	0H 			//01AB 	2100
		RETW 	0H 			//01AC 	2100
		RETW 	0H 			//01AD 	2100
		RETW 	0H 			//01AE 	2100
		RETW 	0H 			//01AF 	2100
		ORG		01B0H
		RETW 	AH 			//01B0 	210A
		RETW 	28H 			//01B1 	2128
		RETW 	B5H 			//01B2 	21B5
		RETW 	62H 			//01B3 	2162
		RETW 	6H 			//01B4 	2106
		RETW 	0H 			//01B5 	2100
		RETW 	14H 			//01B6 	2114
		RETW 	0H 			//01B7 	2100
		ORG		01B8H
		RETW 	1H 			//01B8 	2101
		RETW 	0H 			//01B9 	2100
		RETW 	0H 			//01BA 	2100
		RETW 	0H 			//01BB 	2100
		RETW 	D0H 			//01BC 	21D0
		RETW 	8H 			//01BD 	2108
		RETW 	0H 			//01BE 	2100
		RETW 	0H 			//01BF 	2100
		ORG		01C0H
		RETW 	0H 			//01C0 	2100
		RETW 	C2H 			//01C1 	21C2
		RETW 	1H 			//01C2 	2101
		RETW 	0H 			//01C3 	2100
		RETW 	7H 			//01C4 	2107
		RETW 	0H 			//01C5 	2100
		RETW 	3H 			//01C6 	2103
		RETW 	0H 			//01C7 	2100
		ORG		01C8H
		RETW 	0H 			//01C8 	2100
		RETW 	0H 			//01C9 	2100
		RETW 	0H 			//01CA 	2100
		RETW 	0H 			//01CB 	2100
		RETW 	C0H 			//01CC 	21C0
		RETW 	7EH 			//01CD 	217E
		RETW 	B5H 			//01CE 	21B5
		RETW 	62H 			//01CF 	2162
		ORG		01D0H
		RETW 	6H 			//01D0 	2106
		RETW 	41H 			//01D1 	2141
		RETW 	CH 			//01D2 	210C
		RETW 	0H 			//01D3 	2100
		RETW 	0H 			//01D4 	2100
		RETW 	0H 			//01D5 	2100
		RETW 	3H 			//01D6 	2103
		RETW 	1FH 			//01D7 	211F
		ORG		01D8H
		RETW 	78H 			//01D8 	2178
		RETW 	B7H 			//01D9 	21B7
		RETW 	58H 			//01DA 	2158
		RETW 	B7H 			//01DB 	21B7
		RETW 	FFH 			//01DC 	21FF
		RETW 	76H 			//01DD 	2176
		RETW 	CFH 			//01DE 	21CF
		RETW 	FFH 			//01DF 	21FF
		ORG		01E0H
		RETW 	F6H 			//01E0 	21F6
		RETW 	6BH 			//01E1 	216B
		RETW 	B5H 			//01E2 	21B5
		RETW 	62H 			//01E3 	2162
		RETW 	6H 			//01E4 	2106
		RETW 	1H 			//01E5 	2101
		RETW 	8H 			//01E6 	2108
		RETW 	0H 			//01E7 	2100
		ORG		01E8H
		RETW 	1H 			//01E8 	2101
		RETW 	7H 			//01E9 	2107
		RETW 	0H 			//01EA 	2100
		RETW 	1H 			//01EB 	2101
		RETW 	0H 			//01EC 	2100
		RETW 	0H 			//01ED 	2100
		RETW 	0H 			//01EE 	2100
		RETW 	0H 			//01EF 	2100
		ORG		01F0H
		RETW 	18H 			//01F0 	2118
		RETW 	E1H 			//01F1 	21E1
		RETW 	B5H 			//01F2 	21B5
		RETW 	62H 			//01F3 	2162
		RETW 	6H 			//01F4 	2106
		RETW 	1H 			//01F5 	2101
		RETW 	8H 			//01F6 	2108
		RETW 	0H 			//01F7 	2100
		ORG		01F8H
		RETW 	1H 			//01F8 	2101
		RETW 	12H 			//01F9 	2112
		RETW 	0H 			//01FA 	2100
		RETW 	1H 			//01FB 	2101
		RETW 	0H 			//01FC 	2100
		RETW 	0H 			//01FD 	2100
		RETW 	0H 			//01FE 	2100
		RETW 	0H 			//01FF 	2100
		ORG		0200H
		RETW 	23H 			//0200 	2123
		RETW 	2EH 			//0201 	212E
		RETW 	B5H 			//0202 	21B5
		RETW 	62H 			//0203 	2162
		RETW 	6H 			//0204 	2106
		RETW 	1H 			//0205 	2101
		RETW 	8H 			//0206 	2108
		RETW 	0H 			//0207 	2100
		ORG		0208H
		RETW 	9H 			//0208 	2109
		RETW 	14H 			//0209 	2114
		RETW 	1H 			//020A 	2101
		RETW 	0H 			//020B 	2100
		RETW 	0H 			//020C 	2100
		RETW 	0H 			//020D 	2100
		RETW 	0H 			//020E 	2100
		RETW 	0H 			//020F 	2100
		ORG		0210H
		RETW 	2DH 			//0210 	212D
		RETW 	7DH 			//0211 	217D
		RETW 	B5H 			//0212 	21B5
		RETW 	62H 			//0213 	2162
		RETW 	6H 			//0214 	2106
		RETW 	1H 			//0215 	2101
		RETW 	8H 			//0216 	2108
		RETW 	0H 			//0217 	2100
		ORG		0218H
		RETW 	1H 			//0218 	2101
		RETW 	30H 			//0219 	2130
		RETW 	0H 			//021A 	2100
		RETW 	1H 			//021B 	2101
		RETW 	0H 			//021C 	2100
		RETW 	0H 			//021D 	2100
		RETW 	0H 			//021E 	2100
		RETW 	0H 			//021F 	2100
		ORG		0220H
		RETW 	41H 			//0220 	2141
		RETW 	0H 			//0221 	2100
		RETW 	B5H 			//0222 	21B5
		RETW 	62H 			//0223 	2162
		RETW 	6H 			//0224 	2106
		RETW 	1H 			//0225 	2101
		RETW 	8H 			//0226 	2108
		RETW 	0H 			//0227 	2100
		ORG		0228H
		RETW 	1H 			//0228 	2101
		RETW 	1H 			//0229 	2101
		RETW 	0H 			//022A 	2100
		RETW 	1H 			//022B 	2101
		RETW 	0H 			//022C 	2100
		RETW 	0H 			//022D 	2100
		RETW 	0H 			//022E 	2100
		RETW 	0H 			//022F 	2100
		ORG		0230H
		RETW 	12H 			//0230 	2112
		RETW 	B7H 			//0231 	21B7
		RETW 	B5H 			//0232 	21B5
		RETW 	62H 			//0233 	2162
		RETW 	6H 			//0234 	2106
		RETW 	1H 			//0235 	2101
		RETW 	8H 			//0236 	2108
		RETW 	0H 			//0237 	2100
		ORG		0238H
		RETW 	1H 			//0238 	2101
		RETW 	2H 			//0239 	2102
		RETW 	0H 			//023A 	2100
		RETW 	1H 			//023B 	2101
		RETW 	0H 			//023C 	2100
		RETW 	0H 			//023D 	2100
		RETW 	0H 			//023E 	2100
		RETW 	0H 			//023F 	2100
		ORG		0240H
		RETW 	13H 			//0240 	2113
		RETW 	BEH 			//0241 	21BE
		RETW 	B5H 			//0242 	21B5
		RETW 	62H 			//0243 	2162
		RETW 	6H 			//0244 	2106
		RETW 	8H 			//0245 	2108
		RETW 	6H 			//0246 	2106
		RETW 	0H 			//0247 	2100
		ORG		0248H
		RETW 	3CH 			//0248 	213C
		RETW 	0H 			//0249 	2100
		RETW 	1H 			//024A 	2101
		RETW 	0H 			//024B 	2100
		RETW 	1H 			//024C 	2101
		RETW 	0H 			//024D 	2100
		RETW 	52H 			//024E 	2152
		RETW 	22H 			//024F 	2122
		ORG		0250H
		RETW 	B5H 			//0250 	21B5
		RETW 	62H 			//0251 	2162
		RETW 	9H 			//0252 	2109
		RETW 	14H 			//0253 	2114
		RETW 	4H 			//0254 	2104
		RETW 	0H 			//0255 	2100
		RETW 	0H 			//0256 	2100
		RETW 	0H 			//0257 	2100
		ORG		0258H
		RETW 	0H 			//0258 	2100
		RETW 	0H 			//0259 	2100
		RETW 	21H 			//025A 	2121
		RETW 	ECH 			//025B 	21EC

		//;i2c.c: 559: char i;
		//;i2c.c: 560: POWER_INITIAL();
		LCALL 	3E9H 			//025C 	33E9

		//;i2c.c: 561: DelayS(1);
		LDWI 	1H 			//025D 	2A01
		LCALL 	3B9H 			//025E 	33B9

		//;i2c.c: 562: DelayMs(500);
		LDWI 	F4H 			//025F 	2AF4
		ORG		0260H
		STR 	44H 			//0260 	01C4
		LDWI 	1H 			//0261 	2A01
		STR 	45H 			//0262 	01C5
		LCALL 	36BH 			//0263 	336B

		//;i2c.c: 563: I2C_SendString(0x84,par1,sizeof(par1));
		LDWI 	CEH 			//0264 	2ACE
		STR 	47H 			//0265 	01C7
		LDWI 	81H 			//0266 	2A81
		STR 	48H 			//0267 	01C8
		ORG		0268H
		LDWI 	14H 			//0268 	2A14
		STR 	49H 			//0269 	01C9
		LDWI 	84H 			//026A 	2A84
		CLRR 	4AH 			//026B 	014A
		LCALL 	348H 			//026C 	3348

		//;i2c.c: 564: DelayMs(100);
		LDWI 	64H 			//026D 	2A64
		STR 	44H 			//026E 	01C4
		CLRR 	45H 			//026F 	0145
		ORG		0270H
		LCALL 	36BH 			//0270 	336B

		//;i2c.c: 565: I2C_SendString(0x84,par2,sizeof(par2));
		LDWI 	12H 			//0271 	2A12
		STR 	47H 			//0272 	01C7
		LDWI 	81H 			//0273 	2A81
		STR 	48H 			//0274 	01C8
		LDWI 	44H 			//0275 	2A44
		STR 	49H 			//0276 	01C9
		LDWI 	84H 			//0277 	2A84
		ORG		0278H
		CLRR 	4AH 			//0278 	014A
		LCALL 	348H 			//0279 	3348

		//;i2c.c: 566: DelayMs(100);
		LDWI 	64H 			//027A 	2A64
		STR 	44H 			//027B 	01C4
		CLRR 	45H 			//027C 	0145
		LCALL 	36BH 			//027D 	336B

		//;i2c.c: 567: I2C_SendString(0x84,par3,sizeof(par3));
		LDWI 	56H 			//027E 	2A56
		STR 	47H 			//027F 	01C7
		ORG		0280H
		LDWI 	81H 			//0280 	2A81
		STR 	48H 			//0281 	01C8
		LDWI 	30H 			//0282 	2A30
		STR 	49H 			//0283 	01C9
		LDWI 	84H 			//0284 	2A84
		CLRR 	4AH 			//0285 	014A
		LCALL 	348H 			//0286 	3348

		//;i2c.c: 568: DelayMs(100);
		LDWI 	64H 			//0287 	2A64
		ORG		0288H
		STR 	44H 			//0288 	01C4
		CLRR 	45H 			//0289 	0145
		LCALL 	36BH 			//028A 	336B

		//;i2c.c: 569: I2C_SendString(0x84,par4,sizeof(par4));
		LDWI 	86H 			//028B 	2A86
		STR 	47H 			//028C 	01C7
		LDWI 	81H 			//028D 	2A81
		STR 	48H 			//028E 	01C8
		LDWI 	2CH 			//028F 	2A2C
		ORG		0290H
		STR 	49H 			//0290 	01C9
		LDWI 	84H 			//0291 	2A84
		CLRR 	4AH 			//0292 	014A
		LCALL 	348H 			//0293 	3348

		//;i2c.c: 570: DelayMs(100);
		LDWI 	64H 			//0294 	2A64
		STR 	44H 			//0295 	01C4
		CLRR 	45H 			//0296 	0145
		LCALL 	36BH 			//0297 	336B
		ORG		0298H

		//;i2c.c: 571: I2C_SendString(0x84,par5,sizeof(par5));
		LDWI 	B2H 			//0298 	2AB2
		STR 	47H 			//0299 	01C7
		LDWI 	81H 			//029A 	2A81
		STR 	48H 			//029B 	01C8
		LDWI 	1CH 			//029C 	2A1C
		STR 	49H 			//029D 	01C9
		LDWI 	84H 			//029E 	2A84
		CLRR 	4AH 			//029F 	014A
		ORG		02A0H
		LCALL 	348H 			//02A0 	3348

		//;i2c.c: 572: DelayMs(100);
		LDWI 	64H 			//02A1 	2A64
		STR 	44H 			//02A2 	01C4
		CLRR 	45H 			//02A3 	0145
		LCALL 	36BH 			//02A4 	336B

		//;i2c.c: 573: I2C_SendString(0x84,par6,sizeof(par6));
		LDWI 	42H 			//02A5 	2A42
		STR 	47H 			//02A6 	01C7
		LDWI 	82H 			//02A7 	2A82
		ORG		02A8H
		STR 	48H 			//02A8 	01C8
		LDWI 	EH 			//02A9 	2A0E
		STR 	49H 			//02AA 	01C9
		LDWI 	84H 			//02AB 	2A84
		CLRR 	4AH 			//02AC 	014A
		LCALL 	348H 			//02AD 	3348

		//;i2c.c: 574: DelayMs(100);
		LDWI 	64H 			//02AE 	2A64
		STR 	44H 			//02AF 	01C4
		ORG		02B0H
		CLRR 	45H 			//02B0 	0145
		LCALL 	36BH 			//02B1 	336B

		//;i2c.c: 575: I2C_SendString(0x84,par7,sizeof(par7));
		LDWI 	12H 			//02B2 	2A12
		STR 	47H 			//02B3 	01C7
		LDWI 	82H 			//02B4 	2A82
		STR 	48H 			//02B5 	01C8
		LDWI 	10H 			//02B6 	2A10
		STR 	49H 			//02B7 	01C9
		ORG		02B8H
		LDWI 	84H 			//02B8 	2A84
		CLRR 	4AH 			//02B9 	014A
		LCALL 	348H 			//02BA 	3348

		//;i2c.c: 576: DelayMs(100);
		LDWI 	64H 			//02BB 	2A64
		STR 	44H 			//02BC 	01C4
		CLRR 	45H 			//02BD 	0145
		LCALL 	36BH 			//02BE 	336B

		//;i2c.c: 577: I2C_SendString(0x84,par8,sizeof(par8));
		LDWI 	22H 			//02BF 	2A22
		ORG		02C0H
		STR 	47H 			//02C0 	01C7
		LDWI 	82H 			//02C1 	2A82
		STR 	48H 			//02C2 	01C8
		LDWI 	10H 			//02C3 	2A10
		STR 	49H 			//02C4 	01C9
		LDWI 	84H 			//02C5 	2A84
		CLRR 	4AH 			//02C6 	014A
		LCALL 	348H 			//02C7 	3348
		ORG		02C8H

		//;i2c.c: 578: DelayMs(100);
		LDWI 	64H 			//02C8 	2A64
		STR 	44H 			//02C9 	01C4
		CLRR 	45H 			//02CA 	0145
		LCALL 	36BH 			//02CB 	336B

		//;i2c.c: 579: I2C_SendString(0x84,par9,sizeof(par9));
		LDWI 	32H 			//02CC 	2A32
		STR 	47H 			//02CD 	01C7
		LDWI 	82H 			//02CE 	2A82
		STR 	48H 			//02CF 	01C8
		ORG		02D0H
		LDWI 	10H 			//02D0 	2A10
		STR 	49H 			//02D1 	01C9
		LDWI 	84H 			//02D2 	2A84
		CLRR 	4AH 			//02D3 	014A
		LCALL 	348H 			//02D4 	3348

		//;i2c.c: 580: DelayMs(100);
		LDWI 	64H 			//02D5 	2A64
		STR 	44H 			//02D6 	01C4
		CLRR 	45H 			//02D7 	0145
		ORG		02D8H
		LCALL 	36BH 			//02D8 	336B

		//;i2c.c: 581: I2C_SendString(0x84,par10,sizeof(par10));
		LDWI 	E2H 			//02D9 	2AE2
		STR 	47H 			//02DA 	01C7
		LDWI 	81H 			//02DB 	2A81
		STR 	48H 			//02DC 	01C8
		LDWI 	10H 			//02DD 	2A10
		STR 	49H 			//02DE 	01C9
		LDWI 	84H 			//02DF 	2A84
		ORG		02E0H
		CLRR 	4AH 			//02E0 	014A
		LCALL 	348H 			//02E1 	3348

		//;i2c.c: 582: DelayMs(100);
		LDWI 	64H 			//02E2 	2A64
		STR 	44H 			//02E3 	01C4
		CLRR 	45H 			//02E4 	0145
		LCALL 	36BH 			//02E5 	336B

		//;i2c.c: 583: I2C_SendString(0x84,par11,sizeof(par11));
		LDWI 	F2H 			//02E6 	2AF2
		STR 	47H 			//02E7 	01C7
		ORG		02E8H
		LDWI 	81H 			//02E8 	2A81
		STR 	48H 			//02E9 	01C8
		LDWI 	10H 			//02EA 	2A10
		STR 	49H 			//02EB 	01C9
		LDWI 	84H 			//02EC 	2A84
		CLRR 	4AH 			//02ED 	014A
		LCALL 	348H 			//02EE 	3348

		//;i2c.c: 584: DelayMs(100);
		LDWI 	64H 			//02EF 	2A64
		ORG		02F0H
		STR 	44H 			//02F0 	01C4
		CLRR 	45H 			//02F1 	0145
		LCALL 	36BH 			//02F2 	336B

		//;i2c.c: 585: I2C_SendString(0x84,par12,sizeof(par12));
		LDWI 	2H 			//02F3 	2A02
		STR 	47H 			//02F4 	01C7
		LDWI 	82H 			//02F5 	2A82
		STR 	48H 			//02F6 	01C8
		LDWI 	10H 			//02F7 	2A10
		ORG		02F8H
		STR 	49H 			//02F8 	01C9
		LDWI 	84H 			//02F9 	2A84
		CLRR 	4AH 			//02FA 	014A
		LCALL 	348H 			//02FB 	3348

		//;i2c.c: 586: DelayMs(100);
		LDWI 	64H 			//02FC 	2A64
		STR 	44H 			//02FD 	01C4
		CLRR 	45H 			//02FE 	0145
		LCALL 	36BH 			//02FF 	336B
		ORG		0300H

		//;i2c.c: 590: DelayS(50);
		LDWI 	32H 			//0300 	2A32
		LCALL 	3B9H 			//0301 	33B9

		//;i2c.c: 591: for(i = 0;i < 10;i++) {
		CLRR 	4FH 			//0302 	014F

		//;i2c.c: 592: I2C_SendString(0x84,par13,sizeof(par13));
		LDWI 	50H 			//0303 	2A50
		STR 	47H 			//0304 	01C7
		LDWI 	82H 			//0305 	2A82
		STR 	48H 			//0306 	01C8
		LDWI 	CH 			//0307 	2A0C
		ORG		0308H
		STR 	49H 			//0308 	01C9
		LDWI 	84H 			//0309 	2A84
		CLRR 	4AH 			//030A 	014A
		LCALL 	348H 			//030B 	3348

		//;i2c.c: 593: DelayS(30);
		LDWI 	1EH 			//030C 	2A1E
		LCALL 	3B9H 			//030D 	33B9
		LDWI 	AH 			//030E 	2A0A
		INCR	4FH,1 			//030F 	09CF
		ORG		0310H
		SUBWR 	4FH,0 			//0310 	0C4F
		BTSS 	STATUS,0 		//0311 	1C03
		LJUMP 	303H 			//0312 	3B03

		//;i2c.c: 596: I2C_SendString(0x84,par13,sizeof(par13));
		LDWI 	50H 			//0313 	2A50
		STR 	47H 			//0314 	01C7
		LDWI 	82H 			//0315 	2A82
		STR 	48H 			//0316 	01C8
		LDWI 	CH 			//0317 	2A0C
		ORG		0318H
		STR 	49H 			//0318 	01C9
		LDWI 	84H 			//0319 	2A84
		CLRR 	4AH 			//031A 	014A
		LCALL 	348H 			//031B 	3348

		//;i2c.c: 597: DelayM(5);
		LDWI 	5H 			//031C 	2A05
		LCALL 	BH 			//031D 	300B
		LJUMP 	313H 			//031E 	3B13

		//;i2c.c: 602: while(1)
		//;i2c.c: 603: {
		//;i2c.c: 604: _nop();
		NOP		 					//031F 	0000
		ORG		0320H
		LJUMP 	31FH 			//0320 	3B1F
		STR 	45H 			//0321 	01C5

		//;i2c.c: 239: unsigned char t;
		//;i2c.c: 240: TRISA2 =0;
		BSR 	STATUS,5 		//0322 	1A83
		BCR 	5H,2 			//0323 	1105

		//;i2c.c: 241: RA4=0;
		BCR 	STATUS,5 		//0324 	1283
		BCR 	5H,4 			//0325 	1205

		//;i2c.c: 242: for(t=0;t<8;t++)
		CLRR 	46H 			//0326 	0146

		//;i2c.c: 243: {
		//;i2c.c: 244: if((txd&0x80)>>7)
		LDR 	45H,0 			//0327 	0845
		ORG		0328H
		STR 	44H 			//0328 	01C4
		LDWI 	7H 			//0329 	2A07
		BCR 	STATUS,0 		//032A 	1003
		RRR	44H,1 			//032B 	06C4
		ADDWI 	FFH 			//032C 	27FF
		BTSS 	STATUS,2 		//032D 	1D03
		LJUMP 	32AH 			//032E 	3B2A
		BTSS 	44H,0 			//032F 	1C44
		ORG		0330H
		LJUMP 	334H 			//0330 	3B34

		//;i2c.c: 245: RA2=1;
		BCR 	STATUS,5 		//0331 	1283
		BSR 	5H,2 			//0332 	1905
		LJUMP 	336H 			//0333 	3B36

		//;i2c.c: 246: else
		//;i2c.c: 247: RA2=0;
		BCR 	STATUS,5 		//0334 	1283
		BCR 	5H,2 			//0335 	1105
		LDWI 	5H 			//0336 	2A05

		//;i2c.c: 248: txd<<=1;
		BCR 	STATUS,0 		//0337 	1003
		ORG		0338H
		RLR 	45H,1 			//0338 	05C5

		//;i2c.c: 249: DelayUs(5);
		LCALL 	15H 			//0339 	3015
		LDWI 	5H 			//033A 	2A05

		//;i2c.c: 250: RA4=1;
		BCR 	STATUS,5 		//033B 	1283
		BSR 	5H,4 			//033C 	1A05

		//;i2c.c: 251: DelayUs(5);
		LCALL 	15H 			//033D 	3015
		LDWI 	5H 			//033E 	2A05

		//;i2c.c: 252: RA4=0;
		BCR 	STATUS,5 		//033F 	1283
		ORG		0340H
		BCR 	5H,4 			//0340 	1205

		//;i2c.c: 253: DelayUs(5);
		LCALL 	15H 			//0341 	3015
		LDWI 	8H 			//0342 	2A08
		INCR	46H,1 			//0343 	09C6
		SUBWR 	46H,0 			//0344 	0C46
		BTSC 	STATUS,0 		//0345 	1403
		RET		 					//0346 	0004
		LJUMP 	327H 			//0347 	3B27
		ORG		0348H
		STR 	4BH 			//0348 	01CB

		//;i2c.c: 324: unsigned char i;
		//;i2c.c: 325: IIC_Start();
		LCALL 	3DAH 			//0349 	33DA

		//;i2c.c: 326: IIC_Send_Byte(chip_addr);
		LDR 	4BH,0 			//034A 	084B
		LCALL 	321H 			//034B 	3321

		//;i2c.c: 328: if(IIC_Wait_Ack()==1){
		LCALL 	3A1H 			//034C 	33A1
		XORWI 	1H 			//034D 	2601
		BTSC 	STATUS,2 		//034E 	1503
		RET		 					//034F 	0004
		ORG		0350H

		//;i2c.c: 331: }
		//;i2c.c: 333: for(i=0; i<Number; i++) {
		CLRR 	4CH 			//0350 	014C
		LDR 	4AH,0 			//0351 	084A
		XORWI 	80H 			//0352 	2680
		SUBWI 	80H 			//0353 	2880
		BTSS 	STATUS,2 		//0354 	1D03
		LJUMP 	358H 			//0355 	3B58
		LDR 	49H,0 			//0356 	0849
		SUBWR 	4CH,0 			//0357 	0C4C
		ORG		0358H
		BTSC 	STATUS,0 		//0358 	1403
		LJUMP 	36AH 			//0359 	3B6A

		//;i2c.c: 334: IIC_Send_Byte(*buffer);
		LDR 	48H,0 			//035A 	0848
		BCR 	STATUS,5 		//035B 	1283
		STR 	7FH 			//035C 	01FF
		LDR 	47H,0 			//035D 	0847
		STR 	FSR 			//035E 	0184
		LCALL 	100H 			//035F 	3100
		ORG		0360H
		LCALL 	321H 			//0360 	3321

		//;i2c.c: 335: if(IIC_Wait_Ack()==1) {
		LCALL 	3A1H 			//0361 	33A1
		XORWI 	1H 			//0362 	2601
		BTSC 	STATUS,2 		//0363 	1503
		RET		 					//0364 	0004

		//;i2c.c: 338: }
		//;i2c.c: 339: buffer++;
		INCR	47H,1 			//0365 	09C7
		BTSC 	STATUS,2 		//0366 	1503
		INCR	48H,1 			//0367 	09C8
		ORG		0368H
		INCR	4CH,1 			//0368 	09CC
		LJUMP 	351H 			//0369 	3B51

		//;i2c.c: 340: }
		//;i2c.c: 341: IIC_Stop();
		LJUMP 	3CBH 			//036A 	3BCB

		//;i2c.c: 103: unsigned int a,b;
		//;i2c.c: 104: for(a=0;a<Time;a++)
		CLRR 	46H 			//036B 	0146
		CLRR 	47H 			//036C 	0147
		LDR 	45H,0 			//036D 	0845
		SUBWR 	47H,0 			//036E 	0C47
		BTSS 	STATUS,2 		//036F 	1D03
		ORG		0370H
		LJUMP 	373H 			//0370 	3B73
		LDR 	44H,0 			//0371 	0844
		SUBWR 	46H,0 			//0372 	0C46
		BTSC 	STATUS,0 		//0373 	1403
		RET		 					//0374 	0004

		//;i2c.c: 105: {
		//;i2c.c: 106: for(b=0;b<5;b++)
		CLRR 	48H 			//0375 	0148
		CLRR 	49H 			//0376 	0149

		//;i2c.c: 107: {
		//;i2c.c: 108: DelayUs(98);
		LDWI 	62H 			//0377 	2A62
		ORG		0378H
		LCALL 	15H 			//0378 	3015
		INCR	48H,1 			//0379 	09C8
		BTSC 	STATUS,2 		//037A 	1503
		INCR	49H,1 			//037B 	09C9
		LDWI 	0H 			//037C 	2A00
		SUBWR 	49H,0 			//037D 	0C49
		LDWI 	5H 			//037E 	2A05
		BTSC 	STATUS,2 		//037F 	1503
		ORG		0380H
		SUBWR 	48H,0 			//0380 	0C48
		BTSS 	STATUS,0 		//0381 	1C03
		LJUMP 	377H 			//0382 	3B77
		INCR	46H,1 			//0383 	09C6
		BTSC 	STATUS,2 		//0384 	1503
		INCR	47H,1 			//0385 	09C7
		LJUMP 	36DH 			//0386 	3B6D

		//;i2c.c: 394: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//0387 	168B
		ORG		0388H
		BTSS 	INTCON,2 		//0388 	1D0B
		LJUMP 	38FH 			//0389 	3B8F

		//;i2c.c: 395: {
		//;i2c.c: 396: TMR0 = 49;
		LDWI 	31H 			//038A 	2A31
		BCR 	STATUS,5 		//038B 	1283
		STR 	1H 			//038C 	0181

		//;i2c.c: 398: T0IF = 0;
		BCR 	INTCON,2 		//038D 	110B

		//;i2c.c: 399: T0IE = 0;
		BCR 	INTCON,5 		//038E 	128B

		//;i2c.c: 400: }
		//;i2c.c: 403: if(PAIE && PAIF)
		BTSC 	INTCON,3 		//038F 	158B
		ORG		0390H
		BTSS 	INTCON,0 		//0390 	1C0B
		LJUMP 	39AH 			//0391 	3B9A

		//;i2c.c: 404: {
		//;i2c.c: 405: ReadAPin = PORTA;
		BCR 	STATUS,5 		//0392 	1283
		LDR 	5H,0 			//0393 	0805

		//;i2c.c: 406: PAIF = 0;
		BCR 	INTCON,0 		//0394 	100B

		//;i2c.c: 407: if(RA1 == 0)
		BTSC 	5H,1 			//0395 	1485
		LJUMP 	39AH 			//0396 	3B9A

		//;i2c.c: 408: {
		//;i2c.c: 409: PAIE = 0;
		BCR 	INTCON,3 		//0397 	118B
		ORG		0398H

		//;i2c.c: 411: RXFLAG = 1;
		BSR 	STATUS,5 		//0398 	1A83
		BCR 	16H,2 			//0399 	1116
		LDR 	41H,0 			//039A 	0841
		STR 	PCLATH 			//039B 	018A
		SWAPR 	40H,0 			//039C 	0740
		STR 	STATUS 			//039D 	0183
		SWAPR 	7EH,1 			//039E 	07FE
		SWAPR 	7EH,0 			//039F 	077E
		ORG		03A0H
		RETI		 			//03A0 	0009
		LDWI 	5H 			//03A1 	2A05

		//;i2c.c: 181: unsigned char ucErrTime=0;
		CLRR 	44H 			//03A2 	0144

		//;i2c.c: 182: TRISA2 =1;
		BSR 	STATUS,5 		//03A3 	1A83
		BSR 	5H,2 			//03A4 	1905

		//;i2c.c: 183: RA2=1;
		BCR 	STATUS,5 		//03A5 	1283
		BSR 	5H,2 			//03A6 	1905

		//;i2c.c: 184: DelayUs(5);
		LCALL 	15H 			//03A7 	3015
		ORG		03A8H
		LDWI 	5H 			//03A8 	2A05

		//;i2c.c: 185: RA4=1;
		BCR 	STATUS,5 		//03A9 	1283
		BSR 	5H,4 			//03AA 	1A05

		//;i2c.c: 186: DelayUs(5);
		LCALL 	15H 			//03AB 	3015

		//;i2c.c: 187: while(RA2)
		BCR 	STATUS,5 		//03AC 	1283
		BTSS 	5H,2 			//03AD 	1D05
		LJUMP 	3B6H 			//03AE 	3BB6
		LDWI 	FBH 			//03AF 	2AFB
		ORG		03B0H

		//;i2c.c: 188: {
		//;i2c.c: 189: ucErrTime++;
		INCR	44H,1 			//03B0 	09C4

		//;i2c.c: 190: if(ucErrTime>250)
		SUBWR 	44H,0 			//03B1 	0C44
		BTSS 	STATUS,0 		//03B2 	1C03
		LJUMP 	3ACH 			//03B3 	3BAC

		//;i2c.c: 191: {
		//;i2c.c: 192: IIC_Stop();
		LCALL 	3CBH 			//03B4 	33CB

		//;i2c.c: 193: return 1;
		RETW 	1H 			//03B5 	2101
		LDWI 	0H 			//03B6 	2A00

		//;i2c.c: 194: }
		//;i2c.c: 195: }
		//;i2c.c: 196: RA4=0;
		BCR 	5H,4 			//03B7 	1205
		ORG		03B8H

		//;i2c.c: 197: return 0;
		RET		 					//03B8 	0004
		STR 	4AH 			//03B9 	01CA

		//;i2c.c: 120: unsigned char a,b;
		//;i2c.c: 121: for(a=0;a<Time;a++)
		CLRR 	4BH 			//03BA 	014B
		LDR 	4AH,0 			//03BB 	084A
		SUBWR 	4BH,0 			//03BC 	0C4B
		BTSC 	STATUS,0 		//03BD 	1403
		RET		 					//03BE 	0004

		//;i2c.c: 122: {
		//;i2c.c: 123: for(b=0;b<10;b++)
		CLRR 	4CH 			//03BF 	014C
		ORG		03C0H

		//;i2c.c: 124: {
		//;i2c.c: 125: DelayMs(100);
		LDWI 	64H 			//03C0 	2A64
		STR 	44H 			//03C1 	01C4
		CLRR 	45H 			//03C2 	0145
		LCALL 	36BH 			//03C3 	336B
		LDWI 	AH 			//03C4 	2A0A
		INCR	4CH,1 			//03C5 	09CC
		SUBWR 	4CH,0 			//03C6 	0C4C
		BTSS 	STATUS,0 		//03C7 	1C03
		ORG		03C8H
		LJUMP 	3C0H 			//03C8 	3BC0
		INCR	4BH,1 			//03C9 	09CB
		LJUMP 	3BBH 			//03CA 	3BBB
		LDWI 	AH 			//03CB 	2A0A

		//;i2c.c: 163: TRISA2 =0;
		BSR 	STATUS,5 		//03CC 	1A83
		BCR 	5H,2 			//03CD 	1105

		//;i2c.c: 164: RA4=0;
		BCR 	STATUS,5 		//03CE 	1283
		BCR 	5H,4 			//03CF 	1205
		ORG		03D0H

		//;i2c.c: 165: RA2=0;
		BCR 	5H,2 			//03D0 	1105

		//;i2c.c: 166: DelayUs(10);
		LCALL 	15H 			//03D1 	3015
		LDWI 	AH 			//03D2 	2A0A

		//;i2c.c: 167: RA4=1;
		BCR 	STATUS,5 		//03D3 	1283
		BSR 	5H,4 			//03D4 	1A05

		//;i2c.c: 168: DelayUs(10);
		LCALL 	15H 			//03D5 	3015
		LDWI 	AH 			//03D6 	2A0A

		//;i2c.c: 169: RA2=1;
		BCR 	STATUS,5 		//03D7 	1283
		ORG		03D8H
		BSR 	5H,2 			//03D8 	1905

		//;i2c.c: 170: DelayUs(10);
		LJUMP 	15H 			//03D9 	3815
		LDWI 	AH 			//03DA 	2A0A

		//;i2c.c: 146: TRISA2 =0;
		BSR 	STATUS,5 		//03DB 	1A83
		BCR 	5H,2 			//03DC 	1105

		//;i2c.c: 147: RA2=1;
		BCR 	STATUS,5 		//03DD 	1283
		BSR 	5H,2 			//03DE 	1905

		//;i2c.c: 148: RA4=1;
		BSR 	5H,4 			//03DF 	1A05
		ORG		03E0H

		//;i2c.c: 149: DelayUs(10);
		LCALL 	15H 			//03E0 	3015
		LDWI 	AH 			//03E1 	2A0A

		//;i2c.c: 150: RA2=0;
		BCR 	STATUS,5 		//03E2 	1283
		BCR 	5H,2 			//03E3 	1105

		//;i2c.c: 151: DelayUs(10);
		LCALL 	15H 			//03E4 	3015
		LDWI 	AH 			//03E5 	2A0A

		//;i2c.c: 152: RA4=0;
		BCR 	STATUS,5 		//03E6 	1283
		BCR 	5H,4 			//03E7 	1205
		ORG		03E8H

		//;i2c.c: 153: DelayUs(10);
		LJUMP 	15H 			//03E8 	3815

		//;i2c.c: 63: OSCCON = 0X00|0X70|0X01;
		LDWI 	71H 			//03E9 	2A71
		BSR 	STATUS,5 		//03EA 	1A83
		STR 	FH 			//03EB 	018F

		//;i2c.c: 67: INTCON = 0;
		CLRR 	INTCON 			//03EC 	010B

		//;i2c.c: 68: PORTA = 0B00000000;
		BCR 	STATUS,5 		//03ED 	1283
		CLRR 	5H 			//03EE 	0105

		//;i2c.c: 69: TRISA = 0B11101011;
		LDWI 	EBH 			//03EF 	2AEB
		ORG		03F0H
		BSR 	STATUS,5 		//03F0 	1A83
		STR 	5H 			//03F1 	0185

		//;i2c.c: 70: WPUA = 0B00000000;
		CLRR 	15H 			//03F2 	0115

		//;i2c.c: 73: OPTION = 0B00001000;
		LDWI 	8H 			//03F3 	2A08
		STR 	1H 			//03F4 	0181

		//;i2c.c: 75: MSCKCON = 0B00000000;
		BCR 	STATUS,5 		//03F5 	1283
		CLRR 	1BH 			//03F6 	011B
		RET		 					//03F7 	0004
		ORG		03F8H
		CLRR 	STATUS 			//03F8 	0103
		LJUMP 	25CH 			//03F9 	3A5C
			END
