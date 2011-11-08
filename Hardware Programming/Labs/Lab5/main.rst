                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Nov 07 20:05:32 2011
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
                             15 	.globl _bounce_delay
                             16 	.globl _display
                             17 	.globl _get_digit
                             18 	.globl _write_segment
                             19 	.globl _init
                             20 	.globl _CY
                             21 	.globl _AC
                             22 	.globl _F0
                             23 	.globl _RS1
                             24 	.globl _RS0
                             25 	.globl _OV
                             26 	.globl _F1
                             27 	.globl _P
                             28 	.globl _PS
                             29 	.globl _PT1
                             30 	.globl _PX1
                             31 	.globl _PT0
                             32 	.globl _PX0
                             33 	.globl _RD
                             34 	.globl _WR
                             35 	.globl _T1
                             36 	.globl _T0
                             37 	.globl _INT1
                             38 	.globl _INT0
                             39 	.globl _TXD
                             40 	.globl _RXD
                             41 	.globl _P3_7
                             42 	.globl _P3_6
                             43 	.globl _P3_5
                             44 	.globl _P3_4
                             45 	.globl _P3_3
                             46 	.globl _P3_2
                             47 	.globl _P3_1
                             48 	.globl _P3_0
                             49 	.globl _EA
                             50 	.globl _ES
                             51 	.globl _ET1
                             52 	.globl _EX1
                             53 	.globl _ET0
                             54 	.globl _EX0
                             55 	.globl _P2_7
                             56 	.globl _P2_6
                             57 	.globl _P2_5
                             58 	.globl _P2_4
                             59 	.globl _P2_3
                             60 	.globl _P2_2
                             61 	.globl _P2_1
                             62 	.globl _P2_0
                             63 	.globl _SM0
                             64 	.globl _SM1
                             65 	.globl _SM2
                             66 	.globl _REN
                             67 	.globl _TB8
                             68 	.globl _RB8
                             69 	.globl _TI
                             70 	.globl _RI
                             71 	.globl _P1_7
                             72 	.globl _P1_6
                             73 	.globl _P1_5
                             74 	.globl _P1_4
                             75 	.globl _P1_3
                             76 	.globl _P1_2
                             77 	.globl _P1_1
                             78 	.globl _P1_0
                             79 	.globl _TF1
                             80 	.globl _TR1
                             81 	.globl _TF0
                             82 	.globl _TR0
                             83 	.globl _IE1
                             84 	.globl _IT1
                             85 	.globl _IE0
                             86 	.globl _IT0
                             87 	.globl _P0_7
                             88 	.globl _P0_6
                             89 	.globl _P0_5
                             90 	.globl _P0_4
                             91 	.globl _P0_3
                             92 	.globl _P0_2
                             93 	.globl _P0_1
                             94 	.globl _P0_0
                             95 	.globl _B
                             96 	.globl _ACC
                             97 	.globl _PSW
                             98 	.globl _IP
                             99 	.globl _P3
                            100 	.globl _IE
                            101 	.globl _P2
                            102 	.globl _SBUF
                            103 	.globl _SCON
                            104 	.globl _P1
                            105 	.globl _TH1
                            106 	.globl _TH0
                            107 	.globl _TL1
                            108 	.globl _TL0
                            109 	.globl _TMOD
                            110 	.globl _TCON
                            111 	.globl _PCON
                            112 	.globl _DPH
                            113 	.globl _DPL
                            114 	.globl _SP
                            115 	.globl _P0
                            116 	.globl _get_digit_PARM_2
                            117 	.globl _write_segment_PARM_2
                            118 	.globl _cycle_duration
                            119 	.globl _cycle_delay
                            120 	.globl _NUMBERS
                            121 	.globl _MAX_SLOTS
                            122 	.globl _free_slots
                            123 	.globl _NUMBER_OF_DIGITS
                            124 ;--------------------------------------------------------
                            125 ; special function registers
                            126 ;--------------------------------------------------------
                            127 	.area RSEG    (ABS,DATA)
   0000                     128 	.org 0x0000
                    0080    129 G$P0$0$0 == 0x0080
                    0080    130 _P0	=	0x0080
                    0081    131 G$SP$0$0 == 0x0081
                    0081    132 _SP	=	0x0081
                    0082    133 G$DPL$0$0 == 0x0082
                    0082    134 _DPL	=	0x0082
                    0083    135 G$DPH$0$0 == 0x0083
                    0083    136 _DPH	=	0x0083
                    0087    137 G$PCON$0$0 == 0x0087
                    0087    138 _PCON	=	0x0087
                    0088    139 G$TCON$0$0 == 0x0088
                    0088    140 _TCON	=	0x0088
                    0089    141 G$TMOD$0$0 == 0x0089
                    0089    142 _TMOD	=	0x0089
                    008A    143 G$TL0$0$0 == 0x008a
                    008A    144 _TL0	=	0x008a
                    008B    145 G$TL1$0$0 == 0x008b
                    008B    146 _TL1	=	0x008b
                    008C    147 G$TH0$0$0 == 0x008c
                    008C    148 _TH0	=	0x008c
                    008D    149 G$TH1$0$0 == 0x008d
                    008D    150 _TH1	=	0x008d
                    0090    151 G$P1$0$0 == 0x0090
                    0090    152 _P1	=	0x0090
                    0098    153 G$SCON$0$0 == 0x0098
                    0098    154 _SCON	=	0x0098
                    0099    155 G$SBUF$0$0 == 0x0099
                    0099    156 _SBUF	=	0x0099
                    00A0    157 G$P2$0$0 == 0x00a0
                    00A0    158 _P2	=	0x00a0
                    00A8    159 G$IE$0$0 == 0x00a8
                    00A8    160 _IE	=	0x00a8
                    00B0    161 G$P3$0$0 == 0x00b0
                    00B0    162 _P3	=	0x00b0
                    00B8    163 G$IP$0$0 == 0x00b8
                    00B8    164 _IP	=	0x00b8
                    00D0    165 G$PSW$0$0 == 0x00d0
                    00D0    166 _PSW	=	0x00d0
                    00E0    167 G$ACC$0$0 == 0x00e0
                    00E0    168 _ACC	=	0x00e0
                    00F0    169 G$B$0$0 == 0x00f0
                    00F0    170 _B	=	0x00f0
                            171 ;--------------------------------------------------------
                            172 ; special function bits
                            173 ;--------------------------------------------------------
                            174 	.area RSEG    (ABS,DATA)
   0000                     175 	.org 0x0000
                    0080    176 G$P0_0$0$0 == 0x0080
                    0080    177 _P0_0	=	0x0080
                    0081    178 G$P0_1$0$0 == 0x0081
                    0081    179 _P0_1	=	0x0081
                    0082    180 G$P0_2$0$0 == 0x0082
                    0082    181 _P0_2	=	0x0082
                    0083    182 G$P0_3$0$0 == 0x0083
                    0083    183 _P0_3	=	0x0083
                    0084    184 G$P0_4$0$0 == 0x0084
                    0084    185 _P0_4	=	0x0084
                    0085    186 G$P0_5$0$0 == 0x0085
                    0085    187 _P0_5	=	0x0085
                    0086    188 G$P0_6$0$0 == 0x0086
                    0086    189 _P0_6	=	0x0086
                    0087    190 G$P0_7$0$0 == 0x0087
                    0087    191 _P0_7	=	0x0087
                    0088    192 G$IT0$0$0 == 0x0088
                    0088    193 _IT0	=	0x0088
                    0089    194 G$IE0$0$0 == 0x0089
                    0089    195 _IE0	=	0x0089
                    008A    196 G$IT1$0$0 == 0x008a
                    008A    197 _IT1	=	0x008a
                    008B    198 G$IE1$0$0 == 0x008b
                    008B    199 _IE1	=	0x008b
                    008C    200 G$TR0$0$0 == 0x008c
                    008C    201 _TR0	=	0x008c
                    008D    202 G$TF0$0$0 == 0x008d
                    008D    203 _TF0	=	0x008d
                    008E    204 G$TR1$0$0 == 0x008e
                    008E    205 _TR1	=	0x008e
                    008F    206 G$TF1$0$0 == 0x008f
                    008F    207 _TF1	=	0x008f
                    0090    208 G$P1_0$0$0 == 0x0090
                    0090    209 _P1_0	=	0x0090
                    0091    210 G$P1_1$0$0 == 0x0091
                    0091    211 _P1_1	=	0x0091
                    0092    212 G$P1_2$0$0 == 0x0092
                    0092    213 _P1_2	=	0x0092
                    0093    214 G$P1_3$0$0 == 0x0093
                    0093    215 _P1_3	=	0x0093
                    0094    216 G$P1_4$0$0 == 0x0094
                    0094    217 _P1_4	=	0x0094
                    0095    218 G$P1_5$0$0 == 0x0095
                    0095    219 _P1_5	=	0x0095
                    0096    220 G$P1_6$0$0 == 0x0096
                    0096    221 _P1_6	=	0x0096
                    0097    222 G$P1_7$0$0 == 0x0097
                    0097    223 _P1_7	=	0x0097
                    0098    224 G$RI$0$0 == 0x0098
                    0098    225 _RI	=	0x0098
                    0099    226 G$TI$0$0 == 0x0099
                    0099    227 _TI	=	0x0099
                    009A    228 G$RB8$0$0 == 0x009a
                    009A    229 _RB8	=	0x009a
                    009B    230 G$TB8$0$0 == 0x009b
                    009B    231 _TB8	=	0x009b
                    009C    232 G$REN$0$0 == 0x009c
                    009C    233 _REN	=	0x009c
                    009D    234 G$SM2$0$0 == 0x009d
                    009D    235 _SM2	=	0x009d
                    009E    236 G$SM1$0$0 == 0x009e
                    009E    237 _SM1	=	0x009e
                    009F    238 G$SM0$0$0 == 0x009f
                    009F    239 _SM0	=	0x009f
                    00A0    240 G$P2_0$0$0 == 0x00a0
                    00A0    241 _P2_0	=	0x00a0
                    00A1    242 G$P2_1$0$0 == 0x00a1
                    00A1    243 _P2_1	=	0x00a1
                    00A2    244 G$P2_2$0$0 == 0x00a2
                    00A2    245 _P2_2	=	0x00a2
                    00A3    246 G$P2_3$0$0 == 0x00a3
                    00A3    247 _P2_3	=	0x00a3
                    00A4    248 G$P2_4$0$0 == 0x00a4
                    00A4    249 _P2_4	=	0x00a4
                    00A5    250 G$P2_5$0$0 == 0x00a5
                    00A5    251 _P2_5	=	0x00a5
                    00A6    252 G$P2_6$0$0 == 0x00a6
                    00A6    253 _P2_6	=	0x00a6
                    00A7    254 G$P2_7$0$0 == 0x00a7
                    00A7    255 _P2_7	=	0x00a7
                    00A8    256 G$EX0$0$0 == 0x00a8
                    00A8    257 _EX0	=	0x00a8
                    00A9    258 G$ET0$0$0 == 0x00a9
                    00A9    259 _ET0	=	0x00a9
                    00AA    260 G$EX1$0$0 == 0x00aa
                    00AA    261 _EX1	=	0x00aa
                    00AB    262 G$ET1$0$0 == 0x00ab
                    00AB    263 _ET1	=	0x00ab
                    00AC    264 G$ES$0$0 == 0x00ac
                    00AC    265 _ES	=	0x00ac
                    00AF    266 G$EA$0$0 == 0x00af
                    00AF    267 _EA	=	0x00af
                    00B0    268 G$P3_0$0$0 == 0x00b0
                    00B0    269 _P3_0	=	0x00b0
                    00B1    270 G$P3_1$0$0 == 0x00b1
                    00B1    271 _P3_1	=	0x00b1
                    00B2    272 G$P3_2$0$0 == 0x00b2
                    00B2    273 _P3_2	=	0x00b2
                    00B3    274 G$P3_3$0$0 == 0x00b3
                    00B3    275 _P3_3	=	0x00b3
                    00B4    276 G$P3_4$0$0 == 0x00b4
                    00B4    277 _P3_4	=	0x00b4
                    00B5    278 G$P3_5$0$0 == 0x00b5
                    00B5    279 _P3_5	=	0x00b5
                    00B6    280 G$P3_6$0$0 == 0x00b6
                    00B6    281 _P3_6	=	0x00b6
                    00B7    282 G$P3_7$0$0 == 0x00b7
                    00B7    283 _P3_7	=	0x00b7
                    00B0    284 G$RXD$0$0 == 0x00b0
                    00B0    285 _RXD	=	0x00b0
                    00B1    286 G$TXD$0$0 == 0x00b1
                    00B1    287 _TXD	=	0x00b1
                    00B2    288 G$INT0$0$0 == 0x00b2
                    00B2    289 _INT0	=	0x00b2
                    00B3    290 G$INT1$0$0 == 0x00b3
                    00B3    291 _INT1	=	0x00b3
                    00B4    292 G$T0$0$0 == 0x00b4
                    00B4    293 _T0	=	0x00b4
                    00B5    294 G$T1$0$0 == 0x00b5
                    00B5    295 _T1	=	0x00b5
                    00B6    296 G$WR$0$0 == 0x00b6
                    00B6    297 _WR	=	0x00b6
                    00B7    298 G$RD$0$0 == 0x00b7
                    00B7    299 _RD	=	0x00b7
                    00B8    300 G$PX0$0$0 == 0x00b8
                    00B8    301 _PX0	=	0x00b8
                    00B9    302 G$PT0$0$0 == 0x00b9
                    00B9    303 _PT0	=	0x00b9
                    00BA    304 G$PX1$0$0 == 0x00ba
                    00BA    305 _PX1	=	0x00ba
                    00BB    306 G$PT1$0$0 == 0x00bb
                    00BB    307 _PT1	=	0x00bb
                    00BC    308 G$PS$0$0 == 0x00bc
                    00BC    309 _PS	=	0x00bc
                    00D0    310 G$P$0$0 == 0x00d0
                    00D0    311 _P	=	0x00d0
                    00D1    312 G$F1$0$0 == 0x00d1
                    00D1    313 _F1	=	0x00d1
                    00D2    314 G$OV$0$0 == 0x00d2
                    00D2    315 _OV	=	0x00d2
                    00D3    316 G$RS0$0$0 == 0x00d3
                    00D3    317 _RS0	=	0x00d3
                    00D4    318 G$RS1$0$0 == 0x00d4
                    00D4    319 _RS1	=	0x00d4
                    00D5    320 G$F0$0$0 == 0x00d5
                    00D5    321 _F0	=	0x00d5
                    00D6    322 G$AC$0$0 == 0x00d6
                    00D6    323 _AC	=	0x00d6
                    00D7    324 G$CY$0$0 == 0x00d7
                    00D7    325 _CY	=	0x00d7
                            326 ;--------------------------------------------------------
                            327 ; overlayable register banks
                            328 ;--------------------------------------------------------
                            329 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     330 	.ds 8
                            331 ;--------------------------------------------------------
                            332 ; internal ram data
                            333 ;--------------------------------------------------------
                            334 	.area DSEG    (DATA)
                    0000    335 G$NUMBER_OF_DIGITS$0$0==.
   0008                     336 _NUMBER_OF_DIGITS::
   0008                     337 	.ds 1
                    0001    338 G$free_slots$0$0==.
   0009                     339 _free_slots::
   0009                     340 	.ds 2
                    0003    341 G$MAX_SLOTS$0$0==.
   000B                     342 _MAX_SLOTS::
   000B                     343 	.ds 2
                    0005    344 G$NUMBERS$0$0==.
   000D                     345 _NUMBERS::
   000D                     346 	.ds 10
                    000F    347 G$cycle_delay$0$0==.
   0017                     348 _cycle_delay::
   0017                     349 	.ds 4
                    0013    350 G$cycle_duration$0$0==.
   001B                     351 _cycle_duration::
   001B                     352 	.ds 4
                    0017    353 Lwrite_segment$value$1$1==.
   001F                     354 _write_segment_PARM_2:
   001F                     355 	.ds 1
                    0018    356 Lget_digit$place$1$1==.
   0020                     357 _get_digit_PARM_2:
   0020                     358 	.ds 1
                            359 ;--------------------------------------------------------
                            360 ; overlayable items in internal ram 
                            361 ;--------------------------------------------------------
                            362 	.area OSEG    (OVR,DATA)
                            363 ;--------------------------------------------------------
                            364 ; Stack segment in internal ram 
                            365 ;--------------------------------------------------------
                            366 	.area	SSEG	(DATA)
   0023                     367 __start__stack:
   0023                     368 	.ds	1
                            369 
                            370 ;--------------------------------------------------------
                            371 ; indirectly addressable internal ram data
                            372 ;--------------------------------------------------------
                            373 	.area ISEG    (DATA)
                            374 ;--------------------------------------------------------
                            375 ; absolute internal ram data
                            376 ;--------------------------------------------------------
                            377 	.area IABS    (ABS,DATA)
                            378 	.area IABS    (ABS,DATA)
                            379 ;--------------------------------------------------------
                            380 ; bit data
                            381 ;--------------------------------------------------------
                            382 	.area BSEG    (BIT)
                            383 ;--------------------------------------------------------
                            384 ; paged external ram data
                            385 ;--------------------------------------------------------
                            386 	.area PSEG    (PAG,XDATA)
                            387 ;--------------------------------------------------------
                            388 ; external ram data
                            389 ;--------------------------------------------------------
                            390 	.area XSEG    (XDATA)
                            391 ;--------------------------------------------------------
                            392 ; absolute external ram data
                            393 ;--------------------------------------------------------
                            394 	.area XABS    (ABS,XDATA)
                            395 ;--------------------------------------------------------
                            396 ; external initialized ram data
                            397 ;--------------------------------------------------------
                            398 	.area XISEG   (XDATA)
                            399 	.area HOME    (CODE)
                            400 	.area GSINIT0 (CODE)
                            401 	.area GSINIT1 (CODE)
                            402 	.area GSINIT2 (CODE)
                            403 	.area GSINIT3 (CODE)
                            404 	.area GSINIT4 (CODE)
                            405 	.area GSINIT5 (CODE)
                            406 	.area GSINIT  (CODE)
                            407 	.area GSFINAL (CODE)
                            408 	.area CSEG    (CODE)
                            409 ;--------------------------------------------------------
                            410 ; interrupt vector 
                            411 ;--------------------------------------------------------
                            412 	.area HOME    (CODE)
   0000                     413 __interrupt_vect:
   0000 02 00 08            414 	ljmp	__sdcc_gsinit_startup
                            415 ;--------------------------------------------------------
                            416 ; global & static initialisations
                            417 ;--------------------------------------------------------
                            418 	.area HOME    (CODE)
                            419 	.area GSINIT  (CODE)
                            420 	.area GSFINAL (CODE)
                            421 	.area GSINIT  (CODE)
                            422 	.globl __sdcc_gsinit_startup
                            423 	.globl __sdcc_program_startup
                            424 	.globl __start__stack
                            425 	.globl __mcs51_genXINIT
                            426 	.globl __mcs51_genXRAMCLEAR
                            427 	.globl __mcs51_genRAMCLEAR
                    0000    428 	G$main$0$0 ==.
                    0000    429 	C$main.c$21$1$1 ==.
                            430 ;	main.c:21: unsigned char NUMBER_OF_DIGITS = 3;
   0061 75 08 03            431 	mov	_NUMBER_OF_DIGITS,#0x03
                    0003    432 	G$main$0$0 ==.
                    0003    433 	C$main.c$29$1$1 ==.
                            434 ;	main.c:29: unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0064 75 0D C0            435 	mov	_NUMBERS,#0xC0
   0067 75 0E F9            436 	mov	(_NUMBERS + 0x0001),#0xF9
   006A 75 0F A4            437 	mov	(_NUMBERS + 0x0002),#0xA4
   006D 75 10 B0            438 	mov	(_NUMBERS + 0x0003),#0xB0
   0070 75 11 99            439 	mov	(_NUMBERS + 0x0004),#0x99
   0073 75 12 92            440 	mov	(_NUMBERS + 0x0005),#0x92
   0076 75 13 82            441 	mov	(_NUMBERS + 0x0006),#0x82
   0079 75 14 F0            442 	mov	(_NUMBERS + 0x0007),#0xF0
   007C 75 15 80            443 	mov	(_NUMBERS + 0x0008),#0x80
   007F 75 16 90            444 	mov	(_NUMBERS + 0x0009),#0x90
                            445 	.area GSFINAL (CODE)
   0082 02 00 03            446 	ljmp	__sdcc_program_startup
                            447 ;--------------------------------------------------------
                            448 ; Home
                            449 ;--------------------------------------------------------
                            450 	.area HOME    (CODE)
                            451 	.area HOME    (CODE)
   0003                     452 __sdcc_program_startup:
   0003 12 01 A9            453 	lcall	_main
                            454 ;	return from main will lock up
   0006 80 FE               455 	sjmp .
                            456 ;--------------------------------------------------------
                            457 ; code
                            458 ;--------------------------------------------------------
                            459 	.area CSEG    (CODE)
                            460 ;------------------------------------------------------------
                            461 ;Allocation info for local variables in function 'init'
                            462 ;------------------------------------------------------------
                            463 ;------------------------------------------------------------
                    0000    464 	G$init$0$0 ==.
                    0000    465 	C$main.c$37$0$0 ==.
                            466 ;	main.c:37: void init(void) {
                            467 ;	-----------------------------------------
                            468 ;	 function init
                            469 ;	-----------------------------------------
   0085                     470 _init:
                    0002    471 	ar2 = 0x02
                    0003    472 	ar3 = 0x03
                    0004    473 	ar4 = 0x04
                    0005    474 	ar5 = 0x05
                    0006    475 	ar6 = 0x06
                    0007    476 	ar7 = 0x07
                    0000    477 	ar0 = 0x00
                    0001    478 	ar1 = 0x01
                    0000    479 	C$main.c$38$1$1 ==.
                            480 ;	main.c:38: MAX_SLOTS = 200; // We have this many free slots, max
   0085 75 0B C8            481 	mov	_MAX_SLOTS,#0xC8
   0088 75 0C 00            482 	mov	(_MAX_SLOTS + 1),#0x00
                    0006    483 	C$main.c$40$1$1 ==.
                            484 ;	main.c:40: free_slots = MAX_SLOTS; // All slots are empty in the beginning
   008B 75 09 C8            485 	mov	_free_slots,#0xC8
   008E 75 0A 00            486 	mov	(_free_slots + 1),#0x00
                    000C    487 	C$main.c$42$1$1 ==.
                            488 ;	main.c:42: BUTTON_ENTER = 1; // Define as input
   0091 D2 90               489 	setb	_P1_0
                    000E    490 	C$main.c$43$1$1 ==.
                            491 ;	main.c:43: BUTTON_EXIT = 1; // Define as input
   0093 D2 91               492 	setb	_P1_1
                    0010    493 	C$main.c$45$1$1 ==.
                            494 ;	main.c:45: cycle_duration = 1; // The artificial time delay is X cycles long
   0095 75 1B 01            495 	mov	_cycle_duration,#0x01
   0098 E4                  496 	clr	a
   0099 F5 1C               497 	mov	(_cycle_duration + 1),a
   009B F5 1D               498 	mov	(_cycle_duration + 2),a
   009D F5 1E               499 	mov	(_cycle_duration + 3),a
                    001A    500 	C$main.c$46$1$1 ==.
                    001A    501 	XG$init$0$0 ==.
   009F 22                  502 	ret
                            503 ;------------------------------------------------------------
                            504 ;Allocation info for local variables in function 'write_segment'
                            505 ;------------------------------------------------------------
                            506 ;value                     Allocated with name '_write_segment_PARM_2'
                            507 ;segment_number            Allocated to registers r2 
                            508 ;------------------------------------------------------------
                    001B    509 	G$write_segment$0$0 ==.
                    001B    510 	C$main.c$54$1$1 ==.
                            511 ;	main.c:54: void write_segment(unsigned char segment_number, unsigned char value) {
                            512 ;	-----------------------------------------
                            513 ;	 function write_segment
                            514 ;	-----------------------------------------
   00A0                     515 _write_segment:
   00A0 AA 82               516 	mov	r2,dpl
                    001D    517 	C$main.c$56$1$1 ==.
                            518 ;	main.c:56: P3_0 = 1; // Reset P3 to avoid flickers
   00A2 D2 B0               519 	setb	_P3_0
                    001F    520 	C$main.c$57$1$1 ==.
                            521 ;	main.c:57: P3_1 = 1;
   00A4 D2 B1               522 	setb	_P3_1
                    0021    523 	C$main.c$58$1$1 ==.
                            524 ;	main.c:58: P3_2 = 1;
   00A6 D2 B2               525 	setb	_P3_2
                    0023    526 	C$main.c$61$1$1 ==.
                            527 ;	main.c:61: P2 = NUMBERS[value];
   00A8 E5 1F               528 	mov	a,_write_segment_PARM_2
   00AA 24 0D               529 	add	a,#_NUMBERS
   00AC F8                  530 	mov	r0,a
   00AD 86 A0               531 	mov	_P2,@r0
                    002A    532 	C$main.c$64$1$1 ==.
                            533 ;	main.c:64: switch (segment_number) {
   00AF BA 00 02            534 	cjne	r2,#0x00,00110$
   00B2 80 0A               535 	sjmp	00101$
   00B4                     536 00110$:
   00B4 BA 01 02            537 	cjne	r2,#0x01,00111$
   00B7 80 0C               538 	sjmp	00102$
   00B9                     539 00111$:
                    0034    540 	C$main.c$65$2$2 ==.
                            541 ;	main.c:65: case 0:
   00B9 BA 02 16            542 	cjne	r2,#0x02,00105$
   00BC 80 0E               543 	sjmp	00103$
   00BE                     544 00101$:
                    0039    545 	C$main.c$66$2$2 ==.
                            546 ;	main.c:66: P3_1 = 1;
   00BE D2 B1               547 	setb	_P3_1
                    003B    548 	C$main.c$67$2$2 ==.
                            549 ;	main.c:67: P3_2 = 1;
   00C0 D2 B2               550 	setb	_P3_2
                    003D    551 	C$main.c$68$2$2 ==.
                            552 ;	main.c:68: P3_0 = 0;
   00C2 C2 B0               553 	clr	_P3_0
                    003F    554 	C$main.c$69$2$2 ==.
                            555 ;	main.c:69: break;
                    003F    556 	C$main.c$70$2$2 ==.
                            557 ;	main.c:70: case 1:
   00C4 22                  558 	ret
   00C5                     559 00102$:
                    0040    560 	C$main.c$71$2$2 ==.
                            561 ;	main.c:71: P3_0 = 1;
   00C5 D2 B0               562 	setb	_P3_0
                    0042    563 	C$main.c$72$2$2 ==.
                            564 ;	main.c:72: P3_2 = 1;
   00C7 D2 B2               565 	setb	_P3_2
                    0044    566 	C$main.c$73$2$2 ==.
                            567 ;	main.c:73: P3_1 = 0;
   00C9 C2 B1               568 	clr	_P3_1
                    0046    569 	C$main.c$74$2$2 ==.
                            570 ;	main.c:74: break;
                    0046    571 	C$main.c$75$2$2 ==.
                            572 ;	main.c:75: case 2:
   00CB 22                  573 	ret
   00CC                     574 00103$:
                    0047    575 	C$main.c$76$2$2 ==.
                            576 ;	main.c:76: P3_3 = 1;
   00CC D2 B3               577 	setb	_P3_3
                    0049    578 	C$main.c$77$2$2 ==.
                            579 ;	main.c:77: P3_1 = 1;
   00CE D2 B1               580 	setb	_P3_1
                    004B    581 	C$main.c$78$2$2 ==.
                            582 ;	main.c:78: P3_2 = 0;
   00D0 C2 B2               583 	clr	_P3_2
                    004D    584 	C$main.c$80$1$1 ==.
                            585 ;	main.c:80: }
   00D2                     586 00105$:
                    004D    587 	C$main.c$81$1$1 ==.
                    004D    588 	XG$write_segment$0$0 ==.
   00D2 22                  589 	ret
                            590 ;------------------------------------------------------------
                            591 ;Allocation info for local variables in function 'get_digit'
                            592 ;------------------------------------------------------------
                            593 ;place                     Allocated with name '_get_digit_PARM_2'
                            594 ;value                     Allocated to registers r2 r3 
                            595 ;------------------------------------------------------------
                    004E    596 	G$get_digit$0$0 ==.
                    004E    597 	C$main.c$87$1$1 ==.
                            598 ;	main.c:87: unsigned char get_digit(unsigned int value, unsigned char place) {
                            599 ;	-----------------------------------------
                            600 ;	 function get_digit
                            601 ;	-----------------------------------------
   00D3                     602 _get_digit:
   00D3 AA 82               603 	mov	r2,dpl
   00D5 AB 83               604 	mov	r3,dph
                    0052    605 	C$main.c$89$1$1 ==.
                            606 ;	main.c:89: if (place == 0) {
   00D7 E5 20               607 	mov	a,_get_digit_PARM_2
   00D9 70 0B               608 	jnz	00104$
                    0056    609 	C$main.c$90$2$2 ==.
                            610 ;	main.c:90: return (unsigned char)value % 10;
   00DB 8A 04               611 	mov	ar4,r2
   00DD 75 F0 0A            612 	mov	b,#0x0A
   00E0 EC                  613 	mov	a,r4
   00E1 84                  614 	div	ab
   00E2 85 F0 82            615 	mov	dpl,b
   00E5 22                  616 	ret
   00E6                     617 00104$:
                    0061    618 	C$main.c$91$1$1 ==.
                            619 ;	main.c:91: } else if (place == 1) {
   00E6 74 01               620 	mov	a,#0x01
   00E8 B5 20 18            621 	cjne	a,_get_digit_PARM_2,00105$
                    0066    622 	C$main.c$92$1$1 ==.
                            623 ;	main.c:92: return (unsigned char)(value / 10) % 10;
   00EB 75 21 0A            624 	mov	__divuint_PARM_2,#0x0A
   00EE 75 22 00            625 	mov	(__divuint_PARM_2 + 1),#0x00
   00F1 8A 82               626 	mov	dpl,r2
   00F3 8B 83               627 	mov	dph,r3
   00F5 12 01 ED            628 	lcall	__divuint
   00F8 AC 82               629 	mov	r4,dpl
   00FA 75 F0 0A            630 	mov	b,#0x0A
   00FD EC                  631 	mov	a,r4
   00FE 84                  632 	div	ab
   00FF 85 F0 82            633 	mov	dpl,b
   0102 22                  634 	ret
   0103                     635 00105$:
                    007E    636 	C$main.c$94$1$1 ==.
                            637 ;	main.c:94: return (unsigned char)(value / 100);
   0103 75 21 64            638 	mov	__divuint_PARM_2,#0x64
   0106 75 22 00            639 	mov	(__divuint_PARM_2 + 1),#0x00
   0109 8A 82               640 	mov	dpl,r2
   010B 8B 83               641 	mov	dph,r3
                    0088    642 	C$main.c$95$1$1 ==.
                    0088    643 	XG$get_digit$0$0 ==.
   010D 02 01 ED            644 	ljmp	__divuint
                            645 ;------------------------------------------------------------
                            646 ;Allocation info for local variables in function 'display'
                            647 ;------------------------------------------------------------
                            648 ;value                     Allocated to registers r2 r3 
                            649 ;i                         Allocated to registers r4 
                            650 ;------------------------------------------------------------
                    008B    651 	G$display$0$0 ==.
                    008B    652 	C$main.c$102$1$1 ==.
                            653 ;	main.c:102: void display(unsigned int value) {
                            654 ;	-----------------------------------------
                            655 ;	 function display
                            656 ;	-----------------------------------------
   0110                     657 _display:
   0110 AA 82               658 	mov	r2,dpl
   0112 AB 83               659 	mov	r3,dph
                    008F    660 	C$main.c$107$1$1 ==.
                            661 ;	main.c:107: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   0114 7C 00               662 	mov	r4,#0x00
   0116                     663 00101$:
   0116 EC                  664 	mov	a,r4
   0117 B5 08 00            665 	cjne	a,_NUMBER_OF_DIGITS,00109$
   011A                     666 00109$:
   011A 50 24               667 	jnc	00105$
                    0097    668 	C$main.c$108$2$2 ==.
                            669 ;	main.c:108: write_segment(i, get_digit(value, i));
   011C 8C 20               670 	mov	_get_digit_PARM_2,r4
   011E 8A 82               671 	mov	dpl,r2
   0120 8B 83               672 	mov	dph,r3
   0122 C0 02               673 	push	ar2
   0124 C0 03               674 	push	ar3
   0126 C0 04               675 	push	ar4
   0128 12 00 D3            676 	lcall	_get_digit
   012B 85 82 1F            677 	mov	_write_segment_PARM_2,dpl
   012E D0 04               678 	pop	ar4
   0130 8C 82               679 	mov	dpl,r4
   0132 C0 04               680 	push	ar4
   0134 12 00 A0            681 	lcall	_write_segment
   0137 D0 04               682 	pop	ar4
   0139 D0 03               683 	pop	ar3
   013B D0 02               684 	pop	ar2
                    00B8    685 	C$main.c$107$1$1 ==.
                            686 ;	main.c:107: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   013D 0C                  687 	inc	r4
   013E 80 D6               688 	sjmp	00101$
   0140                     689 00105$:
                    00BB    690 	C$main.c$110$1$1 ==.
                    00BB    691 	XG$display$0$0 ==.
   0140 22                  692 	ret
                            693 ;------------------------------------------------------------
                            694 ;Allocation info for local variables in function 'bounce_delay'
                            695 ;------------------------------------------------------------
                            696 ;------------------------------------------------------------
                    00BC    697 	G$bounce_delay$0$0 ==.
                    00BC    698 	C$main.c$116$1$1 ==.
                            699 ;	main.c:116: void bounce_delay() {
                            700 ;	-----------------------------------------
                            701 ;	 function bounce_delay
                            702 ;	-----------------------------------------
   0141                     703 _bounce_delay:
                    00BC    704 	C$main.c$117$1$1 ==.
                            705 ;	main.c:117: for (cycle_delay = 0; cycle_delay < 10; cycle_delay++);
   0141 75 17 0A            706 	mov	_cycle_delay,#0x0A
   0144 E4                  707 	clr	a
   0145 F5 18               708 	mov	(_cycle_delay + 1),a
   0147 F5 19               709 	mov	(_cycle_delay + 2),a
   0149 F5 1A               710 	mov	(_cycle_delay + 3),a
   014B                     711 00103$:
   014B 15 17               712 	dec	_cycle_delay
   014D 74 FF               713 	mov	a,#0xff
   014F B5 17 0C            714 	cjne	a,_cycle_delay,00108$
   0152 15 18               715 	dec	(_cycle_delay + 1)
   0154 B5 18 07            716 	cjne	a,(_cycle_delay + 1),00108$
   0157 15 19               717 	dec	(_cycle_delay + 2)
   0159 B5 19 02            718 	cjne	a,(_cycle_delay + 2),00108$
   015C 15 1A               719 	dec	(_cycle_delay + 3)
   015E                     720 00108$:
   015E E5 17               721 	mov	a,_cycle_delay
   0160 45 18               722 	orl	a,(_cycle_delay + 1)
   0162 45 19               723 	orl	a,(_cycle_delay + 2)
   0164 45 1A               724 	orl	a,(_cycle_delay + 3)
   0166 70 E3               725 	jnz	00103$
   0168 75 17 0A            726 	mov	_cycle_delay,#0x0A
   016B E4                  727 	clr	a
   016C F5 18               728 	mov	(_cycle_delay + 1),a
   016E F5 19               729 	mov	(_cycle_delay + 2),a
   0170 F5 1A               730 	mov	(_cycle_delay + 3),a
                    00ED    731 	C$main.c$118$1$1 ==.
                    00ED    732 	XG$bounce_delay$0$0 ==.
   0172 22                  733 	ret
                            734 ;------------------------------------------------------------
                            735 ;Allocation info for local variables in function 'check_outgoing'
                            736 ;------------------------------------------------------------
                            737 ;------------------------------------------------------------
                    00EE    738 	G$check_outgoing$0$0 ==.
                    00EE    739 	C$main.c$124$1$1 ==.
                            740 ;	main.c:124: void check_outgoing(){
                            741 ;	-----------------------------------------
                            742 ;	 function check_outgoing
                            743 ;	-----------------------------------------
   0173                     744 _check_outgoing:
                    00EE    745 	C$main.c$126$1$1 ==.
                            746 ;	main.c:126: if (BUTTON_EXIT == 1) {
   0173 30 91 19            747 	jnb	_P1_1,00107$
                    00F1    748 	C$main.c$128$2$2 ==.
                            749 ;	main.c:128: bounce_delay();
   0176 12 01 41            750 	lcall	_bounce_delay
                    00F4    751 	C$main.c$129$1$2 ==.
                            752 ;	main.c:129: if (BUTTON_EXIT == 1) {
   0179 30 91 13            753 	jnb	_P1_1,00107$
                    00F7    754 	C$main.c$131$3$3 ==.
                            755 ;	main.c:131: if (free_slots < MAX_SLOTS) {
   017C C3                  756 	clr	c
   017D E5 09               757 	mov	a,_free_slots
   017F 95 0B               758 	subb	a,_MAX_SLOTS
   0181 E5 0A               759 	mov	a,(_free_slots + 1)
   0183 95 0C               760 	subb	a,(_MAX_SLOTS + 1)
   0185 50 08               761 	jnc	00107$
                    0102    762 	C$main.c$132$4$4 ==.
                            763 ;	main.c:132: free_slots++;
   0187 05 09               764 	inc	_free_slots
   0189 E4                  765 	clr	a
   018A B5 09 02            766 	cjne	a,_free_slots,00115$
   018D 05 0A               767 	inc	(_free_slots + 1)
   018F                     768 00115$:
   018F                     769 00107$:
                    010A    770 	C$main.c$136$1$1 ==.
                    010A    771 	XG$check_outgoing$0$0 ==.
   018F 22                  772 	ret
                            773 ;------------------------------------------------------------
                            774 ;Allocation info for local variables in function 'check_incoming'
                            775 ;------------------------------------------------------------
                            776 ;------------------------------------------------------------
                    010B    777 	G$check_incoming$0$0 ==.
                    010B    778 	C$main.c$142$1$1 ==.
                            779 ;	main.c:142: void check_incoming() {
                            780 ;	-----------------------------------------
                            781 ;	 function check_incoming
                            782 ;	-----------------------------------------
   0190                     783 _check_incoming:
                    010B    784 	C$main.c$143$1$1 ==.
                            785 ;	main.c:143: if (BUTTON_ENTER == 1) {
   0190 30 90 15            786 	jnb	_P1_0,00107$
                    010E    787 	C$main.c$144$2$2 ==.
                            788 ;	main.c:144: bounce_delay();
   0193 12 01 41            789 	lcall	_bounce_delay
                    0111    790 	C$main.c$146$1$2 ==.
                            791 ;	main.c:146: if (BUTTON_ENTER == 1) {
   0196 30 90 0F            792 	jnb	_P1_0,00107$
                    0114    793 	C$main.c$148$3$3 ==.
                            794 ;	main.c:148: if (free_slots > 0) {    
   0199 E5 09               795 	mov	a,_free_slots
   019B 45 0A               796 	orl	a,(_free_slots + 1)
   019D 60 09               797 	jz	00107$
                    011A    798 	C$main.c$149$4$4 ==.
                            799 ;	main.c:149: free_slots--;
   019F 15 09               800 	dec	_free_slots
   01A1 74 FF               801 	mov	a,#0xff
   01A3 B5 09 02            802 	cjne	a,_free_slots,00115$
   01A6 15 0A               803 	dec	(_free_slots + 1)
   01A8                     804 00115$:
   01A8                     805 00107$:
                    0123    806 	C$main.c$153$1$1 ==.
                    0123    807 	XG$check_incoming$0$0 ==.
   01A8 22                  808 	ret
                            809 ;------------------------------------------------------------
                            810 ;Allocation info for local variables in function 'main'
                            811 ;------------------------------------------------------------
                            812 ;------------------------------------------------------------
                    0124    813 	G$main$0$0 ==.
                    0124    814 	C$main.c$156$1$1 ==.
                            815 ;	main.c:156: void main (void) {
                            816 ;	-----------------------------------------
                            817 ;	 function main
                            818 ;	-----------------------------------------
   01A9                     819 _main:
                    0124    820 	C$main.c$157$1$1 ==.
                            821 ;	main.c:157: init(); // Initialize
   01A9 12 00 85            822 	lcall	_init
                    0127    823 	C$main.c$159$1$1 ==.
                            824 ;	main.c:159: while (1) {
   01AC                     825 00102$:
                    0127    826 	C$main.c$161$2$2 ==.
                            827 ;	main.c:161: check_incoming(); // Car enters
   01AC 12 01 90            828 	lcall	_check_incoming
                    012A    829 	C$main.c$163$2$2 ==.
                            830 ;	main.c:163: check_outgoing(); // Car leaves
   01AF 12 01 73            831 	lcall	_check_outgoing
                    012D    832 	C$main.c$170$2$2 ==.
                            833 ;	main.c:170: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   01B2 E4                  834 	clr	a
   01B3 F5 17               835 	mov	_cycle_delay,a
   01B5 F5 18               836 	mov	(_cycle_delay + 1),a
   01B7 F5 19               837 	mov	(_cycle_delay + 2),a
   01B9 F5 1A               838 	mov	(_cycle_delay + 3),a
   01BB                     839 00104$:
   01BB C3                  840 	clr	c
   01BC E5 17               841 	mov	a,_cycle_delay
   01BE 95 1B               842 	subb	a,_cycle_duration
   01C0 E5 18               843 	mov	a,(_cycle_delay + 1)
   01C2 95 1C               844 	subb	a,(_cycle_duration + 1)
   01C4 E5 19               845 	mov	a,(_cycle_delay + 2)
   01C6 95 1D               846 	subb	a,(_cycle_duration + 2)
   01C8 E5 1A               847 	mov	a,(_cycle_delay + 3)
   01CA 95 1E               848 	subb	a,(_cycle_duration + 3)
   01CC 50 14               849 	jnc	00107$
   01CE 05 17               850 	inc	_cycle_delay
   01D0 E4                  851 	clr	a
   01D1 B5 17 E7            852 	cjne	a,_cycle_delay,00104$
   01D4 05 18               853 	inc	(_cycle_delay + 1)
   01D6 B5 18 E2            854 	cjne	a,(_cycle_delay + 1),00104$
   01D9 05 19               855 	inc	(_cycle_delay + 2)
   01DB B5 19 DD            856 	cjne	a,(_cycle_delay + 2),00104$
   01DE 05 1A               857 	inc	(_cycle_delay + 3)
   01E0 80 D9               858 	sjmp	00104$
   01E2                     859 00107$:
                    015D    860 	C$main.c$172$2$2 ==.
                            861 ;	main.c:172: display(free_slots); // Output the number of free slots
   01E2 85 09 82            862 	mov	dpl,_free_slots
   01E5 85 0A 83            863 	mov	dph,(_free_slots + 1)
   01E8 12 01 10            864 	lcall	_display
                    0166    865 	C$main.c$174$1$1 ==.
                    0166    866 	XG$main$0$0 ==.
   01EB 80 BF               867 	sjmp	00102$
                            868 	.area CSEG    (CODE)
                            869 	.area CONST   (CODE)
                            870 	.area XINIT   (CODE)
                            871 	.area CABS    (ABS,CODE)
