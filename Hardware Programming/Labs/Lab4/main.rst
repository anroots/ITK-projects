                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Mon Oct 24 10:20:11 2011
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _init
                             14 	.globl _CY
                             15 	.globl _AC
                             16 	.globl _F0
                             17 	.globl _RS1
                             18 	.globl _RS0
                             19 	.globl _OV
                             20 	.globl _F1
                             21 	.globl _P
                             22 	.globl _PS
                             23 	.globl _PT1
                             24 	.globl _PX1
                             25 	.globl _PT0
                             26 	.globl _PX0
                             27 	.globl _RD
                             28 	.globl _WR
                             29 	.globl _T1
                             30 	.globl _T0
                             31 	.globl _INT1
                             32 	.globl _INT0
                             33 	.globl _TXD
                             34 	.globl _RXD
                             35 	.globl _P3_7
                             36 	.globl _P3_6
                             37 	.globl _P3_5
                             38 	.globl _P3_4
                             39 	.globl _P3_3
                             40 	.globl _P3_2
                             41 	.globl _P3_1
                             42 	.globl _P3_0
                             43 	.globl _EA
                             44 	.globl _ES
                             45 	.globl _ET1
                             46 	.globl _EX1
                             47 	.globl _ET0
                             48 	.globl _EX0
                             49 	.globl _P2_7
                             50 	.globl _P2_6
                             51 	.globl _P2_5
                             52 	.globl _P2_4
                             53 	.globl _P2_3
                             54 	.globl _P2_2
                             55 	.globl _P2_1
                             56 	.globl _P2_0
                             57 	.globl _SM0
                             58 	.globl _SM1
                             59 	.globl _SM2
                             60 	.globl _REN
                             61 	.globl _TB8
                             62 	.globl _RB8
                             63 	.globl _TI
                             64 	.globl _RI
                             65 	.globl _P1_7
                             66 	.globl _P1_6
                             67 	.globl _P1_5
                             68 	.globl _P1_4
                             69 	.globl _P1_3
                             70 	.globl _P1_2
                             71 	.globl _P1_1
                             72 	.globl _P1_0
                             73 	.globl _TF1
                             74 	.globl _TR1
                             75 	.globl _TF0
                             76 	.globl _TR0
                             77 	.globl _IE1
                             78 	.globl _IT1
                             79 	.globl _IE0
                             80 	.globl _IT0
                             81 	.globl _P0_7
                             82 	.globl _P0_6
                             83 	.globl _P0_5
                             84 	.globl _P0_4
                             85 	.globl _P0_3
                             86 	.globl _P0_2
                             87 	.globl _P0_1
                             88 	.globl _P0_0
                             89 	.globl _B
                             90 	.globl _ACC
                             91 	.globl _PSW
                             92 	.globl _IP
                             93 	.globl _P3
                             94 	.globl _IE
                             95 	.globl _P2
                             96 	.globl _SBUF
                             97 	.globl _SCON
                             98 	.globl _P1
                             99 	.globl _TH1
                            100 	.globl _TH0
                            101 	.globl _TL1
                            102 	.globl _TL0
                            103 	.globl _TMOD
                            104 	.globl _TCON
                            105 	.globl _PCON
                            106 	.globl _DPH
                            107 	.globl _DPL
                            108 	.globl _SP
                            109 	.globl _P0
                            110 	.globl _cycle_duration
                            111 	.globl _cycle_delay
                            112 	.globl _OUT
                            113 	.globl _FREE_SLOTS
                            114 ;--------------------------------------------------------
                            115 ; special function registers
                            116 ;--------------------------------------------------------
                            117 	.area RSEG    (DATA)
                    0080    118 G$P0$0$0 == 0x0080
                    0080    119 _P0	=	0x0080
                    0081    120 G$SP$0$0 == 0x0081
                    0081    121 _SP	=	0x0081
                    0082    122 G$DPL$0$0 == 0x0082
                    0082    123 _DPL	=	0x0082
                    0083    124 G$DPH$0$0 == 0x0083
                    0083    125 _DPH	=	0x0083
                    0087    126 G$PCON$0$0 == 0x0087
                    0087    127 _PCON	=	0x0087
                    0088    128 G$TCON$0$0 == 0x0088
                    0088    129 _TCON	=	0x0088
                    0089    130 G$TMOD$0$0 == 0x0089
                    0089    131 _TMOD	=	0x0089
                    008A    132 G$TL0$0$0 == 0x008a
                    008A    133 _TL0	=	0x008a
                    008B    134 G$TL1$0$0 == 0x008b
                    008B    135 _TL1	=	0x008b
                    008C    136 G$TH0$0$0 == 0x008c
                    008C    137 _TH0	=	0x008c
                    008D    138 G$TH1$0$0 == 0x008d
                    008D    139 _TH1	=	0x008d
                    0090    140 G$P1$0$0 == 0x0090
                    0090    141 _P1	=	0x0090
                    0098    142 G$SCON$0$0 == 0x0098
                    0098    143 _SCON	=	0x0098
                    0099    144 G$SBUF$0$0 == 0x0099
                    0099    145 _SBUF	=	0x0099
                    00A0    146 G$P2$0$0 == 0x00a0
                    00A0    147 _P2	=	0x00a0
                    00A8    148 G$IE$0$0 == 0x00a8
                    00A8    149 _IE	=	0x00a8
                    00B0    150 G$P3$0$0 == 0x00b0
                    00B0    151 _P3	=	0x00b0
                    00B8    152 G$IP$0$0 == 0x00b8
                    00B8    153 _IP	=	0x00b8
                    00D0    154 G$PSW$0$0 == 0x00d0
                    00D0    155 _PSW	=	0x00d0
                    00E0    156 G$ACC$0$0 == 0x00e0
                    00E0    157 _ACC	=	0x00e0
                    00F0    158 G$B$0$0 == 0x00f0
                    00F0    159 _B	=	0x00f0
                            160 ;--------------------------------------------------------
                            161 ; special function bits
                            162 ;--------------------------------------------------------
                            163 	.area RSEG    (DATA)
                    0080    164 G$P0_0$0$0 == 0x0080
                    0080    165 _P0_0	=	0x0080
                    0081    166 G$P0_1$0$0 == 0x0081
                    0081    167 _P0_1	=	0x0081
                    0082    168 G$P0_2$0$0 == 0x0082
                    0082    169 _P0_2	=	0x0082
                    0083    170 G$P0_3$0$0 == 0x0083
                    0083    171 _P0_3	=	0x0083
                    0084    172 G$P0_4$0$0 == 0x0084
                    0084    173 _P0_4	=	0x0084
                    0085    174 G$P0_5$0$0 == 0x0085
                    0085    175 _P0_5	=	0x0085
                    0086    176 G$P0_6$0$0 == 0x0086
                    0086    177 _P0_6	=	0x0086
                    0087    178 G$P0_7$0$0 == 0x0087
                    0087    179 _P0_7	=	0x0087
                    0088    180 G$IT0$0$0 == 0x0088
                    0088    181 _IT0	=	0x0088
                    0089    182 G$IE0$0$0 == 0x0089
                    0089    183 _IE0	=	0x0089
                    008A    184 G$IT1$0$0 == 0x008a
                    008A    185 _IT1	=	0x008a
                    008B    186 G$IE1$0$0 == 0x008b
                    008B    187 _IE1	=	0x008b
                    008C    188 G$TR0$0$0 == 0x008c
                    008C    189 _TR0	=	0x008c
                    008D    190 G$TF0$0$0 == 0x008d
                    008D    191 _TF0	=	0x008d
                    008E    192 G$TR1$0$0 == 0x008e
                    008E    193 _TR1	=	0x008e
                    008F    194 G$TF1$0$0 == 0x008f
                    008F    195 _TF1	=	0x008f
                    0090    196 G$P1_0$0$0 == 0x0090
                    0090    197 _P1_0	=	0x0090
                    0091    198 G$P1_1$0$0 == 0x0091
                    0091    199 _P1_1	=	0x0091
                    0092    200 G$P1_2$0$0 == 0x0092
                    0092    201 _P1_2	=	0x0092
                    0093    202 G$P1_3$0$0 == 0x0093
                    0093    203 _P1_3	=	0x0093
                    0094    204 G$P1_4$0$0 == 0x0094
                    0094    205 _P1_4	=	0x0094
                    0095    206 G$P1_5$0$0 == 0x0095
                    0095    207 _P1_5	=	0x0095
                    0096    208 G$P1_6$0$0 == 0x0096
                    0096    209 _P1_6	=	0x0096
                    0097    210 G$P1_7$0$0 == 0x0097
                    0097    211 _P1_7	=	0x0097
                    0098    212 G$RI$0$0 == 0x0098
                    0098    213 _RI	=	0x0098
                    0099    214 G$TI$0$0 == 0x0099
                    0099    215 _TI	=	0x0099
                    009A    216 G$RB8$0$0 == 0x009a
                    009A    217 _RB8	=	0x009a
                    009B    218 G$TB8$0$0 == 0x009b
                    009B    219 _TB8	=	0x009b
                    009C    220 G$REN$0$0 == 0x009c
                    009C    221 _REN	=	0x009c
                    009D    222 G$SM2$0$0 == 0x009d
                    009D    223 _SM2	=	0x009d
                    009E    224 G$SM1$0$0 == 0x009e
                    009E    225 _SM1	=	0x009e
                    009F    226 G$SM0$0$0 == 0x009f
                    009F    227 _SM0	=	0x009f
                    00A0    228 G$P2_0$0$0 == 0x00a0
                    00A0    229 _P2_0	=	0x00a0
                    00A1    230 G$P2_1$0$0 == 0x00a1
                    00A1    231 _P2_1	=	0x00a1
                    00A2    232 G$P2_2$0$0 == 0x00a2
                    00A2    233 _P2_2	=	0x00a2
                    00A3    234 G$P2_3$0$0 == 0x00a3
                    00A3    235 _P2_3	=	0x00a3
                    00A4    236 G$P2_4$0$0 == 0x00a4
                    00A4    237 _P2_4	=	0x00a4
                    00A5    238 G$P2_5$0$0 == 0x00a5
                    00A5    239 _P2_5	=	0x00a5
                    00A6    240 G$P2_6$0$0 == 0x00a6
                    00A6    241 _P2_6	=	0x00a6
                    00A7    242 G$P2_7$0$0 == 0x00a7
                    00A7    243 _P2_7	=	0x00a7
                    00A8    244 G$EX0$0$0 == 0x00a8
                    00A8    245 _EX0	=	0x00a8
                    00A9    246 G$ET0$0$0 == 0x00a9
                    00A9    247 _ET0	=	0x00a9
                    00AA    248 G$EX1$0$0 == 0x00aa
                    00AA    249 _EX1	=	0x00aa
                    00AB    250 G$ET1$0$0 == 0x00ab
                    00AB    251 _ET1	=	0x00ab
                    00AC    252 G$ES$0$0 == 0x00ac
                    00AC    253 _ES	=	0x00ac
                    00AF    254 G$EA$0$0 == 0x00af
                    00AF    255 _EA	=	0x00af
                    00B0    256 G$P3_0$0$0 == 0x00b0
                    00B0    257 _P3_0	=	0x00b0
                    00B1    258 G$P3_1$0$0 == 0x00b1
                    00B1    259 _P3_1	=	0x00b1
                    00B2    260 G$P3_2$0$0 == 0x00b2
                    00B2    261 _P3_2	=	0x00b2
                    00B3    262 G$P3_3$0$0 == 0x00b3
                    00B3    263 _P3_3	=	0x00b3
                    00B4    264 G$P3_4$0$0 == 0x00b4
                    00B4    265 _P3_4	=	0x00b4
                    00B5    266 G$P3_5$0$0 == 0x00b5
                    00B5    267 _P3_5	=	0x00b5
                    00B6    268 G$P3_6$0$0 == 0x00b6
                    00B6    269 _P3_6	=	0x00b6
                    00B7    270 G$P3_7$0$0 == 0x00b7
                    00B7    271 _P3_7	=	0x00b7
                    00B0    272 G$RXD$0$0 == 0x00b0
                    00B0    273 _RXD	=	0x00b0
                    00B1    274 G$TXD$0$0 == 0x00b1
                    00B1    275 _TXD	=	0x00b1
                    00B2    276 G$INT0$0$0 == 0x00b2
                    00B2    277 _INT0	=	0x00b2
                    00B3    278 G$INT1$0$0 == 0x00b3
                    00B3    279 _INT1	=	0x00b3
                    00B4    280 G$T0$0$0 == 0x00b4
                    00B4    281 _T0	=	0x00b4
                    00B5    282 G$T1$0$0 == 0x00b5
                    00B5    283 _T1	=	0x00b5
                    00B6    284 G$WR$0$0 == 0x00b6
                    00B6    285 _WR	=	0x00b6
                    00B7    286 G$RD$0$0 == 0x00b7
                    00B7    287 _RD	=	0x00b7
                    00B8    288 G$PX0$0$0 == 0x00b8
                    00B8    289 _PX0	=	0x00b8
                    00B9    290 G$PT0$0$0 == 0x00b9
                    00B9    291 _PT0	=	0x00b9
                    00BA    292 G$PX1$0$0 == 0x00ba
                    00BA    293 _PX1	=	0x00ba
                    00BB    294 G$PT1$0$0 == 0x00bb
                    00BB    295 _PT1	=	0x00bb
                    00BC    296 G$PS$0$0 == 0x00bc
                    00BC    297 _PS	=	0x00bc
                    00D0    298 G$P$0$0 == 0x00d0
                    00D0    299 _P	=	0x00d0
                    00D1    300 G$F1$0$0 == 0x00d1
                    00D1    301 _F1	=	0x00d1
                    00D2    302 G$OV$0$0 == 0x00d2
                    00D2    303 _OV	=	0x00d2
                    00D3    304 G$RS0$0$0 == 0x00d3
                    00D3    305 _RS0	=	0x00d3
                    00D4    306 G$RS1$0$0 == 0x00d4
                    00D4    307 _RS1	=	0x00d4
                    00D5    308 G$F0$0$0 == 0x00d5
                    00D5    309 _F0	=	0x00d5
                    00D6    310 G$AC$0$0 == 0x00d6
                    00D6    311 _AC	=	0x00d6
                    00D7    312 G$CY$0$0 == 0x00d7
                    00D7    313 _CY	=	0x00d7
                            314 ;--------------------------------------------------------
                            315 ; overlayable register banks
                            316 ;--------------------------------------------------------
                            317 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     318 	.ds 8
                            319 ;--------------------------------------------------------
                            320 ; internal ram data
                            321 ;--------------------------------------------------------
                            322 	.area DSEG    (DATA)
                    0000    323 G$FREE_SLOTS$0$0==.
   0008                     324 _FREE_SLOTS::
   0008                     325 	.ds 1
                    0001    326 G$OUT$0$0==.
   0009                     327 _OUT::
   0009                     328 	.ds 10
                    000B    329 G$cycle_delay$0$0==.
   0013                     330 _cycle_delay::
   0013                     331 	.ds 4
                    000F    332 G$cycle_duration$0$0==.
   0017                     333 _cycle_duration::
   0017                     334 	.ds 4
                            335 ;--------------------------------------------------------
                            336 ; overlayable items in internal ram 
                            337 ;--------------------------------------------------------
                            338 	.area OSEG    (OVR,DATA)
                            339 ;--------------------------------------------------------
                            340 ; Stack segment in internal ram 
                            341 ;--------------------------------------------------------
                            342 	.area	SSEG	(DATA)
   001B                     343 __start__stack:
   001B                     344 	.ds	1
                            345 
                            346 ;--------------------------------------------------------
                            347 ; indirectly addressable internal ram data
                            348 ;--------------------------------------------------------
                            349 	.area ISEG    (DATA)
                            350 ;--------------------------------------------------------
                            351 ; absolute internal ram data
                            352 ;--------------------------------------------------------
                            353 	.area IABS    (ABS,DATA)
                            354 	.area IABS    (ABS,DATA)
                            355 ;--------------------------------------------------------
                            356 ; bit data
                            357 ;--------------------------------------------------------
                            358 	.area BSEG    (BIT)
                            359 ;--------------------------------------------------------
                            360 ; paged external ram data
                            361 ;--------------------------------------------------------
                            362 	.area PSEG    (PAG,XDATA)
                            363 ;--------------------------------------------------------
                            364 ; external ram data
                            365 ;--------------------------------------------------------
                            366 	.area XSEG    (XDATA)
                            367 ;--------------------------------------------------------
                            368 ; absolute external ram data
                            369 ;--------------------------------------------------------
                            370 	.area XABS    (ABS,XDATA)
                            371 ;--------------------------------------------------------
                            372 ; external initialized ram data
                            373 ;--------------------------------------------------------
                            374 	.area XISEG   (XDATA)
                            375 	.area HOME    (CODE)
                            376 	.area GSINIT0 (CODE)
                            377 	.area GSINIT1 (CODE)
                            378 	.area GSINIT2 (CODE)
                            379 	.area GSINIT3 (CODE)
                            380 	.area GSINIT4 (CODE)
                            381 	.area GSINIT5 (CODE)
                            382 	.area GSINIT  (CODE)
                            383 	.area GSFINAL (CODE)
                            384 	.area CSEG    (CODE)
                            385 ;--------------------------------------------------------
                            386 ; interrupt vector 
                            387 ;--------------------------------------------------------
                            388 	.area HOME    (CODE)
   0000                     389 __interrupt_vect:
   0000 02 00 08            390 	ljmp	__sdcc_gsinit_startup
                            391 ;--------------------------------------------------------
                            392 ; global & static initialisations
                            393 ;--------------------------------------------------------
                            394 	.area HOME    (CODE)
                            395 	.area GSINIT  (CODE)
                            396 	.area GSFINAL (CODE)
                            397 	.area GSINIT  (CODE)
                            398 	.globl __sdcc_gsinit_startup
                            399 	.globl __sdcc_program_startup
                            400 	.globl __start__stack
                            401 	.globl __mcs51_genXINIT
                            402 	.globl __mcs51_genXRAMCLEAR
                            403 	.globl __mcs51_genRAMCLEAR
                    0000    404 	G$main$0$0 ==.
                    0000    405 	C$main.c$25$1$1 ==.
                            406 ;	main.c:25: unsigned char OUT [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0061 75 09 C0            407 	mov	_OUT,#0xC0
   0064 75 0A F9            408 	mov	(_OUT + 0x0001),#0xF9
   0067 75 0B A4            409 	mov	(_OUT + 0x0002),#0xA4
   006A 75 0C B0            410 	mov	(_OUT + 0x0003),#0xB0
   006D 75 0D 99            411 	mov	(_OUT + 0x0004),#0x99
   0070 75 0E 92            412 	mov	(_OUT + 0x0005),#0x92
   0073 75 0F 82            413 	mov	(_OUT + 0x0006),#0x82
   0076 75 10 F0            414 	mov	(_OUT + 0x0007),#0xF0
   0079 75 11 80            415 	mov	(_OUT + 0x0008),#0x80
   007C 75 12 90            416 	mov	(_OUT + 0x0009),#0x90
                            417 	.area GSFINAL (CODE)
   007F 02 00 03            418 	ljmp	__sdcc_program_startup
                            419 ;--------------------------------------------------------
                            420 ; Home
                            421 ;--------------------------------------------------------
                            422 	.area HOME    (CODE)
                            423 	.area HOME    (CODE)
   0003                     424 __sdcc_program_startup:
   0003 12 00 97            425 	lcall	_main
                            426 ;	return from main will lock up
   0006 80 FE               427 	sjmp .
                            428 ;--------------------------------------------------------
                            429 ; code
                            430 ;--------------------------------------------------------
                            431 	.area CSEG    (CODE)
                            432 ;------------------------------------------------------------
                            433 ;Allocation info for local variables in function 'init'
                            434 ;------------------------------------------------------------
                            435 ;------------------------------------------------------------
                    0000    436 	G$init$0$0 ==.
                    0000    437 	C$main.c$32$0$0 ==.
                            438 ;	main.c:32: void init(void) {
                            439 ;	-----------------------------------------
                            440 ;	 function init
                            441 ;	-----------------------------------------
   0082                     442 _init:
                    0002    443 	ar2 = 0x02
                    0003    444 	ar3 = 0x03
                    0004    445 	ar4 = 0x04
                    0005    446 	ar5 = 0x05
                    0006    447 	ar6 = 0x06
                    0007    448 	ar7 = 0x07
                    0000    449 	ar0 = 0x00
                    0001    450 	ar1 = 0x01
                    0000    451 	C$main.c$33$1$1 ==.
                            452 ;	main.c:33: LED = 0xc0; // LED display is set to 0 when the system turns on
   0082 75 A0 C0            453 	mov	_P2,#0xC0
                    0003    454 	C$main.c$34$1$1 ==.
                            455 ;	main.c:34: FREE_SLOTS = 10; // We have X free slots in the parking house
   0085 75 08 0A            456 	mov	_FREE_SLOTS,#0x0A
                    0006    457 	C$main.c$36$1$1 ==.
                            458 ;	main.c:36: BUTTON_ENTER = 1; // Define as input
   0088 D2 91               459 	setb	_P1_1
                    0008    460 	C$main.c$37$1$1 ==.
                            461 ;	main.c:37: BUTTON_EXIT = 1; // Define as input
   008A D2 92               462 	setb	_P1_2
                    000A    463 	C$main.c$39$1$1 ==.
                            464 ;	main.c:39: cycle_duration = 10; // The artificial time delay is X cycles long
   008C 75 17 0A            465 	mov	_cycle_duration,#0x0A
   008F E4                  466 	clr	a
   0090 F5 18               467 	mov	(_cycle_duration + 1),a
   0092 F5 19               468 	mov	(_cycle_duration + 2),a
   0094 F5 1A               469 	mov	(_cycle_duration + 3),a
                    0014    470 	C$main.c$40$1$1 ==.
                    0014    471 	XG$init$0$0 ==.
   0096 22                  472 	ret
                            473 ;------------------------------------------------------------
                            474 ;Allocation info for local variables in function 'main'
                            475 ;------------------------------------------------------------
                            476 ;------------------------------------------------------------
                    0015    477 	G$main$0$0 ==.
                    0015    478 	C$main.c$43$1$1 ==.
                            479 ;	main.c:43: void main (void) {
                            480 ;	-----------------------------------------
                            481 ;	 function main
                            482 ;	-----------------------------------------
   0097                     483 _main:
                    0015    484 	C$main.c$45$1$1 ==.
                            485 ;	main.c:45: init();
   0097 12 00 82            486 	lcall	_init
                    0018    487 	C$main.c$47$1$1 ==.
                            488 ;	main.c:47: while (1) {
   009A                     489 00106$:
                    0018    490 	C$main.c$50$2$2 ==.
                            491 ;	main.c:50: if (BUTTON_ENTER == 1) {
   009A 30 91 36            492 	jnb	_P1_1,00104$
                    001B    493 	C$main.c$53$3$3 ==.
                            494 ;	main.c:53: if (FREE_SLOTS > 0) {    
   009D E5 08               495 	mov	a,_FREE_SLOTS
   009F 60 02               496 	jz	00102$
                    001F    497 	C$main.c$54$4$4 ==.
                            498 ;	main.c:54: FREE_SLOTS--;
   00A1 15 08               499 	dec	_FREE_SLOTS
   00A3                     500 00102$:
                    0021    501 	C$main.c$59$3$3 ==.
                            502 ;	main.c:59: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   00A3 E4                  503 	clr	a
   00A4 F5 13               504 	mov	_cycle_delay,a
   00A6 F5 14               505 	mov	(_cycle_delay + 1),a
   00A8 F5 15               506 	mov	(_cycle_delay + 2),a
   00AA F5 16               507 	mov	(_cycle_delay + 3),a
   00AC                     508 00108$:
   00AC C3                  509 	clr	c
   00AD E5 13               510 	mov	a,_cycle_delay
   00AF 95 17               511 	subb	a,_cycle_duration
   00B1 E5 14               512 	mov	a,(_cycle_delay + 1)
   00B3 95 18               513 	subb	a,(_cycle_duration + 1)
   00B5 E5 15               514 	mov	a,(_cycle_delay + 2)
   00B7 95 19               515 	subb	a,(_cycle_duration + 2)
   00B9 E5 16               516 	mov	a,(_cycle_delay + 3)
   00BB 95 1A               517 	subb	a,(_cycle_duration + 3)
   00BD 50 14               518 	jnc	00104$
   00BF 05 13               519 	inc	_cycle_delay
   00C1 E4                  520 	clr	a
   00C2 B5 13 E7            521 	cjne	a,_cycle_delay,00108$
   00C5 05 14               522 	inc	(_cycle_delay + 1)
   00C7 B5 14 E2            523 	cjne	a,(_cycle_delay + 1),00108$
   00CA 05 15               524 	inc	(_cycle_delay + 2)
   00CC B5 15 DD            525 	cjne	a,(_cycle_delay + 2),00108$
   00CF 05 16               526 	inc	(_cycle_delay + 3)
   00D1 80 D9               527 	sjmp	00108$
   00D3                     528 00104$:
                    0051    529 	C$main.c$63$2$2 ==.
                            530 ;	main.c:63: LED = OUT[FREE_SLOTS];
   00D3 E5 08               531 	mov	a,_FREE_SLOTS
   00D5 24 09               532 	add	a,#_OUT
   00D7 F8                  533 	mov	r0,a
   00D8 86 A0               534 	mov	_P2,@r0
                    0058    535 	C$main.c$65$1$1 ==.
                    0058    536 	XG$main$0$0 ==.
   00DA 80 BE               537 	sjmp	00106$
                            538 	.area CSEG    (CODE)
                            539 	.area CONST   (CODE)
                            540 	.area XINIT   (CODE)
                            541 	.area CABS    (ABS,CODE)
