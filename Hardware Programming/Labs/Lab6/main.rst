                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Sat Nov 26 00:33:14 2011
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _init
                             14 	.globl _check_start_press
                             15 	.globl _bounce_delay
                             16 	.globl _reset_display
                             17 	.globl _display
                             18 	.globl _get_digit
                             19 	.globl _write_segment
                             20 	.globl _GetNumberFromMatrixKeypad
                             21 	.globl _CY
                             22 	.globl _AC
                             23 	.globl _F0
                             24 	.globl _RS1
                             25 	.globl _RS0
                             26 	.globl _OV
                             27 	.globl _F1
                             28 	.globl _P
                             29 	.globl _PS
                             30 	.globl _PT1
                             31 	.globl _PX1
                             32 	.globl _PT0
                             33 	.globl _PX0
                             34 	.globl _RD
                             35 	.globl _WR
                             36 	.globl _T1
                             37 	.globl _T0
                             38 	.globl _INT1
                             39 	.globl _INT0
                             40 	.globl _TXD
                             41 	.globl _RXD
                             42 	.globl _P3_7
                             43 	.globl _P3_6
                             44 	.globl _P3_5
                             45 	.globl _P3_4
                             46 	.globl _P3_3
                             47 	.globl _P3_2
                             48 	.globl _P3_1
                             49 	.globl _P3_0
                             50 	.globl _EA
                             51 	.globl _ES
                             52 	.globl _ET1
                             53 	.globl _EX1
                             54 	.globl _ET0
                             55 	.globl _EX0
                             56 	.globl _P2_7
                             57 	.globl _P2_6
                             58 	.globl _P2_5
                             59 	.globl _P2_4
                             60 	.globl _P2_3
                             61 	.globl _P2_2
                             62 	.globl _P2_1
                             63 	.globl _P2_0
                             64 	.globl _SM0
                             65 	.globl _SM1
                             66 	.globl _SM2
                             67 	.globl _REN
                             68 	.globl _TB8
                             69 	.globl _RB8
                             70 	.globl _TI
                             71 	.globl _RI
                             72 	.globl _P1_7
                             73 	.globl _P1_6
                             74 	.globl _P1_5
                             75 	.globl _P1_4
                             76 	.globl _P1_3
                             77 	.globl _P1_2
                             78 	.globl _P1_1
                             79 	.globl _P1_0
                             80 	.globl _TF1
                             81 	.globl _TR1
                             82 	.globl _TF0
                             83 	.globl _TR0
                             84 	.globl _IE1
                             85 	.globl _IT1
                             86 	.globl _IE0
                             87 	.globl _IT0
                             88 	.globl _P0_7
                             89 	.globl _P0_6
                             90 	.globl _P0_5
                             91 	.globl _P0_4
                             92 	.globl _P0_3
                             93 	.globl _P0_2
                             94 	.globl _P0_1
                             95 	.globl _P0_0
                             96 	.globl _B
                             97 	.globl _ACC
                             98 	.globl _PSW
                             99 	.globl _IP
                            100 	.globl _P3
                            101 	.globl _IE
                            102 	.globl _P2
                            103 	.globl _SBUF
                            104 	.globl _SCON
                            105 	.globl _P1
                            106 	.globl _TH1
                            107 	.globl _TH0
                            108 	.globl _TL1
                            109 	.globl _TL0
                            110 	.globl _TMOD
                            111 	.globl _TCON
                            112 	.globl _PCON
                            113 	.globl _DPH
                            114 	.globl _DPL
                            115 	.globl _SP
                            116 	.globl _P0
                            117 	.globl _get_digit_PARM_2
                            118 	.globl _write_segment_PARM_2
                            119 	.globl _cycle_duration
                            120 	.globl _cycle_delay
                            121 	.globl _NUMBERS
                            122 	.globl _NUMBER_OF_DIGITS
                            123 	.globl _RUNNING
                            124 ;--------------------------------------------------------
                            125 ; special function registers
                            126 ;--------------------------------------------------------
                            127 	.area RSEG    (DATA)
                    0080    128 G$P0$0$0 == 0x0080
                    0080    129 _P0	=	0x0080
                    0081    130 G$SP$0$0 == 0x0081
                    0081    131 _SP	=	0x0081
                    0082    132 G$DPL$0$0 == 0x0082
                    0082    133 _DPL	=	0x0082
                    0083    134 G$DPH$0$0 == 0x0083
                    0083    135 _DPH	=	0x0083
                    0087    136 G$PCON$0$0 == 0x0087
                    0087    137 _PCON	=	0x0087
                    0088    138 G$TCON$0$0 == 0x0088
                    0088    139 _TCON	=	0x0088
                    0089    140 G$TMOD$0$0 == 0x0089
                    0089    141 _TMOD	=	0x0089
                    008A    142 G$TL0$0$0 == 0x008a
                    008A    143 _TL0	=	0x008a
                    008B    144 G$TL1$0$0 == 0x008b
                    008B    145 _TL1	=	0x008b
                    008C    146 G$TH0$0$0 == 0x008c
                    008C    147 _TH0	=	0x008c
                    008D    148 G$TH1$0$0 == 0x008d
                    008D    149 _TH1	=	0x008d
                    0090    150 G$P1$0$0 == 0x0090
                    0090    151 _P1	=	0x0090
                    0098    152 G$SCON$0$0 == 0x0098
                    0098    153 _SCON	=	0x0098
                    0099    154 G$SBUF$0$0 == 0x0099
                    0099    155 _SBUF	=	0x0099
                    00A0    156 G$P2$0$0 == 0x00a0
                    00A0    157 _P2	=	0x00a0
                    00A8    158 G$IE$0$0 == 0x00a8
                    00A8    159 _IE	=	0x00a8
                    00B0    160 G$P3$0$0 == 0x00b0
                    00B0    161 _P3	=	0x00b0
                    00B8    162 G$IP$0$0 == 0x00b8
                    00B8    163 _IP	=	0x00b8
                    00D0    164 G$PSW$0$0 == 0x00d0
                    00D0    165 _PSW	=	0x00d0
                    00E0    166 G$ACC$0$0 == 0x00e0
                    00E0    167 _ACC	=	0x00e0
                    00F0    168 G$B$0$0 == 0x00f0
                    00F0    169 _B	=	0x00f0
                            170 ;--------------------------------------------------------
                            171 ; special function bits
                            172 ;--------------------------------------------------------
                            173 	.area RSEG    (DATA)
                    0080    174 G$P0_0$0$0 == 0x0080
                    0080    175 _P0_0	=	0x0080
                    0081    176 G$P0_1$0$0 == 0x0081
                    0081    177 _P0_1	=	0x0081
                    0082    178 G$P0_2$0$0 == 0x0082
                    0082    179 _P0_2	=	0x0082
                    0083    180 G$P0_3$0$0 == 0x0083
                    0083    181 _P0_3	=	0x0083
                    0084    182 G$P0_4$0$0 == 0x0084
                    0084    183 _P0_4	=	0x0084
                    0085    184 G$P0_5$0$0 == 0x0085
                    0085    185 _P0_5	=	0x0085
                    0086    186 G$P0_6$0$0 == 0x0086
                    0086    187 _P0_6	=	0x0086
                    0087    188 G$P0_7$0$0 == 0x0087
                    0087    189 _P0_7	=	0x0087
                    0088    190 G$IT0$0$0 == 0x0088
                    0088    191 _IT0	=	0x0088
                    0089    192 G$IE0$0$0 == 0x0089
                    0089    193 _IE0	=	0x0089
                    008A    194 G$IT1$0$0 == 0x008a
                    008A    195 _IT1	=	0x008a
                    008B    196 G$IE1$0$0 == 0x008b
                    008B    197 _IE1	=	0x008b
                    008C    198 G$TR0$0$0 == 0x008c
                    008C    199 _TR0	=	0x008c
                    008D    200 G$TF0$0$0 == 0x008d
                    008D    201 _TF0	=	0x008d
                    008E    202 G$TR1$0$0 == 0x008e
                    008E    203 _TR1	=	0x008e
                    008F    204 G$TF1$0$0 == 0x008f
                    008F    205 _TF1	=	0x008f
                    0090    206 G$P1_0$0$0 == 0x0090
                    0090    207 _P1_0	=	0x0090
                    0091    208 G$P1_1$0$0 == 0x0091
                    0091    209 _P1_1	=	0x0091
                    0092    210 G$P1_2$0$0 == 0x0092
                    0092    211 _P1_2	=	0x0092
                    0093    212 G$P1_3$0$0 == 0x0093
                    0093    213 _P1_3	=	0x0093
                    0094    214 G$P1_4$0$0 == 0x0094
                    0094    215 _P1_4	=	0x0094
                    0095    216 G$P1_5$0$0 == 0x0095
                    0095    217 _P1_5	=	0x0095
                    0096    218 G$P1_6$0$0 == 0x0096
                    0096    219 _P1_6	=	0x0096
                    0097    220 G$P1_7$0$0 == 0x0097
                    0097    221 _P1_7	=	0x0097
                    0098    222 G$RI$0$0 == 0x0098
                    0098    223 _RI	=	0x0098
                    0099    224 G$TI$0$0 == 0x0099
                    0099    225 _TI	=	0x0099
                    009A    226 G$RB8$0$0 == 0x009a
                    009A    227 _RB8	=	0x009a
                    009B    228 G$TB8$0$0 == 0x009b
                    009B    229 _TB8	=	0x009b
                    009C    230 G$REN$0$0 == 0x009c
                    009C    231 _REN	=	0x009c
                    009D    232 G$SM2$0$0 == 0x009d
                    009D    233 _SM2	=	0x009d
                    009E    234 G$SM1$0$0 == 0x009e
                    009E    235 _SM1	=	0x009e
                    009F    236 G$SM0$0$0 == 0x009f
                    009F    237 _SM0	=	0x009f
                    00A0    238 G$P2_0$0$0 == 0x00a0
                    00A0    239 _P2_0	=	0x00a0
                    00A1    240 G$P2_1$0$0 == 0x00a1
                    00A1    241 _P2_1	=	0x00a1
                    00A2    242 G$P2_2$0$0 == 0x00a2
                    00A2    243 _P2_2	=	0x00a2
                    00A3    244 G$P2_3$0$0 == 0x00a3
                    00A3    245 _P2_3	=	0x00a3
                    00A4    246 G$P2_4$0$0 == 0x00a4
                    00A4    247 _P2_4	=	0x00a4
                    00A5    248 G$P2_5$0$0 == 0x00a5
                    00A5    249 _P2_5	=	0x00a5
                    00A6    250 G$P2_6$0$0 == 0x00a6
                    00A6    251 _P2_6	=	0x00a6
                    00A7    252 G$P2_7$0$0 == 0x00a7
                    00A7    253 _P2_7	=	0x00a7
                    00A8    254 G$EX0$0$0 == 0x00a8
                    00A8    255 _EX0	=	0x00a8
                    00A9    256 G$ET0$0$0 == 0x00a9
                    00A9    257 _ET0	=	0x00a9
                    00AA    258 G$EX1$0$0 == 0x00aa
                    00AA    259 _EX1	=	0x00aa
                    00AB    260 G$ET1$0$0 == 0x00ab
                    00AB    261 _ET1	=	0x00ab
                    00AC    262 G$ES$0$0 == 0x00ac
                    00AC    263 _ES	=	0x00ac
                    00AF    264 G$EA$0$0 == 0x00af
                    00AF    265 _EA	=	0x00af
                    00B0    266 G$P3_0$0$0 == 0x00b0
                    00B0    267 _P3_0	=	0x00b0
                    00B1    268 G$P3_1$0$0 == 0x00b1
                    00B1    269 _P3_1	=	0x00b1
                    00B2    270 G$P3_2$0$0 == 0x00b2
                    00B2    271 _P3_2	=	0x00b2
                    00B3    272 G$P3_3$0$0 == 0x00b3
                    00B3    273 _P3_3	=	0x00b3
                    00B4    274 G$P3_4$0$0 == 0x00b4
                    00B4    275 _P3_4	=	0x00b4
                    00B5    276 G$P3_5$0$0 == 0x00b5
                    00B5    277 _P3_5	=	0x00b5
                    00B6    278 G$P3_6$0$0 == 0x00b6
                    00B6    279 _P3_6	=	0x00b6
                    00B7    280 G$P3_7$0$0 == 0x00b7
                    00B7    281 _P3_7	=	0x00b7
                    00B0    282 G$RXD$0$0 == 0x00b0
                    00B0    283 _RXD	=	0x00b0
                    00B1    284 G$TXD$0$0 == 0x00b1
                    00B1    285 _TXD	=	0x00b1
                    00B2    286 G$INT0$0$0 == 0x00b2
                    00B2    287 _INT0	=	0x00b2
                    00B3    288 G$INT1$0$0 == 0x00b3
                    00B3    289 _INT1	=	0x00b3
                    00B4    290 G$T0$0$0 == 0x00b4
                    00B4    291 _T0	=	0x00b4
                    00B5    292 G$T1$0$0 == 0x00b5
                    00B5    293 _T1	=	0x00b5
                    00B6    294 G$WR$0$0 == 0x00b6
                    00B6    295 _WR	=	0x00b6
                    00B7    296 G$RD$0$0 == 0x00b7
                    00B7    297 _RD	=	0x00b7
                    00B8    298 G$PX0$0$0 == 0x00b8
                    00B8    299 _PX0	=	0x00b8
                    00B9    300 G$PT0$0$0 == 0x00b9
                    00B9    301 _PT0	=	0x00b9
                    00BA    302 G$PX1$0$0 == 0x00ba
                    00BA    303 _PX1	=	0x00ba
                    00BB    304 G$PT1$0$0 == 0x00bb
                    00BB    305 _PT1	=	0x00bb
                    00BC    306 G$PS$0$0 == 0x00bc
                    00BC    307 _PS	=	0x00bc
                    00D0    308 G$P$0$0 == 0x00d0
                    00D0    309 _P	=	0x00d0
                    00D1    310 G$F1$0$0 == 0x00d1
                    00D1    311 _F1	=	0x00d1
                    00D2    312 G$OV$0$0 == 0x00d2
                    00D2    313 _OV	=	0x00d2
                    00D3    314 G$RS0$0$0 == 0x00d3
                    00D3    315 _RS0	=	0x00d3
                    00D4    316 G$RS1$0$0 == 0x00d4
                    00D4    317 _RS1	=	0x00d4
                    00D5    318 G$F0$0$0 == 0x00d5
                    00D5    319 _F0	=	0x00d5
                    00D6    320 G$AC$0$0 == 0x00d6
                    00D6    321 _AC	=	0x00d6
                    00D7    322 G$CY$0$0 == 0x00d7
                    00D7    323 _CY	=	0x00d7
                            324 ;--------------------------------------------------------
                            325 ; overlayable register banks
                            326 ;--------------------------------------------------------
                            327 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     328 	.ds 8
                            329 ;--------------------------------------------------------
                            330 ; internal ram data
                            331 ;--------------------------------------------------------
                            332 	.area DSEG    (DATA)
                    0000    333 G$RUNNING$0$0==.
   0008                     334 _RUNNING::
   0008                     335 	.ds 1
                    0001    336 G$NUMBER_OF_DIGITS$0$0==.
   0009                     337 _NUMBER_OF_DIGITS::
   0009                     338 	.ds 1
                    0002    339 G$NUMBERS$0$0==.
   000A                     340 _NUMBERS::
   000A                     341 	.ds 10
                    000C    342 G$cycle_delay$0$0==.
   0014                     343 _cycle_delay::
   0014                     344 	.ds 4
                    0010    345 G$cycle_duration$0$0==.
   0018                     346 _cycle_duration::
   0018                     347 	.ds 4
                    0014    348 Lwrite_segment$value$1$1==.
   001C                     349 _write_segment_PARM_2:
   001C                     350 	.ds 1
                    0015    351 Lget_digit$place$1$1==.
   001D                     352 _get_digit_PARM_2:
   001D                     353 	.ds 1
                    0016    354 Lget_digit$powers$1$1==.
   001E                     355 _get_digit_powers_1_1:
   001E                     356 	.ds 8
                            357 ;--------------------------------------------------------
                            358 ; overlayable items in internal ram 
                            359 ;--------------------------------------------------------
                            360 	.area OSEG    (OVR,DATA)
                            361 ;--------------------------------------------------------
                            362 ; Stack segment in internal ram 
                            363 ;--------------------------------------------------------
                            364 	.area	SSEG	(DATA)
   0028                     365 __start__stack:
   0028                     366 	.ds	1
                            367 
                            368 ;--------------------------------------------------------
                            369 ; indirectly addressable internal ram data
                            370 ;--------------------------------------------------------
                            371 	.area ISEG    (DATA)
                            372 ;--------------------------------------------------------
                            373 ; absolute internal ram data
                            374 ;--------------------------------------------------------
                            375 	.area IABS    (ABS,DATA)
                            376 	.area IABS    (ABS,DATA)
                            377 ;--------------------------------------------------------
                            378 ; bit data
                            379 ;--------------------------------------------------------
                            380 	.area BSEG    (BIT)
                            381 ;--------------------------------------------------------
                            382 ; paged external ram data
                            383 ;--------------------------------------------------------
                            384 	.area PSEG    (PAG,XDATA)
                            385 ;--------------------------------------------------------
                            386 ; external ram data
                            387 ;--------------------------------------------------------
                            388 	.area XSEG    (XDATA)
                            389 ;--------------------------------------------------------
                            390 ; absolute external ram data
                            391 ;--------------------------------------------------------
                            392 	.area XABS    (ABS,XDATA)
                            393 ;--------------------------------------------------------
                            394 ; external initialized ram data
                            395 ;--------------------------------------------------------
                            396 	.area XISEG   (XDATA)
                            397 	.area HOME    (CODE)
                            398 	.area GSINIT0 (CODE)
                            399 	.area GSINIT1 (CODE)
                            400 	.area GSINIT2 (CODE)
                            401 	.area GSINIT3 (CODE)
                            402 	.area GSINIT4 (CODE)
                            403 	.area GSINIT5 (CODE)
                            404 	.area GSINIT  (CODE)
                            405 	.area GSFINAL (CODE)
                            406 	.area CSEG    (CODE)
                            407 ;--------------------------------------------------------
                            408 ; interrupt vector 
                            409 ;--------------------------------------------------------
                            410 	.area HOME    (CODE)
   0000                     411 __interrupt_vect:
   0000 02 00 08            412 	ljmp	__sdcc_gsinit_startup
                            413 ;--------------------------------------------------------
                            414 ; global & static initialisations
                            415 ;--------------------------------------------------------
                            416 	.area HOME    (CODE)
                            417 	.area GSINIT  (CODE)
                            418 	.area GSFINAL (CODE)
                            419 	.area GSINIT  (CODE)
                            420 	.globl __sdcc_gsinit_startup
                            421 	.globl __sdcc_program_startup
                            422 	.globl __start__stack
                            423 	.globl __mcs51_genXINIT
                            424 	.globl __mcs51_genXRAMCLEAR
                            425 	.globl __mcs51_genRAMCLEAR
                    0000    426 	G$main$0$0 ==.
                    0000    427 	C$main.c$18$1$1 ==.
                            428 ;	main.c:18: unsigned char RUNNING = 0;
   0061 75 08 00            429 	mov	_RUNNING,#0x00
                    0003    430 	G$main$0$0 ==.
                    0003    431 	C$main.c$23$1$1 ==.
                            432 ;	main.c:23: unsigned char NUMBER_OF_DIGITS = 4;
   0064 75 09 04            433 	mov	_NUMBER_OF_DIGITS,#0x04
                    0006    434 	G$main$0$0 ==.
                    0006    435 	C$main.c$26$1$1 ==.
                            436 ;	main.c:26: unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0067 75 0A C0            437 	mov	_NUMBERS,#0xC0
   006A 75 0B F9            438 	mov	(_NUMBERS + 0x0001),#0xF9
   006D 75 0C A4            439 	mov	(_NUMBERS + 0x0002),#0xA4
   0070 75 0D B0            440 	mov	(_NUMBERS + 0x0003),#0xB0
   0073 75 0E 99            441 	mov	(_NUMBERS + 0x0004),#0x99
   0076 75 0F 92            442 	mov	(_NUMBERS + 0x0005),#0x92
   0079 75 10 82            443 	mov	(_NUMBERS + 0x0006),#0x82
   007C 75 11 F0            444 	mov	(_NUMBERS + 0x0007),#0xF0
   007F 75 12 80            445 	mov	(_NUMBERS + 0x0008),#0x80
   0082 75 13 90            446 	mov	(_NUMBERS + 0x0009),#0x90
                            447 	.area GSFINAL (CODE)
   0085 02 00 03            448 	ljmp	__sdcc_program_startup
                            449 ;--------------------------------------------------------
                            450 ; Home
                            451 ;--------------------------------------------------------
                            452 	.area HOME    (CODE)
                            453 	.area HOME    (CODE)
   0003                     454 __sdcc_program_startup:
   0003 12 03 17            455 	lcall	_main
                            456 ;	return from main will lock up
   0006 80 FE               457 	sjmp .
                            458 ;--------------------------------------------------------
                            459 ; code
                            460 ;--------------------------------------------------------
                            461 	.area CSEG    (CODE)
                            462 ;------------------------------------------------------------
                            463 ;Allocation info for local variables in function 'GetNumberFromMatrixKeypad'
                            464 ;------------------------------------------------------------
                            465 ;col                       Allocated to registers r2 
                            466 ;row                       Allocated to registers r3 
                            467 ;------------------------------------------------------------
                    0000    468 	G$GetNumberFromMatrixKeypad$0$0 ==.
                    0000    469 	C$main.c$45$0$0 ==.
                            470 ;	main.c:45: unsigned char GetNumberFromMatrixKeypad()
                            471 ;	-----------------------------------------
                            472 ;	 function GetNumberFromMatrixKeypad
                            473 ;	-----------------------------------------
   0088                     474 _GetNumberFromMatrixKeypad:
                    0002    475 	ar2 = 0x02
                    0003    476 	ar3 = 0x03
                    0004    477 	ar4 = 0x04
                    0005    478 	ar5 = 0x05
                    0006    479 	ar6 = 0x06
                    0007    480 	ar7 = 0x07
                    0000    481 	ar0 = 0x00
                    0001    482 	ar1 = 0x01
                    0000    483 	C$main.c$47$1$0 ==.
                            484 ;	main.c:47: unsigned char col = 0, row = 0;
   0088 7A 00               485 	mov	r2,#0x00
   008A 7B 00               486 	mov	r3,#0x00
                    0004    487 	C$main.c$48$1$1 ==.
                            488 ;	main.c:48: KEYPAD_PORT = 240;    //column info
   008C 75 90 F0            489 	mov	_P1,#0xF0
                    0007    490 	C$main.c$49$1$1 ==.
                            491 ;	main.c:49: switch(P1)
   008F AC 90               492 	mov	r4,_P1
   0091 BC 70 02            493 	cjne	r4,#0x70,00219$
   0094 80 19               494 	sjmp	00104$
   0096                     495 00219$:
   0096 BC B0 02            496 	cjne	r4,#0xB0,00220$
   0099 80 10               497 	sjmp	00103$
   009B                     498 00220$:
   009B BC D0 02            499 	cjne	r4,#0xD0,00221$
   009E 80 07               500 	sjmp	00102$
   00A0                     501 00221$:
   00A0 BC E0 0E            502 	cjne	r4,#0xE0,00106$
                    001B    503 	C$main.c$51$2$2 ==.
                            504 ;	main.c:51: case 224:    col = 1;    break;   
   00A3 7A 01               505 	mov	r2,#0x01
                    001D    506 	C$main.c$52$2$2 ==.
                            507 ;	main.c:52: case 208:    col = 2;    break;    
   00A5 80 0A               508 	sjmp	00106$
   00A7                     509 00102$:
   00A7 7A 02               510 	mov	r2,#0x02
                    0021    511 	C$main.c$53$2$2 ==.
                            512 ;	main.c:53: case 176:    col = 3;    break;    
   00A9 80 06               513 	sjmp	00106$
   00AB                     514 00103$:
   00AB 7A 03               515 	mov	r2,#0x03
                    0025    516 	C$main.c$54$2$2 ==.
                            517 ;	main.c:54: case 112:    col = 4;    break;    
   00AD 80 02               518 	sjmp	00106$
   00AF                     519 00104$:
   00AF 7A 04               520 	mov	r2,#0x04
                    0029    521 	C$main.c$56$1$1 ==.
                            522 ;	main.c:56: }
   00B1                     523 00106$:
                    0029    524 	C$main.c$58$1$1 ==.
                            525 ;	main.c:58: KEYPAD_PORT = 15;    //row info
   00B1 75 90 0F            526 	mov	_P1,#0x0F
                    002C    527 	C$main.c$59$1$1 ==.
                            528 ;	main.c:59: switch(P1)
   00B4 AC 90               529 	mov	r4,_P1
   00B6 BC 07 02            530 	cjne	r4,#0x07,00224$
   00B9 80 19               531 	sjmp	00110$
   00BB                     532 00224$:
   00BB BC 0B 02            533 	cjne	r4,#0x0B,00225$
   00BE 80 10               534 	sjmp	00109$
   00C0                     535 00225$:
   00C0 BC 0D 02            536 	cjne	r4,#0x0D,00226$
   00C3 80 07               537 	sjmp	00108$
   00C5                     538 00226$:
   00C5 BC 0E 0E            539 	cjne	r4,#0x0E,00112$
                    0040    540 	C$main.c$61$2$3 ==.
                            541 ;	main.c:61: case 14:    row = 1;    break;
   00C8 7B 01               542 	mov	r3,#0x01
                    0042    543 	C$main.c$62$2$3 ==.
                            544 ;	main.c:62: case 13:    row = 2;    break;
   00CA 80 0A               545 	sjmp	00112$
   00CC                     546 00108$:
   00CC 7B 02               547 	mov	r3,#0x02
                    0046    548 	C$main.c$63$2$3 ==.
                            549 ;	main.c:63: case 11:    row = 3;    break;
   00CE 80 06               550 	sjmp	00112$
   00D0                     551 00109$:
   00D0 7B 03               552 	mov	r3,#0x03
                    004A    553 	C$main.c$64$2$3 ==.
                            554 ;	main.c:64: case 7:    row = 4;    break;
   00D2 80 02               555 	sjmp	00112$
   00D4                     556 00110$:
   00D4 7B 04               557 	mov	r3,#0x04
                    004E    558 	C$main.c$66$1$1 ==.
                            559 ;	main.c:66: }
   00D6                     560 00112$:
                    004E    561 	C$main.c$68$1$1 ==.
                            562 ;	main.c:68: if((col == 1) && (row == 1))
   00D6 E4                  563 	clr	a
   00D7 BA 01 01            564 	cjne	r2,#0x01,00229$
   00DA 04                  565 	inc	a
   00DB                     566 00229$:
   00DB FC                  567 	mov	r4,a
   00DC 60 07               568 	jz	00174$
   00DE BB 01 04            569 	cjne	r3,#0x01,00174$
                    0059    570 	C$main.c$69$1$1 ==.
                            571 ;	main.c:69: return 1;
   00E1 75 82 01            572 	mov	dpl,#0x01
   00E4 22                  573 	ret
   00E5                     574 00174$:
                    005D    575 	C$main.c$70$1$1 ==.
                            576 ;	main.c:70: else if((col == 2) && (row == 1))
   00E5 E4                  577 	clr	a
   00E6 BA 02 01            578 	cjne	r2,#0x02,00234$
   00E9 04                  579 	inc	a
   00EA                     580 00234$:
   00EA FD                  581 	mov	r5,a
   00EB 60 07               582 	jz	00170$
   00ED BB 01 04            583 	cjne	r3,#0x01,00170$
                    0068    584 	C$main.c$71$1$1 ==.
                            585 ;	main.c:71: return 2;
   00F0 75 82 02            586 	mov	dpl,#0x02
   00F3 22                  587 	ret
   00F4                     588 00170$:
                    006C    589 	C$main.c$72$1$1 ==.
                            590 ;	main.c:72: else if((col == 3) && (row == 1))
   00F4 E4                  591 	clr	a
   00F5 BA 03 01            592 	cjne	r2,#0x03,00239$
   00F8 04                  593 	inc	a
   00F9                     594 00239$:
   00F9 FE                  595 	mov	r6,a
   00FA 60 07               596 	jz	00166$
   00FC BB 01 04            597 	cjne	r3,#0x01,00166$
                    0077    598 	C$main.c$73$1$1 ==.
                            599 ;	main.c:73: return 3;
   00FF 75 82 03            600 	mov	dpl,#0x03
   0102 22                  601 	ret
   0103                     602 00166$:
                    007B    603 	C$main.c$74$1$1 ==.
                            604 ;	main.c:74: else if((col == 4) && (row == 1))    //Letter A
   0103 E4                  605 	clr	a
   0104 BA 04 01            606 	cjne	r2,#0x04,00244$
   0107 04                  607 	inc	a
   0108                     608 00244$:
   0108 FA                  609 	mov	r2,a
   0109 60 07               610 	jz	00162$
   010B BB 01 04            611 	cjne	r3,#0x01,00162$
                    0086    612 	C$main.c$75$1$1 ==.
                            613 ;	main.c:75: return 10;
   010E 75 82 0A            614 	mov	dpl,#0x0A
   0111 22                  615 	ret
   0112                     616 00162$:
                    008A    617 	C$main.c$76$1$1 ==.
                            618 ;	main.c:76: else if((col == 1) && (row == 2))
   0112 EC                  619 	mov	a,r4
   0113 60 07               620 	jz	00158$
   0115 BB 02 04            621 	cjne	r3,#0x02,00158$
                    0090    622 	C$main.c$77$1$1 ==.
                            623 ;	main.c:77: return 4;
   0118 75 82 04            624 	mov	dpl,#0x04
   011B 22                  625 	ret
   011C                     626 00158$:
                    0094    627 	C$main.c$78$1$1 ==.
                            628 ;	main.c:78: else if((col == 2) && (row == 2))
   011C ED                  629 	mov	a,r5
   011D 60 07               630 	jz	00154$
   011F BB 02 04            631 	cjne	r3,#0x02,00154$
                    009A    632 	C$main.c$79$1$1 ==.
                            633 ;	main.c:79: return 5;
   0122 75 82 05            634 	mov	dpl,#0x05
   0125 22                  635 	ret
   0126                     636 00154$:
                    009E    637 	C$main.c$80$1$1 ==.
                            638 ;	main.c:80: else if((col == 3) && (row == 2))
   0126 EE                  639 	mov	a,r6
   0127 60 07               640 	jz	00150$
   0129 BB 02 04            641 	cjne	r3,#0x02,00150$
                    00A4    642 	C$main.c$81$1$1 ==.
                            643 ;	main.c:81: return 6;
   012C 75 82 06            644 	mov	dpl,#0x06
   012F 22                  645 	ret
   0130                     646 00150$:
                    00A8    647 	C$main.c$82$1$1 ==.
                            648 ;	main.c:82: else if((col == 4) && (row == 2))    //Letter B
   0130 EA                  649 	mov	a,r2
   0131 60 07               650 	jz	00146$
   0133 BB 02 04            651 	cjne	r3,#0x02,00146$
                    00AE    652 	C$main.c$83$1$1 ==.
                            653 ;	main.c:83: return 11;
   0136 75 82 0B            654 	mov	dpl,#0x0B
   0139 22                  655 	ret
   013A                     656 00146$:
                    00B2    657 	C$main.c$84$1$1 ==.
                            658 ;	main.c:84: else if((col == 1) && (row == 3))
   013A EC                  659 	mov	a,r4
   013B 60 07               660 	jz	00142$
   013D BB 03 04            661 	cjne	r3,#0x03,00142$
                    00B8    662 	C$main.c$85$1$1 ==.
                            663 ;	main.c:85: return 7;
   0140 75 82 07            664 	mov	dpl,#0x07
   0143 22                  665 	ret
   0144                     666 00142$:
                    00BC    667 	C$main.c$86$1$1 ==.
                            668 ;	main.c:86: else if((col == 2) && (row == 3))
   0144 ED                  669 	mov	a,r5
   0145 60 07               670 	jz	00138$
   0147 BB 03 04            671 	cjne	r3,#0x03,00138$
                    00C2    672 	C$main.c$87$1$1 ==.
                            673 ;	main.c:87: return 8;
   014A 75 82 08            674 	mov	dpl,#0x08
   014D 22                  675 	ret
   014E                     676 00138$:
                    00C6    677 	C$main.c$88$1$1 ==.
                            678 ;	main.c:88: else if((col == 3) && (row == 3))
   014E EE                  679 	mov	a,r6
   014F 60 07               680 	jz	00134$
   0151 BB 03 04            681 	cjne	r3,#0x03,00134$
                    00CC    682 	C$main.c$89$1$1 ==.
                            683 ;	main.c:89: return 9;
   0154 75 82 09            684 	mov	dpl,#0x09
   0157 22                  685 	ret
   0158                     686 00134$:
                    00D0    687 	C$main.c$90$1$1 ==.
                            688 ;	main.c:90: else if((col == 4) && (row == 3))    //Letter C
   0158 EA                  689 	mov	a,r2
   0159 60 07               690 	jz	00130$
   015B BB 03 04            691 	cjne	r3,#0x03,00130$
                    00D6    692 	C$main.c$91$1$1 ==.
                            693 ;	main.c:91: return 12;
   015E 75 82 0C            694 	mov	dpl,#0x0C
   0161 22                  695 	ret
   0162                     696 00130$:
                    00DA    697 	C$main.c$92$1$1 ==.
                            698 ;	main.c:92: else if((col == 1) && (row == 4))    //Char * (ASCII 42)
   0162 EC                  699 	mov	a,r4
   0163 60 07               700 	jz	00126$
   0165 BB 04 04            701 	cjne	r3,#0x04,00126$
                    00E0    702 	C$main.c$93$1$1 ==.
                            703 ;	main.c:93: return 42;
   0168 75 82 2A            704 	mov	dpl,#0x2A
   016B 22                  705 	ret
   016C                     706 00126$:
                    00E4    707 	C$main.c$94$1$1 ==.
                            708 ;	main.c:94: else if((col == 2) && (row == 4))
   016C ED                  709 	mov	a,r5
   016D 60 07               710 	jz	00122$
   016F BB 04 04            711 	cjne	r3,#0x04,00122$
                    00EA    712 	C$main.c$95$1$1 ==.
                            713 ;	main.c:95: return 0;
   0172 75 82 00            714 	mov	dpl,#0x00
   0175 22                  715 	ret
   0176                     716 00122$:
                    00EE    717 	C$main.c$96$1$1 ==.
                            718 ;	main.c:96: else if((col == 3) && (row == 4))    //Char # (ASCII 35)
   0176 EE                  719 	mov	a,r6
   0177 60 07               720 	jz	00118$
   0179 BB 04 04            721 	cjne	r3,#0x04,00118$
                    00F4    722 	C$main.c$97$1$1 ==.
                            723 ;	main.c:97: return 35;
   017C 75 82 23            724 	mov	dpl,#0x23
   017F 22                  725 	ret
   0180                     726 00118$:
                    00F8    727 	C$main.c$98$1$1 ==.
                            728 ;	main.c:98: else if((col == 4) && (row == 4))    //Letter D
   0180 EA                  729 	mov	a,r2
   0181 60 07               730 	jz	00114$
   0183 BB 04 04            731 	cjne	r3,#0x04,00114$
                    00FE    732 	C$main.c$99$1$1 ==.
                            733 ;	main.c:99: return 13;
   0186 75 82 0D            734 	mov	dpl,#0x0D
                    0101    735 	C$main.c$101$1$1 ==.
                            736 ;	main.c:101: return 255;    //error code :)
                    0101    737 	C$main.c$102$1$1 ==.
                    0101    738 	XG$GetNumberFromMatrixKeypad$0$0 ==.
   0189 22                  739 	ret
   018A                     740 00114$:
   018A 75 82 FF            741 	mov	dpl,#0xFF
   018D 22                  742 	ret
                            743 ;------------------------------------------------------------
                            744 ;Allocation info for local variables in function 'write_segment'
                            745 ;------------------------------------------------------------
                            746 ;value                     Allocated with name '_write_segment_PARM_2'
                            747 ;segment_number            Allocated to registers r2 
                            748 ;------------------------------------------------------------
                    0106    749 	G$write_segment$0$0 ==.
                    0106    750 	C$main.c$112$1$1 ==.
                            751 ;	main.c:112: void write_segment(unsigned char segment_number, unsigned char value) {
                            752 ;	-----------------------------------------
                            753 ;	 function write_segment
                            754 ;	-----------------------------------------
   018E                     755 _write_segment:
   018E AA 82               756 	mov	r2,dpl
                    0108    757 	C$main.c$114$1$1 ==.
                            758 ;	main.c:114: reset_display();
   0190 C0 02               759 	push	ar2
   0192 12 02 85            760 	lcall	_reset_display
   0195 D0 02               761 	pop	ar2
                    010F    762 	C$main.c$117$1$1 ==.
                            763 ;	main.c:117: P2 = NUMBERS[value];
   0197 E5 1C               764 	mov	a,_write_segment_PARM_2
   0199 24 0A               765 	add	a,#_NUMBERS
   019B F8                  766 	mov	r0,a
   019C 86 A0               767 	mov	_P2,@r0
                    0116    768 	C$main.c$120$1$1 ==.
                            769 ;	main.c:120: switch (segment_number) {
   019E EA                  770 	mov	a,r2
   019F 24 FC               771 	add	a,#0xff - 0x03
   01A1 40 36               772 	jc	00106$
   01A3 EA                  773 	mov	a,r2
   01A4 2A                  774 	add	a,r2
   01A5 2A                  775 	add	a,r2
   01A6 90 01 AA            776 	mov	dptr,#00110$
   01A9 73                  777 	jmp	@a+dptr
   01AA                     778 00110$:
   01AA 02 01 B6            779 	ljmp	00101$
   01AD 02 01 BF            780 	ljmp	00102$
   01B0 02 01 C8            781 	ljmp	00103$
   01B3 02 01 D1            782 	ljmp	00104$
                    012E    783 	C$main.c$121$2$2 ==.
                            784 ;	main.c:121: case 0:
   01B6                     785 00101$:
                    012E    786 	C$main.c$122$2$2 ==.
                            787 ;	main.c:122: P3_1 = 1;
   01B6 D2 B1               788 	setb	_P3_1
                    0130    789 	C$main.c$123$2$2 ==.
                            790 ;	main.c:123: P3_2 = 1;
   01B8 D2 B2               791 	setb	_P3_2
                    0132    792 	C$main.c$124$2$2 ==.
                            793 ;	main.c:124: P3_3 = 1;
   01BA D2 B3               794 	setb	_P3_3
                    0134    795 	C$main.c$125$2$2 ==.
                            796 ;	main.c:125: P3_0 = 0;
   01BC C2 B0               797 	clr	_P3_0
                    0136    798 	C$main.c$126$2$2 ==.
                            799 ;	main.c:126: break;
                    0136    800 	C$main.c$127$2$2 ==.
                            801 ;	main.c:127: case 1:
   01BE 22                  802 	ret
   01BF                     803 00102$:
                    0137    804 	C$main.c$128$2$2 ==.
                            805 ;	main.c:128: P3_0 = 1;
   01BF D2 B0               806 	setb	_P3_0
                    0139    807 	C$main.c$129$2$2 ==.
                            808 ;	main.c:129: P3_2 = 1;
   01C1 D2 B2               809 	setb	_P3_2
                    013B    810 	C$main.c$130$2$2 ==.
                            811 ;	main.c:130: P3_3 = 1;
   01C3 D2 B3               812 	setb	_P3_3
                    013D    813 	C$main.c$131$2$2 ==.
                            814 ;	main.c:131: P3_1 = 0;
   01C5 C2 B1               815 	clr	_P3_1
                    013F    816 	C$main.c$132$2$2 ==.
                            817 ;	main.c:132: break;
                    013F    818 	C$main.c$133$2$2 ==.
                            819 ;	main.c:133: case 2:
   01C7 22                  820 	ret
   01C8                     821 00103$:
                    0140    822 	C$main.c$134$2$2 ==.
                            823 ;	main.c:134: P3_3 = 1;
   01C8 D2 B3               824 	setb	_P3_3
                    0142    825 	C$main.c$135$2$2 ==.
                            826 ;	main.c:135: P3_1 = 1;
   01CA D2 B1               827 	setb	_P3_1
                    0144    828 	C$main.c$136$2$2 ==.
                            829 ;	main.c:136: P3_0 = 1;
   01CC D2 B0               830 	setb	_P3_0
                    0146    831 	C$main.c$137$2$2 ==.
                            832 ;	main.c:137: P3_2 = 0;
   01CE C2 B2               833 	clr	_P3_2
                    0148    834 	C$main.c$138$2$2 ==.
                            835 ;	main.c:138: break;
                    0148    836 	C$main.c$139$2$2 ==.
                            837 ;	main.c:139: case 3:
   01D0 22                  838 	ret
   01D1                     839 00104$:
                    0149    840 	C$main.c$140$2$2 ==.
                            841 ;	main.c:140: P3_0 = 1;
   01D1 D2 B0               842 	setb	_P3_0
                    014B    843 	C$main.c$141$2$2 ==.
                            844 ;	main.c:141: P3_1 = 1;
   01D3 D2 B1               845 	setb	_P3_1
                    014D    846 	C$main.c$142$2$2 ==.
                            847 ;	main.c:142: P3_2 = 1;
   01D5 D2 B2               848 	setb	_P3_2
                    014F    849 	C$main.c$143$2$2 ==.
                            850 ;	main.c:143: P3_3 = 0;
   01D7 C2 B3               851 	clr	_P3_3
                    0151    852 	C$main.c$144$1$1 ==.
                            853 ;	main.c:144: }
   01D9                     854 00106$:
                    0151    855 	C$main.c$145$1$1 ==.
                    0151    856 	XG$write_segment$0$0 ==.
   01D9 22                  857 	ret
                            858 ;------------------------------------------------------------
                            859 ;Allocation info for local variables in function 'get_digit'
                            860 ;------------------------------------------------------------
                            861 ;place                     Allocated with name '_get_digit_PARM_2'
                            862 ;value                     Allocated to registers r2 r3 
                            863 ;powers                    Allocated with name '_get_digit_powers_1_1'
                            864 ;------------------------------------------------------------
                    0152    865 	G$get_digit$0$0 ==.
                    0152    866 	C$main.c$154$1$1 ==.
                            867 ;	main.c:154: unsigned short int get_digit(unsigned int value, unsigned char place) {
                            868 ;	-----------------------------------------
                            869 ;	 function get_digit
                            870 ;	-----------------------------------------
   01DA                     871 _get_digit:
   01DA AA 82               872 	mov	r2,dpl
   01DC AB 83               873 	mov	r3,dph
                    0156    874 	C$main.c$157$1$1 ==.
                            875 ;	main.c:157: unsigned int powers [] = {1, 10, 100, 1000};
   01DE 75 1E 01            876 	mov	_get_digit_powers_1_1,#0x01
   01E1 75 1F 00            877 	mov	(_get_digit_powers_1_1 + 1),#0x00
   01E4 75 20 0A            878 	mov	(_get_digit_powers_1_1 + 0x0002),#0x0A
   01E7 75 21 00            879 	mov	((_get_digit_powers_1_1 + 0x0002) + 1),#0x00
   01EA 75 22 64            880 	mov	(_get_digit_powers_1_1 + 0x0004),#0x64
   01ED 75 23 00            881 	mov	((_get_digit_powers_1_1 + 0x0004) + 1),#0x00
   01F0 75 24 E8            882 	mov	(_get_digit_powers_1_1 + 0x0006),#0xE8
   01F3 75 25 03            883 	mov	((_get_digit_powers_1_1 + 0x0006) + 1),#0x03
                    016E    884 	C$main.c$160$1$1 ==.
                            885 ;	main.c:160: if (value < 10 && place > 1) {
   01F6 C3                  886 	clr	c
   01F7 EA                  887 	mov	a,r2
   01F8 94 0A               888 	subb	a,#0x0A
   01FA EB                  889 	mov	a,r3
   01FB 94 00               890 	subb	a,#0x00
   01FD 50 0A               891 	jnc	00109$
   01FF E5 1D               892 	mov	a,_get_digit_PARM_2
   0201 24 FE               893 	add	a,#0xff - 0x01
   0203 50 04               894 	jnc	00109$
                    017D    895 	C$main.c$161$2$2 ==.
                            896 ;	main.c:161: return 0;
   0205 90 00 00            897 	mov	dptr,#0x0000
   0208 22                  898 	ret
   0209                     899 00109$:
                    0181    900 	C$main.c$162$1$1 ==.
                            901 ;	main.c:162: } else if (value < 100 && place > 2) {
   0209 C3                  902 	clr	c
   020A EA                  903 	mov	a,r2
   020B 94 64               904 	subb	a,#0x64
   020D EB                  905 	mov	a,r3
   020E 94 00               906 	subb	a,#0x00
   0210 50 0A               907 	jnc	00105$
   0212 E5 1D               908 	mov	a,_get_digit_PARM_2
   0214 24 FD               909 	add	a,#0xff - 0x02
   0216 50 04               910 	jnc	00105$
                    0190    911 	C$main.c$163$2$3 ==.
                            912 ;	main.c:163: return 0;
   0218 90 00 00            913 	mov	dptr,#0x0000
   021B 22                  914 	ret
   021C                     915 00105$:
                    0194    916 	C$main.c$164$1$1 ==.
                            917 ;	main.c:164: } else if (value < 1000 && place > 3) {
   021C C3                  918 	clr	c
   021D EA                  919 	mov	a,r2
   021E 94 E8               920 	subb	a,#0xE8
   0220 EB                  921 	mov	a,r3
   0221 94 03               922 	subb	a,#0x03
   0223 50 0A               923 	jnc	00110$
   0225 E5 1D               924 	mov	a,_get_digit_PARM_2
   0227 24 FC               925 	add	a,#0xff - 0x03
   0229 50 04               926 	jnc	00110$
                    01A3    927 	C$main.c$165$2$4 ==.
                            928 ;	main.c:165: return 0;
   022B 90 00 00            929 	mov	dptr,#0x0000
   022E 22                  930 	ret
   022F                     931 00110$:
                    01A7    932 	C$main.c$168$1$1 ==.
                            933 ;	main.c:168: return (unsigned short int)(value / powers[place]) % 10;
   022F E5 1D               934 	mov	a,_get_digit_PARM_2
   0231 25 1D               935 	add	a,_get_digit_PARM_2
   0233 24 1E               936 	add	a,#_get_digit_powers_1_1
   0235 F8                  937 	mov	r0,a
   0236 86 26               938 	mov	__divuint_PARM_2,@r0
   0238 08                  939 	inc	r0
   0239 86 27               940 	mov	(__divuint_PARM_2 + 1),@r0
   023B 8A 82               941 	mov	dpl,r2
   023D 8B 83               942 	mov	dph,r3
   023F 12 03 2B            943 	lcall	__divuint
   0242 AA 82               944 	mov	r2,dpl
   0244 AB 83               945 	mov	r3,dph
   0246 75 26 0A            946 	mov	__moduint_PARM_2,#0x0A
   0249 E4                  947 	clr	a
   024A F5 27               948 	mov	(__moduint_PARM_2 + 1),a
   024C 8A 82               949 	mov	dpl,r2
   024E 8B 83               950 	mov	dph,r3
                    01C8    951 	C$main.c$169$1$1 ==.
                    01C8    952 	XG$get_digit$0$0 ==.
   0250 02 03 54            953 	ljmp	__moduint
                            954 ;------------------------------------------------------------
                            955 ;Allocation info for local variables in function 'display'
                            956 ;------------------------------------------------------------
                            957 ;value                     Allocated to registers r2 r3 
                            958 ;i                         Allocated to registers r4 
                            959 ;------------------------------------------------------------
                    01CB    960 	G$display$0$0 ==.
                    01CB    961 	C$main.c$176$1$1 ==.
                            962 ;	main.c:176: void display(unsigned short int value) { // todo: should be unsigned short int
                            963 ;	-----------------------------------------
                            964 ;	 function display
                            965 ;	-----------------------------------------
   0253                     966 _display:
   0253 AA 82               967 	mov	r2,dpl
   0255 AB 83               968 	mov	r3,dph
                    01CF    969 	C$main.c$181$1$1 ==.
                            970 ;	main.c:181: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   0257 7C 00               971 	mov	r4,#0x00
   0259                     972 00101$:
   0259 C3                  973 	clr	c
   025A EC                  974 	mov	a,r4
   025B 95 09               975 	subb	a,_NUMBER_OF_DIGITS
   025D 50 25               976 	jnc	00105$
                    01D7    977 	C$main.c$182$2$2 ==.
                            978 ;	main.c:182: write_segment(i, get_digit(value, i));
   025F 8C 1D               979 	mov	_get_digit_PARM_2,r4
   0261 8A 82               980 	mov	dpl,r2
   0263 8B 83               981 	mov	dph,r3
   0265 C0 02               982 	push	ar2
   0267 C0 03               983 	push	ar3
   0269 C0 04               984 	push	ar4
   026B 12 01 DA            985 	lcall	_get_digit
   026E AD 82               986 	mov	r5,dpl
   0270 D0 04               987 	pop	ar4
   0272 8D 1C               988 	mov	_write_segment_PARM_2,r5
   0274 8C 82               989 	mov	dpl,r4
   0276 C0 04               990 	push	ar4
   0278 12 01 8E            991 	lcall	_write_segment
   027B D0 04               992 	pop	ar4
   027D D0 03               993 	pop	ar3
   027F D0 02               994 	pop	ar2
                    01F9    995 	C$main.c$181$1$1 ==.
                            996 ;	main.c:181: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   0281 0C                  997 	inc	r4
   0282 80 D5               998 	sjmp	00101$
   0284                     999 00105$:
                    01FC   1000 	C$main.c$184$1$1 ==.
                    01FC   1001 	XG$display$0$0 ==.
   0284 22                 1002 	ret
                           1003 ;------------------------------------------------------------
                           1004 ;Allocation info for local variables in function 'reset_display'
                           1005 ;------------------------------------------------------------
                           1006 ;------------------------------------------------------------
                    01FD   1007 	G$reset_display$0$0 ==.
                    01FD   1008 	C$main.c$189$1$1 ==.
                           1009 ;	main.c:189: void reset_display() {
                           1010 ;	-----------------------------------------
                           1011 ;	 function reset_display
                           1012 ;	-----------------------------------------
   0285                    1013 _reset_display:
                    01FD   1014 	C$main.c$190$1$1 ==.
                           1015 ;	main.c:190: P3_0 = 1;
   0285 D2 B0              1016 	setb	_P3_0
                    01FF   1017 	C$main.c$191$1$1 ==.
                           1018 ;	main.c:191: P3_1 = 1;
   0287 D2 B1              1019 	setb	_P3_1
                    0201   1020 	C$main.c$192$1$1 ==.
                           1021 ;	main.c:192: P3_2 = 1;
   0289 D2 B2              1022 	setb	_P3_2
                    0203   1023 	C$main.c$193$1$1 ==.
                           1024 ;	main.c:193: P3_3 = 1;
   028B D2 B3              1025 	setb	_P3_3
                    0205   1026 	C$main.c$194$1$1 ==.
                    0205   1027 	XG$reset_display$0$0 ==.
   028D 22                 1028 	ret
                           1029 ;------------------------------------------------------------
                           1030 ;Allocation info for local variables in function 'bounce_delay'
                           1031 ;------------------------------------------------------------
                           1032 ;------------------------------------------------------------
                    0206   1033 	G$bounce_delay$0$0 ==.
                    0206   1034 	C$main.c$199$1$1 ==.
                           1035 ;	main.c:199: void bounce_delay() {
                           1036 ;	-----------------------------------------
                           1037 ;	 function bounce_delay
                           1038 ;	-----------------------------------------
   028E                    1039 _bounce_delay:
                    0206   1040 	C$main.c$200$1$1 ==.
                           1041 ;	main.c:200: for (cycle_delay = 0; cycle_delay < 10; cycle_delay++);
   028E 75 14 0A           1042 	mov	_cycle_delay,#0x0A
   0291 E4                 1043 	clr	a
   0292 F5 15              1044 	mov	(_cycle_delay + 1),a
   0294 F5 16              1045 	mov	(_cycle_delay + 2),a
   0296 F5 17              1046 	mov	(_cycle_delay + 3),a
   0298                    1047 00103$:
   0298 15 14              1048 	dec	_cycle_delay
   029A 74 FF              1049 	mov	a,#0xff
   029C B5 14 0C           1050 	cjne	a,_cycle_delay,00108$
   029F 15 15              1051 	dec	(_cycle_delay + 1)
   02A1 B5 15 07           1052 	cjne	a,(_cycle_delay + 1),00108$
   02A4 15 16              1053 	dec	(_cycle_delay + 2)
   02A6 B5 16 02           1054 	cjne	a,(_cycle_delay + 2),00108$
   02A9 15 17              1055 	dec	(_cycle_delay + 3)
   02AB                    1056 00108$:
   02AB E5 14              1057 	mov	a,_cycle_delay
   02AD 45 15              1058 	orl	a,(_cycle_delay + 1)
   02AF 45 16              1059 	orl	a,(_cycle_delay + 2)
   02B1 45 17              1060 	orl	a,(_cycle_delay + 3)
   02B3 70 E3              1061 	jnz	00103$
   02B5 75 14 0A           1062 	mov	_cycle_delay,#0x0A
   02B8 E4                 1063 	clr	a
   02B9 F5 15              1064 	mov	(_cycle_delay + 1),a
   02BB F5 16              1065 	mov	(_cycle_delay + 2),a
   02BD F5 17              1066 	mov	(_cycle_delay + 3),a
                    0237   1067 	C$main.c$201$1$1 ==.
                    0237   1068 	XG$bounce_delay$0$0 ==.
   02BF 22                 1069 	ret
                           1070 ;------------------------------------------------------------
                           1071 ;Allocation info for local variables in function 'check_start_press'
                           1072 ;------------------------------------------------------------
                           1073 ;------------------------------------------------------------
                    0238   1074 	G$check_start_press$0$0 ==.
                    0238   1075 	C$main.c$208$1$1 ==.
                           1076 ;	main.c:208: void check_start_press(){
                           1077 ;	-----------------------------------------
                           1078 ;	 function check_start_press
                           1079 ;	-----------------------------------------
   02C0                    1080 _check_start_press:
                    0238   1081 	C$main.c$210$1$1 ==.
                           1082 ;	main.c:210: if (P1_3 && P1_6) {
   02C0 30 93 42           1083 	jnb	_P1_3,00105$
   02C3 30 96 3F           1084 	jnb	_P1_6,00105$
                    023E   1085 	C$main.c$212$2$2 ==.
                           1086 ;	main.c:212: bounce_delay();
   02C6 12 02 8E           1087 	lcall	_bounce_delay
                    0241   1088 	C$main.c$213$2$2 ==.
                           1089 ;	main.c:213: if (P1_3 && P1_6 == 1) {
   02C9 30 93 3C           1090 	jnb	_P1_3,00112$
   02CC 30 96 39           1091 	jnb	_P1_6,00112$
                    0247   1092 	C$main.c$214$3$3 ==.
                           1093 ;	main.c:214: display(1111); // for testing if btn was pressed
   02CF 90 04 57           1094 	mov	dptr,#0x0457
   02D2 12 02 53           1095 	lcall	_display
                    024D   1096 	C$main.c$221$3$3 ==.
                           1097 ;	main.c:221: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   02D5 E4                 1098 	clr	a
   02D6 F5 14              1099 	mov	_cycle_delay,a
   02D8 F5 15              1100 	mov	(_cycle_delay + 1),a
   02DA F5 16              1101 	mov	(_cycle_delay + 2),a
   02DC F5 17              1102 	mov	(_cycle_delay + 3),a
   02DE                    1103 00108$:
   02DE C3                 1104 	clr	c
   02DF E5 14              1105 	mov	a,_cycle_delay
   02E1 95 18              1106 	subb	a,_cycle_duration
   02E3 E5 15              1107 	mov	a,(_cycle_delay + 1)
   02E5 95 19              1108 	subb	a,(_cycle_duration + 1)
   02E7 E5 16              1109 	mov	a,(_cycle_delay + 2)
   02E9 95 1A              1110 	subb	a,(_cycle_duration + 2)
   02EB E5 17              1111 	mov	a,(_cycle_delay + 3)
   02ED 95 1B              1112 	subb	a,(_cycle_duration + 3)
   02EF 50 17              1113 	jnc	00112$
   02F1 05 14              1114 	inc	_cycle_delay
   02F3 E4                 1115 	clr	a
   02F4 B5 14 E7           1116 	cjne	a,_cycle_delay,00108$
   02F7 05 15              1117 	inc	(_cycle_delay + 1)
   02F9 B5 15 E2           1118 	cjne	a,(_cycle_delay + 1),00108$
   02FC 05 16              1119 	inc	(_cycle_delay + 2)
   02FE B5 16 DD           1120 	cjne	a,(_cycle_delay + 2),00108$
   0301 05 17              1121 	inc	(_cycle_delay + 3)
   0303 80 D9              1122 	sjmp	00108$
   0305                    1123 00105$:
                    027D   1124 	C$main.c$225$2$4 ==.
                           1125 ;	main.c:225: reset_display();
                    027D   1126 	C$main.c$227$1$1 ==.
                    027D   1127 	XG$check_start_press$0$0 ==.
   0305 02 02 85           1128 	ljmp	_reset_display
   0308                    1129 00112$:
   0308 22                 1130 	ret
                           1131 ;------------------------------------------------------------
                           1132 ;Allocation info for local variables in function 'init'
                           1133 ;------------------------------------------------------------
                           1134 ;------------------------------------------------------------
                    0281   1135 	G$init$0$0 ==.
                    0281   1136 	C$main.c$231$1$1 ==.
                           1137 ;	main.c:231: void init(void) {
                           1138 ;	-----------------------------------------
                           1139 ;	 function init
                           1140 ;	-----------------------------------------
   0309                    1141 _init:
                    0281   1142 	C$main.c$232$1$1 ==.
                           1143 ;	main.c:232: KEYPAD_PORT = 1; // Define as input
   0309 75 90 01           1144 	mov	_P1,#0x01
                    0284   1145 	C$main.c$234$1$1 ==.
                           1146 ;	main.c:234: cycle_duration = 1; // The artificial time delay is X cycles long
   030C 75 18 01           1147 	mov	_cycle_duration,#0x01
   030F E4                 1148 	clr	a
   0310 F5 19              1149 	mov	(_cycle_duration + 1),a
   0312 F5 1A              1150 	mov	(_cycle_duration + 2),a
   0314 F5 1B              1151 	mov	(_cycle_duration + 3),a
                    028E   1152 	C$main.c$235$1$1 ==.
                    028E   1153 	XG$init$0$0 ==.
   0316 22                 1154 	ret
                           1155 ;------------------------------------------------------------
                           1156 ;Allocation info for local variables in function 'main'
                           1157 ;------------------------------------------------------------
                           1158 ;------------------------------------------------------------
                    028F   1159 	G$main$0$0 ==.
                    028F   1160 	C$main.c$239$1$1 ==.
                           1161 ;	main.c:239: void main (void) {
                           1162 ;	-----------------------------------------
                           1163 ;	 function main
                           1164 ;	-----------------------------------------
   0317                    1165 _main:
                    028F   1166 	C$main.c$240$1$1 ==.
                           1167 ;	main.c:240: init(); // Initialize
   0317 12 03 09           1168 	lcall	_init
                    0292   1169 	C$main.c$242$1$1 ==.
                           1170 ;	main.c:242: while (!RUNNING) {
   031A                    1171 00101$:
   031A E5 08              1172 	mov	a,_RUNNING
   031C 70 0C              1173 	jnz	00104$
                    0296   1174 	C$main.c$243$2$2 ==.
                           1175 ;	main.c:243: display(GetNumberFromMatrixKeypad());
   031E 12 00 88           1176 	lcall	_GetNumberFromMatrixKeypad
   0321 7B 00              1177 	mov	r3,#0x00
   0323 8B 83              1178 	mov	dph,r3
   0325 12 02 53           1179 	lcall	_display
   0328 80 F0              1180 	sjmp	00101$
   032A                    1181 00104$:
                    02A2   1182 	C$main.c$245$1$1 ==.
                    02A2   1183 	XG$main$0$0 ==.
   032A 22                 1184 	ret
                           1185 	.area CSEG    (CODE)
                           1186 	.area CONST   (CODE)
                           1187 	.area XINIT   (CODE)
                           1188 	.area CABS    (ABS,CODE)
