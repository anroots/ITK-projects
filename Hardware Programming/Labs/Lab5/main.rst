                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Mon Oct 24 23:03:17 2011
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
   0009                     337 	.ds 2
                    0003    338 G$MAX_SLOTS$0$0==.
   000B                     339 _MAX_SLOTS::
   000B                     340 	.ds 2
                    0005    341 G$NUMBERS$0$0==.
   000D                     342 _NUMBERS::
   000D                     343 	.ds 10
                    000F    344 G$cycle_delay$0$0==.
   0017                     345 _cycle_delay::
   0017                     346 	.ds 4
                    0013    347 G$cycle_duration$0$0==.
   001B                     348 _cycle_duration::
   001B                     349 	.ds 4
                    0017    350 Lwrite_segment$value$1$1==.
   001F                     351 _write_segment_PARM_2:
   001F                     352 	.ds 1
                    0018    353 Lget_digit$place$1$1==.
   0020                     354 _get_digit_PARM_2:
   0020                     355 	.ds 1
                            356 ;--------------------------------------------------------
                            357 ; overlayable items in internal ram 
                            358 ;--------------------------------------------------------
                            359 	.area OSEG    (OVR,DATA)
                            360 ;--------------------------------------------------------
                            361 ; Stack segment in internal ram 
                            362 ;--------------------------------------------------------
                            363 	.area	SSEG	(DATA)
   0023                     364 __start__stack:
   0023                     365 	.ds	1
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
   0064 75 0D C0            432 	mov	_NUMBERS,#0xC0
   0067 75 0E F9            433 	mov	(_NUMBERS + 0x0001),#0xF9
   006A 75 0F A4            434 	mov	(_NUMBERS + 0x0002),#0xA4
   006D 75 10 B0            435 	mov	(_NUMBERS + 0x0003),#0xB0
   0070 75 11 99            436 	mov	(_NUMBERS + 0x0004),#0x99
   0073 75 12 92            437 	mov	(_NUMBERS + 0x0005),#0x92
   0076 75 13 82            438 	mov	(_NUMBERS + 0x0006),#0x82
   0079 75 14 F0            439 	mov	(_NUMBERS + 0x0007),#0xF0
   007C 75 15 80            440 	mov	(_NUMBERS + 0x0008),#0x80
   007F 75 16 90            441 	mov	(_NUMBERS + 0x0009),#0x90
                            442 	.area GSFINAL (CODE)
   0082 02 00 03            443 	ljmp	__sdcc_program_startup
                            444 ;--------------------------------------------------------
                            445 ; Home
                            446 ;--------------------------------------------------------
                            447 	.area HOME    (CODE)
                            448 	.area HOME    (CODE)
   0003                     449 __sdcc_program_startup:
   0003 12 01 6B            450 	lcall	_main
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
   0085 75 0B 09            478 	mov	_MAX_SLOTS,#0x09
   0088 E4                  479 	clr	a
   0089 F5 0C               480 	mov	(_MAX_SLOTS + 1),a
                    0006    481 	C$main.c$47$1$1 ==.
                            482 ;	main.c:47: free_slots = MAX_SLOTS; // All slots are empty in the beginning
   008B 75 09 09            483 	mov	_free_slots,#0x09
   008E E4                  484 	clr	a
   008F F5 0A               485 	mov	(_free_slots + 1),a
                    000C    486 	C$main.c$49$1$1 ==.
                            487 ;	main.c:49: BUTTON_ENTER = 1; // Define as input
   0091 D2 90               488 	setb	_P1_0
                    000E    489 	C$main.c$50$1$1 ==.
                            490 ;	main.c:50: BUTTON_EXIT = 1; // Define as input
   0093 D2 91               491 	setb	_P1_1
                    0010    492 	C$main.c$52$1$1 ==.
                            493 ;	main.c:52: cycle_duration = 1; // The artificial time delay is X cycles long
   0095 75 1B 01            494 	mov	_cycle_duration,#0x01
   0098 E4                  495 	clr	a
   0099 F5 1C               496 	mov	(_cycle_duration + 1),a
   009B F5 1D               497 	mov	(_cycle_duration + 2),a
   009D F5 1E               498 	mov	(_cycle_duration + 3),a
                    001A    499 	C$main.c$53$1$1 ==.
                    001A    500 	XG$init$0$0 ==.
   009F 22                  501 	ret
                            502 ;------------------------------------------------------------
                            503 ;Allocation info for local variables in function 'write_segment'
                            504 ;------------------------------------------------------------
                            505 ;value                     Allocated with name '_write_segment_PARM_2'
                            506 ;segment_number            Allocated to registers r2 
                            507 ;------------------------------------------------------------
                    001B    508 	G$write_segment$0$0 ==.
                    001B    509 	C$main.c$61$1$1 ==.
                            510 ;	main.c:61: void write_segment(unsigned char segment_number, unsigned char value) {
                            511 ;	-----------------------------------------
                            512 ;	 function write_segment
                            513 ;	-----------------------------------------
   00A0                     514 _write_segment:
   00A0 AA 82               515 	mov	r2,dpl
                    001D    516 	C$main.c$63$1$1 ==.
                            517 ;	main.c:63: P3_0 = 1; // Reset P3 to avoid flickers
   00A2 D2 B0               518 	setb	_P3_0
                    001F    519 	C$main.c$64$1$1 ==.
                            520 ;	main.c:64: P3_1 = 1;
   00A4 D2 B1               521 	setb	_P3_1
                    0021    522 	C$main.c$65$1$1 ==.
                            523 ;	main.c:65: P3_2 = 1;
   00A6 D2 B2               524 	setb	_P3_2
                    0023    525 	C$main.c$68$1$1 ==.
                            526 ;	main.c:68: P2 = NUMBERS[value];
   00A8 E5 1F               527 	mov	a,_write_segment_PARM_2
   00AA 24 0D               528 	add	a,#_NUMBERS
   00AC F8                  529 	mov	r0,a
   00AD 86 A0               530 	mov	_P2,@r0
                    002A    531 	C$main.c$71$1$1 ==.
                            532 ;	main.c:71: switch (segment_number) {
   00AF BA 00 02            533 	cjne	r2,#0x00,00110$
   00B2 80 0A               534 	sjmp	00101$
   00B4                     535 00110$:
   00B4 BA 01 02            536 	cjne	r2,#0x01,00111$
   00B7 80 0C               537 	sjmp	00102$
   00B9                     538 00111$:
                    0034    539 	C$main.c$72$2$2 ==.
                            540 ;	main.c:72: case 0:
   00B9 BA 02 16            541 	cjne	r2,#0x02,00105$
   00BC 80 0E               542 	sjmp	00103$
   00BE                     543 00101$:
                    0039    544 	C$main.c$73$2$2 ==.
                            545 ;	main.c:73: P3_1 = 1;
   00BE D2 B1               546 	setb	_P3_1
                    003B    547 	C$main.c$74$2$2 ==.
                            548 ;	main.c:74: P3_2 = 1;
   00C0 D2 B2               549 	setb	_P3_2
                    003D    550 	C$main.c$75$2$2 ==.
                            551 ;	main.c:75: P3_0 = 0;
   00C2 C2 B0               552 	clr	_P3_0
                    003F    553 	C$main.c$76$2$2 ==.
                            554 ;	main.c:76: break;
                    003F    555 	C$main.c$77$2$2 ==.
                            556 ;	main.c:77: case 1:
   00C4 22                  557 	ret
   00C5                     558 00102$:
                    0040    559 	C$main.c$78$2$2 ==.
                            560 ;	main.c:78: P3_0 = 1;
   00C5 D2 B0               561 	setb	_P3_0
                    0042    562 	C$main.c$79$2$2 ==.
                            563 ;	main.c:79: P3_2 = 1;
   00C7 D2 B2               564 	setb	_P3_2
                    0044    565 	C$main.c$80$2$2 ==.
                            566 ;	main.c:80: P3_1 = 0;
   00C9 C2 B1               567 	clr	_P3_1
                    0046    568 	C$main.c$81$2$2 ==.
                            569 ;	main.c:81: break;
                    0046    570 	C$main.c$82$2$2 ==.
                            571 ;	main.c:82: case 2:
   00CB 22                  572 	ret
   00CC                     573 00103$:
                    0047    574 	C$main.c$83$2$2 ==.
                            575 ;	main.c:83: P3_3 = 1;
   00CC D2 B3               576 	setb	_P3_3
                    0049    577 	C$main.c$84$2$2 ==.
                            578 ;	main.c:84: P3_1 = 1;
   00CE D2 B1               579 	setb	_P3_1
                    004B    580 	C$main.c$85$2$2 ==.
                            581 ;	main.c:85: P3_2 = 0;
   00D0 C2 B2               582 	clr	_P3_2
                    004D    583 	C$main.c$87$1$1 ==.
                            584 ;	main.c:87: }
   00D2                     585 00105$:
                    004D    586 	C$main.c$88$1$1 ==.
                    004D    587 	XG$write_segment$0$0 ==.
   00D2 22                  588 	ret
                            589 ;------------------------------------------------------------
                            590 ;Allocation info for local variables in function 'get_digit'
                            591 ;------------------------------------------------------------
                            592 ;place                     Allocated with name '_get_digit_PARM_2'
                            593 ;value                     Allocated to registers r2 r3 
                            594 ;------------------------------------------------------------
                    004E    595 	G$get_digit$0$0 ==.
                    004E    596 	C$main.c$94$1$1 ==.
                            597 ;	main.c:94: unsigned char get_digit(unsigned int value, unsigned char place) {
                            598 ;	-----------------------------------------
                            599 ;	 function get_digit
                            600 ;	-----------------------------------------
   00D3                     601 _get_digit:
   00D3 AA 82               602 	mov	r2,dpl
   00D5 AB 83               603 	mov	r3,dph
                    0052    604 	C$main.c$96$1$1 ==.
                            605 ;	main.c:96: if (place == 0) {
   00D7 E5 20               606 	mov	a,_get_digit_PARM_2
   00D9 70 0B               607 	jnz	00104$
                    0056    608 	C$main.c$97$2$2 ==.
                            609 ;	main.c:97: return (unsigned char)value % 10;
   00DB 8A 04               610 	mov	ar4,r2
   00DD 75 F0 0A            611 	mov	b,#0x0A
   00E0 EC                  612 	mov	a,r4
   00E1 84                  613 	div	ab
   00E2 85 F0 82            614 	mov	dpl,b
   00E5 22                  615 	ret
   00E6                     616 00104$:
                    0061    617 	C$main.c$98$1$1 ==.
                            618 ;	main.c:98: } else if (place == 1) {
   00E6 74 01               619 	mov	a,#0x01
   00E8 B5 20 18            620 	cjne	a,_get_digit_PARM_2,00105$
                    0066    621 	C$main.c$99$1$1 ==.
                            622 ;	main.c:99: return (unsigned char)(value / 10) % 10;
   00EB 75 21 0A            623 	mov	__divuint_PARM_2,#0x0A
   00EE E4                  624 	clr	a
   00EF F5 22               625 	mov	(__divuint_PARM_2 + 1),a
   00F1 8A 82               626 	mov	dpl,r2
   00F3 8B 83               627 	mov	dph,r3
   00F5 12 01 AF            628 	lcall	__divuint
   00F8 AC 82               629 	mov	r4,dpl
   00FA 75 F0 0A            630 	mov	b,#0x0A
   00FD EC                  631 	mov	a,r4
   00FE 84                  632 	div	ab
   00FF 85 F0 82            633 	mov	dpl,b
   0102 22                  634 	ret
   0103                     635 00105$:
                    007E    636 	C$main.c$101$1$1 ==.
                            637 ;	main.c:101: return (unsigned char)(value / 100);
   0103 75 21 64            638 	mov	__divuint_PARM_2,#0x64
   0106 E4                  639 	clr	a
   0107 F5 22               640 	mov	(__divuint_PARM_2 + 1),a
   0109 8A 82               641 	mov	dpl,r2
   010B 8B 83               642 	mov	dph,r3
                    0088    643 	C$main.c$102$1$1 ==.
                    0088    644 	XG$get_digit$0$0 ==.
   010D 02 01 AF            645 	ljmp	__divuint
                            646 ;------------------------------------------------------------
                            647 ;Allocation info for local variables in function 'display'
                            648 ;------------------------------------------------------------
                            649 ;value                     Allocated to registers r2 r3 
                            650 ;i                         Allocated to registers r4 
                            651 ;------------------------------------------------------------
                    008B    652 	G$display$0$0 ==.
                    008B    653 	C$main.c$109$1$1 ==.
                            654 ;	main.c:109: void display(unsigned int value) {
                            655 ;	-----------------------------------------
                            656 ;	 function display
                            657 ;	-----------------------------------------
   0110                     658 _display:
   0110 AA 82               659 	mov	r2,dpl
   0112 AB 83               660 	mov	r3,dph
                    008F    661 	C$main.c$114$1$1 ==.
                            662 ;	main.c:114: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   0114 7C 00               663 	mov	r4,#0x00
   0116                     664 00101$:
   0116 C3                  665 	clr	c
   0117 EC                  666 	mov	a,r4
   0118 95 08               667 	subb	a,_NUMBER_OF_DIGITS
   011A 50 24               668 	jnc	00105$
                    0097    669 	C$main.c$115$2$2 ==.
                            670 ;	main.c:115: write_segment(i, get_digit(value, i));
   011C 8C 20               671 	mov	_get_digit_PARM_2,r4
   011E 8A 82               672 	mov	dpl,r2
   0120 8B 83               673 	mov	dph,r3
   0122 C0 02               674 	push	ar2
   0124 C0 03               675 	push	ar3
   0126 C0 04               676 	push	ar4
   0128 12 00 D3            677 	lcall	_get_digit
   012B 85 82 1F            678 	mov	_write_segment_PARM_2,dpl
   012E D0 04               679 	pop	ar4
   0130 8C 82               680 	mov	dpl,r4
   0132 C0 04               681 	push	ar4
   0134 12 00 A0            682 	lcall	_write_segment
   0137 D0 04               683 	pop	ar4
   0139 D0 03               684 	pop	ar3
   013B D0 02               685 	pop	ar2
                    00B8    686 	C$main.c$114$1$1 ==.
                            687 ;	main.c:114: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   013D 0C                  688 	inc	r4
   013E 80 D6               689 	sjmp	00101$
   0140                     690 00105$:
                    00BB    691 	C$main.c$117$1$1 ==.
                    00BB    692 	XG$display$0$0 ==.
   0140 22                  693 	ret
                            694 ;------------------------------------------------------------
                            695 ;Allocation info for local variables in function 'check_outgoing'
                            696 ;------------------------------------------------------------
                            697 ;------------------------------------------------------------
                    00BC    698 	G$check_outgoing$0$0 ==.
                    00BC    699 	C$main.c$123$1$1 ==.
                            700 ;	main.c:123: void check_outgoing(){
                            701 ;	-----------------------------------------
                            702 ;	 function check_outgoing
                            703 ;	-----------------------------------------
   0141                     704 _check_outgoing:
                    00BC    705 	C$main.c$125$1$1 ==.
                            706 ;	main.c:125: if (BUTTON_EXIT == 1) {
   0141 30 91 13            707 	jnb	_P1_1,00105$
                    00BF    708 	C$main.c$128$2$2 ==.
                            709 ;	main.c:128: if (free_slots <= MAX_SLOTS) {
   0144 C3                  710 	clr	c
   0145 E5 0B               711 	mov	a,_MAX_SLOTS
   0147 95 09               712 	subb	a,_free_slots
   0149 E5 0C               713 	mov	a,(_MAX_SLOTS + 1)
   014B 95 0A               714 	subb	a,(_free_slots + 1)
   014D 40 08               715 	jc	00105$
                    00CA    716 	C$main.c$129$3$3 ==.
                            717 ;	main.c:129: free_slots++;
   014F 05 09               718 	inc	_free_slots
   0151 E4                  719 	clr	a
   0152 B5 09 02            720 	cjne	a,_free_slots,00111$
   0155 05 0A               721 	inc	(_free_slots + 1)
   0157                     722 00111$:
   0157                     723 00105$:
                    00D2    724 	C$main.c$132$1$1 ==.
                    00D2    725 	XG$check_outgoing$0$0 ==.
   0157 22                  726 	ret
                            727 ;------------------------------------------------------------
                            728 ;Allocation info for local variables in function 'check_incoming'
                            729 ;------------------------------------------------------------
                            730 ;------------------------------------------------------------
                    00D3    731 	G$check_incoming$0$0 ==.
                    00D3    732 	C$main.c$137$1$1 ==.
                            733 ;	main.c:137: void check_incoming() {
                            734 ;	-----------------------------------------
                            735 ;	 function check_incoming
                            736 ;	-----------------------------------------
   0158                     737 _check_incoming:
                    00D3    738 	C$main.c$138$1$1 ==.
                            739 ;	main.c:138: if (BUTTON_ENTER == 1) {
   0158 30 90 0F            740 	jnb	_P1_0,00105$
                    00D6    741 	C$main.c$140$2$2 ==.
                            742 ;	main.c:140: if (free_slots > 0) {    
   015B E5 09               743 	mov	a,_free_slots
   015D 45 0A               744 	orl	a,(_free_slots + 1)
   015F 60 09               745 	jz	00105$
                    00DC    746 	C$main.c$141$3$3 ==.
                            747 ;	main.c:141: free_slots--;
   0161 15 09               748 	dec	_free_slots
   0163 74 FF               749 	mov	a,#0xff
   0165 B5 09 02            750 	cjne	a,_free_slots,00111$
   0168 15 0A               751 	dec	(_free_slots + 1)
   016A                     752 00111$:
   016A                     753 00105$:
                    00E5    754 	C$main.c$144$1$1 ==.
                    00E5    755 	XG$check_incoming$0$0 ==.
   016A 22                  756 	ret
                            757 ;------------------------------------------------------------
                            758 ;Allocation info for local variables in function 'main'
                            759 ;------------------------------------------------------------
                            760 ;------------------------------------------------------------
                    00E6    761 	G$main$0$0 ==.
                    00E6    762 	C$main.c$147$1$1 ==.
                            763 ;	main.c:147: void main (void) {
                            764 ;	-----------------------------------------
                            765 ;	 function main
                            766 ;	-----------------------------------------
   016B                     767 _main:
                    00E6    768 	C$main.c$148$1$1 ==.
                            769 ;	main.c:148: init(); // Initialize
   016B 12 00 85            770 	lcall	_init
                    00E9    771 	C$main.c$150$1$1 ==.
                            772 ;	main.c:150: while (1) {
   016E                     773 00102$:
                    00E9    774 	C$main.c$152$2$2 ==.
                            775 ;	main.c:152: check_incoming(); // Car enters
   016E 12 01 58            776 	lcall	_check_incoming
                    00EC    777 	C$main.c$154$2$2 ==.
                            778 ;	main.c:154: check_outgoing(); // Car leaves
   0171 12 01 41            779 	lcall	_check_outgoing
                    00EF    780 	C$main.c$161$2$2 ==.
                            781 ;	main.c:161: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   0174 E4                  782 	clr	a
   0175 F5 17               783 	mov	_cycle_delay,a
   0177 F5 18               784 	mov	(_cycle_delay + 1),a
   0179 F5 19               785 	mov	(_cycle_delay + 2),a
   017B F5 1A               786 	mov	(_cycle_delay + 3),a
   017D                     787 00104$:
   017D C3                  788 	clr	c
   017E E5 17               789 	mov	a,_cycle_delay
   0180 95 1B               790 	subb	a,_cycle_duration
   0182 E5 18               791 	mov	a,(_cycle_delay + 1)
   0184 95 1C               792 	subb	a,(_cycle_duration + 1)
   0186 E5 19               793 	mov	a,(_cycle_delay + 2)
   0188 95 1D               794 	subb	a,(_cycle_duration + 2)
   018A E5 1A               795 	mov	a,(_cycle_delay + 3)
   018C 95 1E               796 	subb	a,(_cycle_duration + 3)
   018E 50 14               797 	jnc	00107$
   0190 05 17               798 	inc	_cycle_delay
   0192 E4                  799 	clr	a
   0193 B5 17 E7            800 	cjne	a,_cycle_delay,00104$
   0196 05 18               801 	inc	(_cycle_delay + 1)
   0198 B5 18 E2            802 	cjne	a,(_cycle_delay + 1),00104$
   019B 05 19               803 	inc	(_cycle_delay + 2)
   019D B5 19 DD            804 	cjne	a,(_cycle_delay + 2),00104$
   01A0 05 1A               805 	inc	(_cycle_delay + 3)
   01A2 80 D9               806 	sjmp	00104$
   01A4                     807 00107$:
                    011F    808 	C$main.c$163$2$2 ==.
                            809 ;	main.c:163: display(free_slots); // Output the number of free slots
   01A4 85 09 82            810 	mov	dpl,_free_slots
   01A7 85 0A 83            811 	mov	dph,(_free_slots + 1)
   01AA 12 01 10            812 	lcall	_display
                    0128    813 	C$main.c$165$1$1 ==.
                    0128    814 	XG$main$0$0 ==.
   01AD 80 BF               815 	sjmp	00102$
                            816 	.area CSEG    (CODE)
                            817 	.area CONST   (CODE)
                            818 	.area XINIT   (CODE)
                            819 	.area CABS    (ABS,CODE)
