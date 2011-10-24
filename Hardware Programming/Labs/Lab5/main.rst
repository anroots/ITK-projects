                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Mon Oct 24 13:34:14 2011
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _check_incoming
                             14 	.globl _check_outgoing
                             15 	.globl _display
                             16 	.globl _get_digit
                             17 	.globl _write_segment
                             18 	.globl _init
                             19 	.globl _CY
                             20 	.globl _AC
                             21 	.globl _F0
                             22 	.globl _RS1
                             23 	.globl _RS0
                             24 	.globl _OV
                             25 	.globl _F1
                             26 	.globl _P
                             27 	.globl _PS
                             28 	.globl _PT1
                             29 	.globl _PX1
                             30 	.globl _PT0
                             31 	.globl _PX0
                             32 	.globl _RD
                             33 	.globl _WR
                             34 	.globl _T1
                             35 	.globl _T0
                             36 	.globl _INT1
                             37 	.globl _INT0
                             38 	.globl _TXD
                             39 	.globl _RXD
                             40 	.globl _P3_7
                             41 	.globl _P3_6
                             42 	.globl _P3_5
                             43 	.globl _P3_4
                             44 	.globl _P3_3
                             45 	.globl _P3_2
                             46 	.globl _P3_1
                             47 	.globl _P3_0
                             48 	.globl _EA
                             49 	.globl _ES
                             50 	.globl _ET1
                             51 	.globl _EX1
                             52 	.globl _ET0
                             53 	.globl _EX0
                             54 	.globl _P2_7
                             55 	.globl _P2_6
                             56 	.globl _P2_5
                             57 	.globl _P2_4
                             58 	.globl _P2_3
                             59 	.globl _P2_2
                             60 	.globl _P2_1
                             61 	.globl _P2_0
                             62 	.globl _SM0
                             63 	.globl _SM1
                             64 	.globl _SM2
                             65 	.globl _REN
                             66 	.globl _TB8
                             67 	.globl _RB8
                             68 	.globl _TI
                             69 	.globl _RI
                             70 	.globl _P1_7
                             71 	.globl _P1_6
                             72 	.globl _P1_5
                             73 	.globl _P1_4
                             74 	.globl _P1_3
                             75 	.globl _P1_2
                             76 	.globl _P1_1
                             77 	.globl _P1_0
                             78 	.globl _TF1
                             79 	.globl _TR1
                             80 	.globl _TF0
                             81 	.globl _TR0
                             82 	.globl _IE1
                             83 	.globl _IT1
                             84 	.globl _IE0
                             85 	.globl _IT0
                             86 	.globl _P0_7
                             87 	.globl _P0_6
                             88 	.globl _P0_5
                             89 	.globl _P0_4
                             90 	.globl _P0_3
                             91 	.globl _P0_2
                             92 	.globl _P0_1
                             93 	.globl _P0_0
                             94 	.globl _B
                             95 	.globl _ACC
                             96 	.globl _PSW
                             97 	.globl _IP
                             98 	.globl _P3
                             99 	.globl _IE
                            100 	.globl _P2
                            101 	.globl _SBUF
                            102 	.globl _SCON
                            103 	.globl _P1
                            104 	.globl _TH1
                            105 	.globl _TH0
                            106 	.globl _TL1
                            107 	.globl _TL0
                            108 	.globl _TMOD
                            109 	.globl _TCON
                            110 	.globl _PCON
                            111 	.globl _DPH
                            112 	.globl _DPL
                            113 	.globl _SP
                            114 	.globl _P0
                            115 	.globl _get_digit_PARM_2
                            116 	.globl _write_segment_PARM_2
                            117 	.globl _cycle_duration
                            118 	.globl _cycle_delay
                            119 	.globl _NUMBERS
                            120 	.globl _MAX_SLOTS
                            121 	.globl _free_slots
                            122 	.globl _NUMBER_OF_DIGITS
                            123 ;--------------------------------------------------------
                            124 ; special function registers
                            125 ;--------------------------------------------------------
                            126 	.area RSEG    (DATA)
                    0080    127 G$P0$0$0 == 0x0080
                    0080    128 _P0	=	0x0080
                    0081    129 G$SP$0$0 == 0x0081
                    0081    130 _SP	=	0x0081
                    0082    131 G$DPL$0$0 == 0x0082
                    0082    132 _DPL	=	0x0082
                    0083    133 G$DPH$0$0 == 0x0083
                    0083    134 _DPH	=	0x0083
                    0087    135 G$PCON$0$0 == 0x0087
                    0087    136 _PCON	=	0x0087
                    0088    137 G$TCON$0$0 == 0x0088
                    0088    138 _TCON	=	0x0088
                    0089    139 G$TMOD$0$0 == 0x0089
                    0089    140 _TMOD	=	0x0089
                    008A    141 G$TL0$0$0 == 0x008a
                    008A    142 _TL0	=	0x008a
                    008B    143 G$TL1$0$0 == 0x008b
                    008B    144 _TL1	=	0x008b
                    008C    145 G$TH0$0$0 == 0x008c
                    008C    146 _TH0	=	0x008c
                    008D    147 G$TH1$0$0 == 0x008d
                    008D    148 _TH1	=	0x008d
                    0090    149 G$P1$0$0 == 0x0090
                    0090    150 _P1	=	0x0090
                    0098    151 G$SCON$0$0 == 0x0098
                    0098    152 _SCON	=	0x0098
                    0099    153 G$SBUF$0$0 == 0x0099
                    0099    154 _SBUF	=	0x0099
                    00A0    155 G$P2$0$0 == 0x00a0
                    00A0    156 _P2	=	0x00a0
                    00A8    157 G$IE$0$0 == 0x00a8
                    00A8    158 _IE	=	0x00a8
                    00B0    159 G$P3$0$0 == 0x00b0
                    00B0    160 _P3	=	0x00b0
                    00B8    161 G$IP$0$0 == 0x00b8
                    00B8    162 _IP	=	0x00b8
                    00D0    163 G$PSW$0$0 == 0x00d0
                    00D0    164 _PSW	=	0x00d0
                    00E0    165 G$ACC$0$0 == 0x00e0
                    00E0    166 _ACC	=	0x00e0
                    00F0    167 G$B$0$0 == 0x00f0
                    00F0    168 _B	=	0x00f0
                            169 ;--------------------------------------------------------
                            170 ; special function bits
                            171 ;--------------------------------------------------------
                            172 	.area RSEG    (DATA)
                    0080    173 G$P0_0$0$0 == 0x0080
                    0080    174 _P0_0	=	0x0080
                    0081    175 G$P0_1$0$0 == 0x0081
                    0081    176 _P0_1	=	0x0081
                    0082    177 G$P0_2$0$0 == 0x0082
                    0082    178 _P0_2	=	0x0082
                    0083    179 G$P0_3$0$0 == 0x0083
                    0083    180 _P0_3	=	0x0083
                    0084    181 G$P0_4$0$0 == 0x0084
                    0084    182 _P0_4	=	0x0084
                    0085    183 G$P0_5$0$0 == 0x0085
                    0085    184 _P0_5	=	0x0085
                    0086    185 G$P0_6$0$0 == 0x0086
                    0086    186 _P0_6	=	0x0086
                    0087    187 G$P0_7$0$0 == 0x0087
                    0087    188 _P0_7	=	0x0087
                    0088    189 G$IT0$0$0 == 0x0088
                    0088    190 _IT0	=	0x0088
                    0089    191 G$IE0$0$0 == 0x0089
                    0089    192 _IE0	=	0x0089
                    008A    193 G$IT1$0$0 == 0x008a
                    008A    194 _IT1	=	0x008a
                    008B    195 G$IE1$0$0 == 0x008b
                    008B    196 _IE1	=	0x008b
                    008C    197 G$TR0$0$0 == 0x008c
                    008C    198 _TR0	=	0x008c
                    008D    199 G$TF0$0$0 == 0x008d
                    008D    200 _TF0	=	0x008d
                    008E    201 G$TR1$0$0 == 0x008e
                    008E    202 _TR1	=	0x008e
                    008F    203 G$TF1$0$0 == 0x008f
                    008F    204 _TF1	=	0x008f
                    0090    205 G$P1_0$0$0 == 0x0090
                    0090    206 _P1_0	=	0x0090
                    0091    207 G$P1_1$0$0 == 0x0091
                    0091    208 _P1_1	=	0x0091
                    0092    209 G$P1_2$0$0 == 0x0092
                    0092    210 _P1_2	=	0x0092
                    0093    211 G$P1_3$0$0 == 0x0093
                    0093    212 _P1_3	=	0x0093
                    0094    213 G$P1_4$0$0 == 0x0094
                    0094    214 _P1_4	=	0x0094
                    0095    215 G$P1_5$0$0 == 0x0095
                    0095    216 _P1_5	=	0x0095
                    0096    217 G$P1_6$0$0 == 0x0096
                    0096    218 _P1_6	=	0x0096
                    0097    219 G$P1_7$0$0 == 0x0097
                    0097    220 _P1_7	=	0x0097
                    0098    221 G$RI$0$0 == 0x0098
                    0098    222 _RI	=	0x0098
                    0099    223 G$TI$0$0 == 0x0099
                    0099    224 _TI	=	0x0099
                    009A    225 G$RB8$0$0 == 0x009a
                    009A    226 _RB8	=	0x009a
                    009B    227 G$TB8$0$0 == 0x009b
                    009B    228 _TB8	=	0x009b
                    009C    229 G$REN$0$0 == 0x009c
                    009C    230 _REN	=	0x009c
                    009D    231 G$SM2$0$0 == 0x009d
                    009D    232 _SM2	=	0x009d
                    009E    233 G$SM1$0$0 == 0x009e
                    009E    234 _SM1	=	0x009e
                    009F    235 G$SM0$0$0 == 0x009f
                    009F    236 _SM0	=	0x009f
                    00A0    237 G$P2_0$0$0 == 0x00a0
                    00A0    238 _P2_0	=	0x00a0
                    00A1    239 G$P2_1$0$0 == 0x00a1
                    00A1    240 _P2_1	=	0x00a1
                    00A2    241 G$P2_2$0$0 == 0x00a2
                    00A2    242 _P2_2	=	0x00a2
                    00A3    243 G$P2_3$0$0 == 0x00a3
                    00A3    244 _P2_3	=	0x00a3
                    00A4    245 G$P2_4$0$0 == 0x00a4
                    00A4    246 _P2_4	=	0x00a4
                    00A5    247 G$P2_5$0$0 == 0x00a5
                    00A5    248 _P2_5	=	0x00a5
                    00A6    249 G$P2_6$0$0 == 0x00a6
                    00A6    250 _P2_6	=	0x00a6
                    00A7    251 G$P2_7$0$0 == 0x00a7
                    00A7    252 _P2_7	=	0x00a7
                    00A8    253 G$EX0$0$0 == 0x00a8
                    00A8    254 _EX0	=	0x00a8
                    00A9    255 G$ET0$0$0 == 0x00a9
                    00A9    256 _ET0	=	0x00a9
                    00AA    257 G$EX1$0$0 == 0x00aa
                    00AA    258 _EX1	=	0x00aa
                    00AB    259 G$ET1$0$0 == 0x00ab
                    00AB    260 _ET1	=	0x00ab
                    00AC    261 G$ES$0$0 == 0x00ac
                    00AC    262 _ES	=	0x00ac
                    00AF    263 G$EA$0$0 == 0x00af
                    00AF    264 _EA	=	0x00af
                    00B0    265 G$P3_0$0$0 == 0x00b0
                    00B0    266 _P3_0	=	0x00b0
                    00B1    267 G$P3_1$0$0 == 0x00b1
                    00B1    268 _P3_1	=	0x00b1
                    00B2    269 G$P3_2$0$0 == 0x00b2
                    00B2    270 _P3_2	=	0x00b2
                    00B3    271 G$P3_3$0$0 == 0x00b3
                    00B3    272 _P3_3	=	0x00b3
                    00B4    273 G$P3_4$0$0 == 0x00b4
                    00B4    274 _P3_4	=	0x00b4
                    00B5    275 G$P3_5$0$0 == 0x00b5
                    00B5    276 _P3_5	=	0x00b5
                    00B6    277 G$P3_6$0$0 == 0x00b6
                    00B6    278 _P3_6	=	0x00b6
                    00B7    279 G$P3_7$0$0 == 0x00b7
                    00B7    280 _P3_7	=	0x00b7
                    00B0    281 G$RXD$0$0 == 0x00b0
                    00B0    282 _RXD	=	0x00b0
                    00B1    283 G$TXD$0$0 == 0x00b1
                    00B1    284 _TXD	=	0x00b1
                    00B2    285 G$INT0$0$0 == 0x00b2
                    00B2    286 _INT0	=	0x00b2
                    00B3    287 G$INT1$0$0 == 0x00b3
                    00B3    288 _INT1	=	0x00b3
                    00B4    289 G$T0$0$0 == 0x00b4
                    00B4    290 _T0	=	0x00b4
                    00B5    291 G$T1$0$0 == 0x00b5
                    00B5    292 _T1	=	0x00b5
                    00B6    293 G$WR$0$0 == 0x00b6
                    00B6    294 _WR	=	0x00b6
                    00B7    295 G$RD$0$0 == 0x00b7
                    00B7    296 _RD	=	0x00b7
                    00B8    297 G$PX0$0$0 == 0x00b8
                    00B8    298 _PX0	=	0x00b8
                    00B9    299 G$PT0$0$0 == 0x00b9
                    00B9    300 _PT0	=	0x00b9
                    00BA    301 G$PX1$0$0 == 0x00ba
                    00BA    302 _PX1	=	0x00ba
                    00BB    303 G$PT1$0$0 == 0x00bb
                    00BB    304 _PT1	=	0x00bb
                    00BC    305 G$PS$0$0 == 0x00bc
                    00BC    306 _PS	=	0x00bc
                    00D0    307 G$P$0$0 == 0x00d0
                    00D0    308 _P	=	0x00d0
                    00D1    309 G$F1$0$0 == 0x00d1
                    00D1    310 _F1	=	0x00d1
                    00D2    311 G$OV$0$0 == 0x00d2
                    00D2    312 _OV	=	0x00d2
                    00D3    313 G$RS0$0$0 == 0x00d3
                    00D3    314 _RS0	=	0x00d3
                    00D4    315 G$RS1$0$0 == 0x00d4
                    00D4    316 _RS1	=	0x00d4
                    00D5    317 G$F0$0$0 == 0x00d5
                    00D5    318 _F0	=	0x00d5
                    00D6    319 G$AC$0$0 == 0x00d6
                    00D6    320 _AC	=	0x00d6
                    00D7    321 G$CY$0$0 == 0x00d7
                    00D7    322 _CY	=	0x00d7
                            323 ;--------------------------------------------------------
                            324 ; overlayable register banks
                            325 ;--------------------------------------------------------
                            326 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     327 	.ds 8
                            328 ;--------------------------------------------------------
                            329 ; internal ram data
                            330 ;--------------------------------------------------------
                            331 	.area DSEG    (DATA)
                    0000    332 G$NUMBER_OF_DIGITS$0$0==.
   0008                     333 _NUMBER_OF_DIGITS::
   0008                     334 	.ds 1
                    0001    335 G$free_slots$0$0==.
   0009                     336 _free_slots::
   0009                     337 	.ds 1
                    0002    338 G$MAX_SLOTS$0$0==.
   000A                     339 _MAX_SLOTS::
   000A                     340 	.ds 2
                    0004    341 G$NUMBERS$0$0==.
   000C                     342 _NUMBERS::
   000C                     343 	.ds 10
                    000E    344 G$cycle_delay$0$0==.
   0016                     345 _cycle_delay::
   0016                     346 	.ds 4
                    0012    347 G$cycle_duration$0$0==.
   001A                     348 _cycle_duration::
   001A                     349 	.ds 4
                    0016    350 Lwrite_segment$value$1$1==.
   001E                     351 _write_segment_PARM_2:
   001E                     352 	.ds 1
                    0017    353 Lget_digit$place$1$1==.
   001F                     354 _get_digit_PARM_2:
   001F                     355 	.ds 1
                            356 ;--------------------------------------------------------
                            357 ; overlayable items in internal ram 
                            358 ;--------------------------------------------------------
                            359 	.area OSEG    (OVR,DATA)
                            360 ;--------------------------------------------------------
                            361 ; Stack segment in internal ram 
                            362 ;--------------------------------------------------------
                            363 	.area	SSEG	(DATA)
   0020                     364 __start__stack:
   0020                     365 	.ds	1
                            366 
                            367 ;--------------------------------------------------------
                            368 ; indirectly addressable internal ram data
                            369 ;--------------------------------------------------------
                            370 	.area ISEG    (DATA)
                            371 ;--------------------------------------------------------
                            372 ; absolute internal ram data
                            373 ;--------------------------------------------------------
                            374 	.area IABS    (ABS,DATA)
                            375 	.area IABS    (ABS,DATA)
                            376 ;--------------------------------------------------------
                            377 ; bit data
                            378 ;--------------------------------------------------------
                            379 	.area BSEG    (BIT)
                            380 ;--------------------------------------------------------
                            381 ; paged external ram data
                            382 ;--------------------------------------------------------
                            383 	.area PSEG    (PAG,XDATA)
                            384 ;--------------------------------------------------------
                            385 ; external ram data
                            386 ;--------------------------------------------------------
                            387 	.area XSEG    (XDATA)
                            388 ;--------------------------------------------------------
                            389 ; absolute external ram data
                            390 ;--------------------------------------------------------
                            391 	.area XABS    (ABS,XDATA)
                            392 ;--------------------------------------------------------
                            393 ; external initialized ram data
                            394 ;--------------------------------------------------------
                            395 	.area XISEG   (XDATA)
                            396 	.area HOME    (CODE)
                            397 	.area GSINIT0 (CODE)
                            398 	.area GSINIT1 (CODE)
                            399 	.area GSINIT2 (CODE)
                            400 	.area GSINIT3 (CODE)
                            401 	.area GSINIT4 (CODE)
                            402 	.area GSINIT5 (CODE)
                            403 	.area GSINIT  (CODE)
                            404 	.area GSFINAL (CODE)
                            405 	.area CSEG    (CODE)
                            406 ;--------------------------------------------------------
                            407 ; interrupt vector 
                            408 ;--------------------------------------------------------
                            409 	.area HOME    (CODE)
   0000                     410 __interrupt_vect:
   0000 02 00 08            411 	ljmp	__sdcc_gsinit_startup
                            412 ;--------------------------------------------------------
                            413 ; global & static initialisations
                            414 ;--------------------------------------------------------
                            415 	.area HOME    (CODE)
                            416 	.area GSINIT  (CODE)
                            417 	.area GSFINAL (CODE)
                            418 	.area GSINIT  (CODE)
                            419 	.globl __sdcc_gsinit_startup
                            420 	.globl __sdcc_program_startup
                            421 	.globl __start__stack
                            422 	.globl __mcs51_genXINIT
                            423 	.globl __mcs51_genXRAMCLEAR
                            424 	.globl __mcs51_genRAMCLEAR
                    0000    425 	G$main$0$0 ==.
                    0000    426 	C$main.c$28$1$1 ==.
                            427 ;	main.c:28: unsigned char NUMBER_OF_DIGITS = 3;
   0061 75 08 03            428 	mov	_NUMBER_OF_DIGITS,#0x03
                    0003    429 	G$main$0$0 ==.
                    0003    430 	C$main.c$36$1$1 ==.
                            431 ;	main.c:36: unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0064 75 0C C0            432 	mov	_NUMBERS,#0xC0
   0067 75 0D F9            433 	mov	(_NUMBERS + 0x0001),#0xF9
   006A 75 0E A4            434 	mov	(_NUMBERS + 0x0002),#0xA4
   006D 75 0F B0            435 	mov	(_NUMBERS + 0x0003),#0xB0
   0070 75 10 99            436 	mov	(_NUMBERS + 0x0004),#0x99
   0073 75 11 92            437 	mov	(_NUMBERS + 0x0005),#0x92
   0076 75 12 82            438 	mov	(_NUMBERS + 0x0006),#0x82
   0079 75 13 F0            439 	mov	(_NUMBERS + 0x0007),#0xF0
   007C 75 14 80            440 	mov	(_NUMBERS + 0x0008),#0x80
   007F 75 15 90            441 	mov	(_NUMBERS + 0x0009),#0x90
                            442 	.area GSFINAL (CODE)
   0082 02 00 03            443 	ljmp	__sdcc_program_startup
                            444 ;--------------------------------------------------------
                            445 ; Home
                            446 ;--------------------------------------------------------
                            447 	.area HOME    (CODE)
                            448 	.area HOME    (CODE)
   0003                     449 __sdcc_program_startup:
   0003 12 01 3B            450 	lcall	_main
                            451 ;	return from main will lock up
   0006 80 FE               452 	sjmp .
                            453 ;--------------------------------------------------------
                            454 ; code
                            455 ;--------------------------------------------------------
                            456 	.area CSEG    (CODE)
                            457 ;------------------------------------------------------------
                            458 ;Allocation info for local variables in function 'init'
                            459 ;------------------------------------------------------------
                            460 ;------------------------------------------------------------
                    0000    461 	G$init$0$0 ==.
                    0000    462 	C$main.c$44$0$0 ==.
                            463 ;	main.c:44: void init(void) {
                            464 ;	-----------------------------------------
                            465 ;	 function init
                            466 ;	-----------------------------------------
   0085                     467 _init:
                    0002    468 	ar2 = 0x02
                    0003    469 	ar3 = 0x03
                    0004    470 	ar4 = 0x04
                    0005    471 	ar5 = 0x05
                    0006    472 	ar6 = 0x06
                    0007    473 	ar7 = 0x07
                    0000    474 	ar0 = 0x00
                    0001    475 	ar1 = 0x01
                    0000    476 	C$main.c$45$1$1 ==.
                            477 ;	main.c:45: MAX_SLOTS = 9; // We have this many free slots, max
   0085 75 0A 09            478 	mov	_MAX_SLOTS,#0x09
   0088 E4                  479 	clr	a
   0089 F5 0B               480 	mov	(_MAX_SLOTS + 1),a
                    0006    481 	C$main.c$47$1$1 ==.
                            482 ;	main.c:47: free_slots = MAX_SLOTS; // All slots are empty in the beginning
   008B 75 09 09            483 	mov	_free_slots,#0x09
                    0009    484 	C$main.c$49$1$1 ==.
                            485 ;	main.c:49: BUTTON_ENTER = 1; // Define as input
   008E D2 90               486 	setb	_P1_0
                    000B    487 	C$main.c$50$1$1 ==.
                            488 ;	main.c:50: BUTTON_EXIT = 1; // Define as input
   0090 D2 91               489 	setb	_P1_1
                    000D    490 	C$main.c$52$1$1 ==.
                            491 ;	main.c:52: cycle_duration = 1; // The artificial time delay is X cycles long
   0092 75 1A 01            492 	mov	_cycle_duration,#0x01
   0095 E4                  493 	clr	a
   0096 F5 1B               494 	mov	(_cycle_duration + 1),a
   0098 F5 1C               495 	mov	(_cycle_duration + 2),a
   009A F5 1D               496 	mov	(_cycle_duration + 3),a
                    0017    497 	C$main.c$53$1$1 ==.
                    0017    498 	XG$init$0$0 ==.
   009C 22                  499 	ret
                            500 ;------------------------------------------------------------
                            501 ;Allocation info for local variables in function 'write_segment'
                            502 ;------------------------------------------------------------
                            503 ;value                     Allocated with name '_write_segment_PARM_2'
                            504 ;segment_number            Allocated to registers r2 
                            505 ;------------------------------------------------------------
                    0018    506 	G$write_segment$0$0 ==.
                    0018    507 	C$main.c$61$1$1 ==.
                            508 ;	main.c:61: void write_segment(unsigned char segment_number, unsigned char value) {
                            509 ;	-----------------------------------------
                            510 ;	 function write_segment
                            511 ;	-----------------------------------------
   009D                     512 _write_segment:
   009D AA 82               513 	mov	r2,dpl
                    001A    514 	C$main.c$63$1$1 ==.
                            515 ;	main.c:63: P3_0 = 1; // Reset P3 to avoid flickers
   009F D2 B0               516 	setb	_P3_0
                    001C    517 	C$main.c$64$1$1 ==.
                            518 ;	main.c:64: P3_1 = 1;
   00A1 D2 B1               519 	setb	_P3_1
                    001E    520 	C$main.c$65$1$1 ==.
                            521 ;	main.c:65: P3_2 = 1;
   00A3 D2 B2               522 	setb	_P3_2
                    0020    523 	C$main.c$68$1$1 ==.
                            524 ;	main.c:68: P2 = NUMBERS[value];
   00A5 E5 1E               525 	mov	a,_write_segment_PARM_2
   00A7 24 0C               526 	add	a,#_NUMBERS
   00A9 F8                  527 	mov	r0,a
   00AA 86 A0               528 	mov	_P2,@r0
                    0027    529 	C$main.c$71$1$1 ==.
                            530 ;	main.c:71: switch (segment_number) {
   00AC BA 00 02            531 	cjne	r2,#0x00,00110$
   00AF 80 0A               532 	sjmp	00101$
   00B1                     533 00110$:
   00B1 BA 01 02            534 	cjne	r2,#0x01,00111$
   00B4 80 0C               535 	sjmp	00102$
   00B6                     536 00111$:
                    0031    537 	C$main.c$72$2$2 ==.
                            538 ;	main.c:72: case 0:
   00B6 BA 02 16            539 	cjne	r2,#0x02,00105$
   00B9 80 0E               540 	sjmp	00103$
   00BB                     541 00101$:
                    0036    542 	C$main.c$73$2$2 ==.
                            543 ;	main.c:73: P3_1 = 1;
   00BB D2 B1               544 	setb	_P3_1
                    0038    545 	C$main.c$74$2$2 ==.
                            546 ;	main.c:74: P3_2 = 1;
   00BD D2 B2               547 	setb	_P3_2
                    003A    548 	C$main.c$75$2$2 ==.
                            549 ;	main.c:75: P3_0 = 0;
   00BF C2 B0               550 	clr	_P3_0
                    003C    551 	C$main.c$76$2$2 ==.
                            552 ;	main.c:76: break;
                    003C    553 	C$main.c$77$2$2 ==.
                            554 ;	main.c:77: case 1:
   00C1 22                  555 	ret
   00C2                     556 00102$:
                    003D    557 	C$main.c$78$2$2 ==.
                            558 ;	main.c:78: P3_0 = 1;
   00C2 D2 B0               559 	setb	_P3_0
                    003F    560 	C$main.c$79$2$2 ==.
                            561 ;	main.c:79: P3_2 = 1;
   00C4 D2 B2               562 	setb	_P3_2
                    0041    563 	C$main.c$80$2$2 ==.
                            564 ;	main.c:80: P3_1 = 0;
   00C6 C2 B1               565 	clr	_P3_1
                    0043    566 	C$main.c$81$2$2 ==.
                            567 ;	main.c:81: break;
                    0043    568 	C$main.c$82$2$2 ==.
                            569 ;	main.c:82: case 2:
   00C8 22                  570 	ret
   00C9                     571 00103$:
                    0044    572 	C$main.c$83$2$2 ==.
                            573 ;	main.c:83: P3_3 = 1;
   00C9 D2 B3               574 	setb	_P3_3
                    0046    575 	C$main.c$84$2$2 ==.
                            576 ;	main.c:84: P3_1 = 1;
   00CB D2 B1               577 	setb	_P3_1
                    0048    578 	C$main.c$85$2$2 ==.
                            579 ;	main.c:85: P3_2 = 0;
   00CD C2 B2               580 	clr	_P3_2
                    004A    581 	C$main.c$87$1$1 ==.
                            582 ;	main.c:87: }
   00CF                     583 00105$:
                    004A    584 	C$main.c$88$1$1 ==.
                    004A    585 	XG$write_segment$0$0 ==.
   00CF 22                  586 	ret
                            587 ;------------------------------------------------------------
                            588 ;Allocation info for local variables in function 'get_digit'
                            589 ;------------------------------------------------------------
                            590 ;place                     Allocated with name '_get_digit_PARM_2'
                            591 ;value                     Allocated to registers 
                            592 ;------------------------------------------------------------
                    004B    593 	G$get_digit$0$0 ==.
                    004B    594 	C$main.c$94$1$1 ==.
                            595 ;	main.c:94: unsigned char get_digit(unsigned int value, unsigned char place) {
                            596 ;	-----------------------------------------
                            597 ;	 function get_digit
                            598 ;	-----------------------------------------
   00D0                     599 _get_digit:
                    004B    600 	C$main.c$97$1$1 ==.
                            601 ;	main.c:97: if (place == 0) {
   00D0 E5 1F               602 	mov	a,_get_digit_PARM_2
   00D2 70 04               603 	jnz	00102$
                    004F    604 	C$main.c$98$2$2 ==.
                            605 ;	main.c:98: return 2;
   00D4 75 82 02            606 	mov	dpl,#0x02
   00D7 22                  607 	ret
   00D8                     608 00102$:
                    0053    609 	C$main.c$100$1$1 ==.
                            610 ;	main.c:100: if (place == 1) {
   00D8 74 01               611 	mov	a,#0x01
   00DA B5 1F 04            612 	cjne	a,_get_digit_PARM_2,00104$
                    0058    613 	C$main.c$101$2$3 ==.
                            614 ;	main.c:101: return 3;
   00DD 75 82 03            615 	mov	dpl,#0x03
                    005B    616 	C$main.c$103$1$1 ==.
                            617 ;	main.c:103: return free_slots;
                    005B    618 	C$main.c$104$1$1 ==.
                    005B    619 	XG$get_digit$0$0 ==.
   00E0 22                  620 	ret
   00E1                     621 00104$:
   00E1 85 09 82            622 	mov	dpl,_free_slots
   00E4 22                  623 	ret
                            624 ;------------------------------------------------------------
                            625 ;Allocation info for local variables in function 'display'
                            626 ;------------------------------------------------------------
                            627 ;value                     Allocated to registers r2 r3 
                            628 ;i                         Allocated to registers r4 
                            629 ;------------------------------------------------------------
                    0060    630 	G$display$0$0 ==.
                    0060    631 	C$main.c$111$1$1 ==.
                            632 ;	main.c:111: void display(unsigned int value) {
                            633 ;	-----------------------------------------
                            634 ;	 function display
                            635 ;	-----------------------------------------
   00E5                     636 _display:
   00E5 AA 82               637 	mov	r2,dpl
   00E7 AB 83               638 	mov	r3,dph
                    0064    639 	C$main.c$116$1$1 ==.
                            640 ;	main.c:116: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   00E9 7C 00               641 	mov	r4,#0x00
   00EB                     642 00101$:
   00EB C3                  643 	clr	c
   00EC EC                  644 	mov	a,r4
   00ED 95 08               645 	subb	a,_NUMBER_OF_DIGITS
   00EF 50 2C               646 	jnc	00105$
                    006C    647 	C$main.c$117$2$2 ==.
                            648 ;	main.c:117: write_segment(i, get_digit(value, i+1));
   00F1 EC                  649 	mov	a,r4
   00F2 04                  650 	inc	a
   00F3 FD                  651 	mov	r5,a
   00F4 8D 1F               652 	mov	_get_digit_PARM_2,r5
   00F6 8A 82               653 	mov	dpl,r2
   00F8 8B 83               654 	mov	dph,r3
   00FA C0 02               655 	push	ar2
   00FC C0 03               656 	push	ar3
   00FE C0 04               657 	push	ar4
   0100 C0 05               658 	push	ar5
   0102 12 00 D0            659 	lcall	_get_digit
   0105 85 82 1E            660 	mov	_write_segment_PARM_2,dpl
   0108 D0 05               661 	pop	ar5
   010A D0 04               662 	pop	ar4
   010C 8C 82               663 	mov	dpl,r4
   010E C0 05               664 	push	ar5
   0110 12 00 9D            665 	lcall	_write_segment
   0113 D0 05               666 	pop	ar5
   0115 D0 03               667 	pop	ar3
   0117 D0 02               668 	pop	ar2
                    0094    669 	C$main.c$116$1$1 ==.
                            670 ;	main.c:116: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   0119 8D 04               671 	mov	ar4,r5
   011B 80 CE               672 	sjmp	00101$
   011D                     673 00105$:
                    0098    674 	C$main.c$119$1$1 ==.
                    0098    675 	XG$display$0$0 ==.
   011D 22                  676 	ret
                            677 ;------------------------------------------------------------
                            678 ;Allocation info for local variables in function 'check_outgoing'
                            679 ;------------------------------------------------------------
                            680 ;------------------------------------------------------------
                    0099    681 	G$check_outgoing$0$0 ==.
                    0099    682 	C$main.c$125$1$1 ==.
                            683 ;	main.c:125: void check_outgoing(){
                            684 ;	-----------------------------------------
                            685 ;	 function check_outgoing
                            686 ;	-----------------------------------------
   011E                     687 _check_outgoing:
                    0099    688 	C$main.c$127$1$1 ==.
                            689 ;	main.c:127: if (BUTTON_EXIT == 1) {
   011E 30 91 0F            690 	jnb	_P1_1,00105$
                    009C    691 	C$main.c$130$2$2 ==.
                            692 ;	main.c:130: if (free_slots < MAX_SLOTS) {
   0121 AA 09               693 	mov	r2,_free_slots
   0123 7B 00               694 	mov	r3,#0x00
   0125 C3                  695 	clr	c
   0126 EA                  696 	mov	a,r2
   0127 95 0A               697 	subb	a,_MAX_SLOTS
   0129 EB                  698 	mov	a,r3
   012A 95 0B               699 	subb	a,(_MAX_SLOTS + 1)
   012C 50 02               700 	jnc	00105$
                    00A9    701 	C$main.c$131$3$3 ==.
                            702 ;	main.c:131: free_slots++;
   012E 05 09               703 	inc	_free_slots
   0130                     704 00105$:
                    00AB    705 	C$main.c$134$1$1 ==.
                    00AB    706 	XG$check_outgoing$0$0 ==.
   0130 22                  707 	ret
                            708 ;------------------------------------------------------------
                            709 ;Allocation info for local variables in function 'check_incoming'
                            710 ;------------------------------------------------------------
                            711 ;------------------------------------------------------------
                    00AC    712 	G$check_incoming$0$0 ==.
                    00AC    713 	C$main.c$139$1$1 ==.
                            714 ;	main.c:139: void check_incoming() {
                            715 ;	-----------------------------------------
                            716 ;	 function check_incoming
                            717 ;	-----------------------------------------
   0131                     718 _check_incoming:
                    00AC    719 	C$main.c$140$1$1 ==.
                            720 ;	main.c:140: if (BUTTON_ENTER == 1) {
   0131 30 90 06            721 	jnb	_P1_0,00105$
                    00AF    722 	C$main.c$142$2$2 ==.
                            723 ;	main.c:142: if (free_slots > 0) {    
   0134 E5 09               724 	mov	a,_free_slots
   0136 60 02               725 	jz	00105$
                    00B3    726 	C$main.c$143$3$3 ==.
                            727 ;	main.c:143: free_slots--;
   0138 15 09               728 	dec	_free_slots
   013A                     729 00105$:
                    00B5    730 	C$main.c$146$1$1 ==.
                    00B5    731 	XG$check_incoming$0$0 ==.
   013A 22                  732 	ret
                            733 ;------------------------------------------------------------
                            734 ;Allocation info for local variables in function 'main'
                            735 ;------------------------------------------------------------
                            736 ;------------------------------------------------------------
                    00B6    737 	G$main$0$0 ==.
                    00B6    738 	C$main.c$149$1$1 ==.
                            739 ;	main.c:149: void main (void) {
                            740 ;	-----------------------------------------
                            741 ;	 function main
                            742 ;	-----------------------------------------
   013B                     743 _main:
                    00B6    744 	C$main.c$150$1$1 ==.
                            745 ;	main.c:150: init(); // Initialize
   013B 12 00 85            746 	lcall	_init
                    00B9    747 	C$main.c$152$1$1 ==.
                            748 ;	main.c:152: while (1) {
   013E                     749 00102$:
                    00B9    750 	C$main.c$154$2$2 ==.
                            751 ;	main.c:154: check_incoming(); // Car enters
   013E 12 01 31            752 	lcall	_check_incoming
                    00BC    753 	C$main.c$156$2$2 ==.
                            754 ;	main.c:156: check_outgoing(); // Car leaves
   0141 12 01 1E            755 	lcall	_check_outgoing
                    00BF    756 	C$main.c$163$2$2 ==.
                            757 ;	main.c:163: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   0144 E4                  758 	clr	a
   0145 F5 16               759 	mov	_cycle_delay,a
   0147 F5 17               760 	mov	(_cycle_delay + 1),a
   0149 F5 18               761 	mov	(_cycle_delay + 2),a
   014B F5 19               762 	mov	(_cycle_delay + 3),a
   014D                     763 00104$:
   014D C3                  764 	clr	c
   014E E5 16               765 	mov	a,_cycle_delay
   0150 95 1A               766 	subb	a,_cycle_duration
   0152 E5 17               767 	mov	a,(_cycle_delay + 1)
   0154 95 1B               768 	subb	a,(_cycle_duration + 1)
   0156 E5 18               769 	mov	a,(_cycle_delay + 2)
   0158 95 1C               770 	subb	a,(_cycle_duration + 2)
   015A E5 19               771 	mov	a,(_cycle_delay + 3)
   015C 95 1D               772 	subb	a,(_cycle_duration + 3)
   015E 50 14               773 	jnc	00107$
   0160 05 16               774 	inc	_cycle_delay
   0162 E4                  775 	clr	a
   0163 B5 16 E7            776 	cjne	a,_cycle_delay,00104$
   0166 05 17               777 	inc	(_cycle_delay + 1)
   0168 B5 17 E2            778 	cjne	a,(_cycle_delay + 1),00104$
   016B 05 18               779 	inc	(_cycle_delay + 2)
   016D B5 18 DD            780 	cjne	a,(_cycle_delay + 2),00104$
   0170 05 19               781 	inc	(_cycle_delay + 3)
   0172 80 D9               782 	sjmp	00104$
   0174                     783 00107$:
                    00EF    784 	C$main.c$165$2$2 ==.
                            785 ;	main.c:165: display(free_slots); // Output the number of free slots
   0174 AA 09               786 	mov	r2,_free_slots
   0176 7B 00               787 	mov	r3,#0x00
   0178 8A 82               788 	mov	dpl,r2
   017A 8B 83               789 	mov	dph,r3
   017C 12 00 E5            790 	lcall	_display
                    00FA    791 	C$main.c$167$1$1 ==.
                    00FA    792 	XG$main$0$0 ==.
   017F 80 BD               793 	sjmp	00102$
                            794 	.area CSEG    (CODE)
                            795 	.area CONST   (CODE)
                            796 	.area XINIT   (CODE)
                            797 	.area CABS    (ABS,CODE)
