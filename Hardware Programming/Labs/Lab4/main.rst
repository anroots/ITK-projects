                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Mon Oct 24 13:05:07 2011
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
                            122 ;--------------------------------------------------------
                            123 ; special function registers
                            124 ;--------------------------------------------------------
                            125 	.area RSEG    (DATA)
                    0080    126 G$P0$0$0 == 0x0080
                    0080    127 _P0	=	0x0080
                    0081    128 G$SP$0$0 == 0x0081
                    0081    129 _SP	=	0x0081
                    0082    130 G$DPL$0$0 == 0x0082
                    0082    131 _DPL	=	0x0082
                    0083    132 G$DPH$0$0 == 0x0083
                    0083    133 _DPH	=	0x0083
                    0087    134 G$PCON$0$0 == 0x0087
                    0087    135 _PCON	=	0x0087
                    0088    136 G$TCON$0$0 == 0x0088
                    0088    137 _TCON	=	0x0088
                    0089    138 G$TMOD$0$0 == 0x0089
                    0089    139 _TMOD	=	0x0089
                    008A    140 G$TL0$0$0 == 0x008a
                    008A    141 _TL0	=	0x008a
                    008B    142 G$TL1$0$0 == 0x008b
                    008B    143 _TL1	=	0x008b
                    008C    144 G$TH0$0$0 == 0x008c
                    008C    145 _TH0	=	0x008c
                    008D    146 G$TH1$0$0 == 0x008d
                    008D    147 _TH1	=	0x008d
                    0090    148 G$P1$0$0 == 0x0090
                    0090    149 _P1	=	0x0090
                    0098    150 G$SCON$0$0 == 0x0098
                    0098    151 _SCON	=	0x0098
                    0099    152 G$SBUF$0$0 == 0x0099
                    0099    153 _SBUF	=	0x0099
                    00A0    154 G$P2$0$0 == 0x00a0
                    00A0    155 _P2	=	0x00a0
                    00A8    156 G$IE$0$0 == 0x00a8
                    00A8    157 _IE	=	0x00a8
                    00B0    158 G$P3$0$0 == 0x00b0
                    00B0    159 _P3	=	0x00b0
                    00B8    160 G$IP$0$0 == 0x00b8
                    00B8    161 _IP	=	0x00b8
                    00D0    162 G$PSW$0$0 == 0x00d0
                    00D0    163 _PSW	=	0x00d0
                    00E0    164 G$ACC$0$0 == 0x00e0
                    00E0    165 _ACC	=	0x00e0
                    00F0    166 G$B$0$0 == 0x00f0
                    00F0    167 _B	=	0x00f0
                            168 ;--------------------------------------------------------
                            169 ; special function bits
                            170 ;--------------------------------------------------------
                            171 	.area RSEG    (DATA)
                    0080    172 G$P0_0$0$0 == 0x0080
                    0080    173 _P0_0	=	0x0080
                    0081    174 G$P0_1$0$0 == 0x0081
                    0081    175 _P0_1	=	0x0081
                    0082    176 G$P0_2$0$0 == 0x0082
                    0082    177 _P0_2	=	0x0082
                    0083    178 G$P0_3$0$0 == 0x0083
                    0083    179 _P0_3	=	0x0083
                    0084    180 G$P0_4$0$0 == 0x0084
                    0084    181 _P0_4	=	0x0084
                    0085    182 G$P0_5$0$0 == 0x0085
                    0085    183 _P0_5	=	0x0085
                    0086    184 G$P0_6$0$0 == 0x0086
                    0086    185 _P0_6	=	0x0086
                    0087    186 G$P0_7$0$0 == 0x0087
                    0087    187 _P0_7	=	0x0087
                    0088    188 G$IT0$0$0 == 0x0088
                    0088    189 _IT0	=	0x0088
                    0089    190 G$IE0$0$0 == 0x0089
                    0089    191 _IE0	=	0x0089
                    008A    192 G$IT1$0$0 == 0x008a
                    008A    193 _IT1	=	0x008a
                    008B    194 G$IE1$0$0 == 0x008b
                    008B    195 _IE1	=	0x008b
                    008C    196 G$TR0$0$0 == 0x008c
                    008C    197 _TR0	=	0x008c
                    008D    198 G$TF0$0$0 == 0x008d
                    008D    199 _TF0	=	0x008d
                    008E    200 G$TR1$0$0 == 0x008e
                    008E    201 _TR1	=	0x008e
                    008F    202 G$TF1$0$0 == 0x008f
                    008F    203 _TF1	=	0x008f
                    0090    204 G$P1_0$0$0 == 0x0090
                    0090    205 _P1_0	=	0x0090
                    0091    206 G$P1_1$0$0 == 0x0091
                    0091    207 _P1_1	=	0x0091
                    0092    208 G$P1_2$0$0 == 0x0092
                    0092    209 _P1_2	=	0x0092
                    0093    210 G$P1_3$0$0 == 0x0093
                    0093    211 _P1_3	=	0x0093
                    0094    212 G$P1_4$0$0 == 0x0094
                    0094    213 _P1_4	=	0x0094
                    0095    214 G$P1_5$0$0 == 0x0095
                    0095    215 _P1_5	=	0x0095
                    0096    216 G$P1_6$0$0 == 0x0096
                    0096    217 _P1_6	=	0x0096
                    0097    218 G$P1_7$0$0 == 0x0097
                    0097    219 _P1_7	=	0x0097
                    0098    220 G$RI$0$0 == 0x0098
                    0098    221 _RI	=	0x0098
                    0099    222 G$TI$0$0 == 0x0099
                    0099    223 _TI	=	0x0099
                    009A    224 G$RB8$0$0 == 0x009a
                    009A    225 _RB8	=	0x009a
                    009B    226 G$TB8$0$0 == 0x009b
                    009B    227 _TB8	=	0x009b
                    009C    228 G$REN$0$0 == 0x009c
                    009C    229 _REN	=	0x009c
                    009D    230 G$SM2$0$0 == 0x009d
                    009D    231 _SM2	=	0x009d
                    009E    232 G$SM1$0$0 == 0x009e
                    009E    233 _SM1	=	0x009e
                    009F    234 G$SM0$0$0 == 0x009f
                    009F    235 _SM0	=	0x009f
                    00A0    236 G$P2_0$0$0 == 0x00a0
                    00A0    237 _P2_0	=	0x00a0
                    00A1    238 G$P2_1$0$0 == 0x00a1
                    00A1    239 _P2_1	=	0x00a1
                    00A2    240 G$P2_2$0$0 == 0x00a2
                    00A2    241 _P2_2	=	0x00a2
                    00A3    242 G$P2_3$0$0 == 0x00a3
                    00A3    243 _P2_3	=	0x00a3
                    00A4    244 G$P2_4$0$0 == 0x00a4
                    00A4    245 _P2_4	=	0x00a4
                    00A5    246 G$P2_5$0$0 == 0x00a5
                    00A5    247 _P2_5	=	0x00a5
                    00A6    248 G$P2_6$0$0 == 0x00a6
                    00A6    249 _P2_6	=	0x00a6
                    00A7    250 G$P2_7$0$0 == 0x00a7
                    00A7    251 _P2_7	=	0x00a7
                    00A8    252 G$EX0$0$0 == 0x00a8
                    00A8    253 _EX0	=	0x00a8
                    00A9    254 G$ET0$0$0 == 0x00a9
                    00A9    255 _ET0	=	0x00a9
                    00AA    256 G$EX1$0$0 == 0x00aa
                    00AA    257 _EX1	=	0x00aa
                    00AB    258 G$ET1$0$0 == 0x00ab
                    00AB    259 _ET1	=	0x00ab
                    00AC    260 G$ES$0$0 == 0x00ac
                    00AC    261 _ES	=	0x00ac
                    00AF    262 G$EA$0$0 == 0x00af
                    00AF    263 _EA	=	0x00af
                    00B0    264 G$P3_0$0$0 == 0x00b0
                    00B0    265 _P3_0	=	0x00b0
                    00B1    266 G$P3_1$0$0 == 0x00b1
                    00B1    267 _P3_1	=	0x00b1
                    00B2    268 G$P3_2$0$0 == 0x00b2
                    00B2    269 _P3_2	=	0x00b2
                    00B3    270 G$P3_3$0$0 == 0x00b3
                    00B3    271 _P3_3	=	0x00b3
                    00B4    272 G$P3_4$0$0 == 0x00b4
                    00B4    273 _P3_4	=	0x00b4
                    00B5    274 G$P3_5$0$0 == 0x00b5
                    00B5    275 _P3_5	=	0x00b5
                    00B6    276 G$P3_6$0$0 == 0x00b6
                    00B6    277 _P3_6	=	0x00b6
                    00B7    278 G$P3_7$0$0 == 0x00b7
                    00B7    279 _P3_7	=	0x00b7
                    00B0    280 G$RXD$0$0 == 0x00b0
                    00B0    281 _RXD	=	0x00b0
                    00B1    282 G$TXD$0$0 == 0x00b1
                    00B1    283 _TXD	=	0x00b1
                    00B2    284 G$INT0$0$0 == 0x00b2
                    00B2    285 _INT0	=	0x00b2
                    00B3    286 G$INT1$0$0 == 0x00b3
                    00B3    287 _INT1	=	0x00b3
                    00B4    288 G$T0$0$0 == 0x00b4
                    00B4    289 _T0	=	0x00b4
                    00B5    290 G$T1$0$0 == 0x00b5
                    00B5    291 _T1	=	0x00b5
                    00B6    292 G$WR$0$0 == 0x00b6
                    00B6    293 _WR	=	0x00b6
                    00B7    294 G$RD$0$0 == 0x00b7
                    00B7    295 _RD	=	0x00b7
                    00B8    296 G$PX0$0$0 == 0x00b8
                    00B8    297 _PX0	=	0x00b8
                    00B9    298 G$PT0$0$0 == 0x00b9
                    00B9    299 _PT0	=	0x00b9
                    00BA    300 G$PX1$0$0 == 0x00ba
                    00BA    301 _PX1	=	0x00ba
                    00BB    302 G$PT1$0$0 == 0x00bb
                    00BB    303 _PT1	=	0x00bb
                    00BC    304 G$PS$0$0 == 0x00bc
                    00BC    305 _PS	=	0x00bc
                    00D0    306 G$P$0$0 == 0x00d0
                    00D0    307 _P	=	0x00d0
                    00D1    308 G$F1$0$0 == 0x00d1
                    00D1    309 _F1	=	0x00d1
                    00D2    310 G$OV$0$0 == 0x00d2
                    00D2    311 _OV	=	0x00d2
                    00D3    312 G$RS0$0$0 == 0x00d3
                    00D3    313 _RS0	=	0x00d3
                    00D4    314 G$RS1$0$0 == 0x00d4
                    00D4    315 _RS1	=	0x00d4
                    00D5    316 G$F0$0$0 == 0x00d5
                    00D5    317 _F0	=	0x00d5
                    00D6    318 G$AC$0$0 == 0x00d6
                    00D6    319 _AC	=	0x00d6
                    00D7    320 G$CY$0$0 == 0x00d7
                    00D7    321 _CY	=	0x00d7
                            322 ;--------------------------------------------------------
                            323 ; overlayable register banks
                            324 ;--------------------------------------------------------
                            325 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     326 	.ds 8
                            327 ;--------------------------------------------------------
                            328 ; internal ram data
                            329 ;--------------------------------------------------------
                            330 	.area DSEG    (DATA)
                    0000    331 G$free_slots$0$0==.
   0008                     332 _free_slots::
   0008                     333 	.ds 1
                    0001    334 G$MAX_SLOTS$0$0==.
   0009                     335 _MAX_SLOTS::
   0009                     336 	.ds 2
                    0003    337 G$NUMBERS$0$0==.
   000B                     338 _NUMBERS::
   000B                     339 	.ds 10
                    000D    340 G$cycle_delay$0$0==.
   0015                     341 _cycle_delay::
   0015                     342 	.ds 4
                    0011    343 G$cycle_duration$0$0==.
   0019                     344 _cycle_duration::
   0019                     345 	.ds 4
                    0015    346 Lwrite_segment$value$1$1==.
   001D                     347 _write_segment_PARM_2:
   001D                     348 	.ds 1
                    0016    349 Lget_digit$place$1$1==.
   001E                     350 _get_digit_PARM_2:
   001E                     351 	.ds 1
                            352 ;--------------------------------------------------------
                            353 ; overlayable items in internal ram 
                            354 ;--------------------------------------------------------
                            355 	.area OSEG    (OVR,DATA)
                            356 ;--------------------------------------------------------
                            357 ; Stack segment in internal ram 
                            358 ;--------------------------------------------------------
                            359 	.area	SSEG	(DATA)
   001F                     360 __start__stack:
   001F                     361 	.ds	1
                            362 
                            363 ;--------------------------------------------------------
                            364 ; indirectly addressable internal ram data
                            365 ;--------------------------------------------------------
                            366 	.area ISEG    (DATA)
                            367 ;--------------------------------------------------------
                            368 ; absolute internal ram data
                            369 ;--------------------------------------------------------
                            370 	.area IABS    (ABS,DATA)
                            371 	.area IABS    (ABS,DATA)
                            372 ;--------------------------------------------------------
                            373 ; bit data
                            374 ;--------------------------------------------------------
                            375 	.area BSEG    (BIT)
                            376 ;--------------------------------------------------------
                            377 ; paged external ram data
                            378 ;--------------------------------------------------------
                            379 	.area PSEG    (PAG,XDATA)
                            380 ;--------------------------------------------------------
                            381 ; external ram data
                            382 ;--------------------------------------------------------
                            383 	.area XSEG    (XDATA)
                            384 ;--------------------------------------------------------
                            385 ; absolute external ram data
                            386 ;--------------------------------------------------------
                            387 	.area XABS    (ABS,XDATA)
                            388 ;--------------------------------------------------------
                            389 ; external initialized ram data
                            390 ;--------------------------------------------------------
                            391 	.area XISEG   (XDATA)
                            392 	.area HOME    (CODE)
                            393 	.area GSINIT0 (CODE)
                            394 	.area GSINIT1 (CODE)
                            395 	.area GSINIT2 (CODE)
                            396 	.area GSINIT3 (CODE)
                            397 	.area GSINIT4 (CODE)
                            398 	.area GSINIT5 (CODE)
                            399 	.area GSINIT  (CODE)
                            400 	.area GSFINAL (CODE)
                            401 	.area CSEG    (CODE)
                            402 ;--------------------------------------------------------
                            403 ; interrupt vector 
                            404 ;--------------------------------------------------------
                            405 	.area HOME    (CODE)
   0000                     406 __interrupt_vect:
   0000 02 00 08            407 	ljmp	__sdcc_gsinit_startup
                            408 ;--------------------------------------------------------
                            409 ; global & static initialisations
                            410 ;--------------------------------------------------------
                            411 	.area HOME    (CODE)
                            412 	.area GSINIT  (CODE)
                            413 	.area GSFINAL (CODE)
                            414 	.area GSINIT  (CODE)
                            415 	.globl __sdcc_gsinit_startup
                            416 	.globl __sdcc_program_startup
                            417 	.globl __start__stack
                            418 	.globl __mcs51_genXINIT
                            419 	.globl __mcs51_genXRAMCLEAR
                            420 	.globl __mcs51_genRAMCLEAR
                    0000    421 	G$main$0$0 ==.
                    0000    422 	C$main.c$27$1$1 ==.
                            423 ;	main.c:27: unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0061 75 0B C0            424 	mov	_NUMBERS,#0xC0
   0064 75 0C F9            425 	mov	(_NUMBERS + 0x0001),#0xF9
   0067 75 0D A4            426 	mov	(_NUMBERS + 0x0002),#0xA4
   006A 75 0E B0            427 	mov	(_NUMBERS + 0x0003),#0xB0
   006D 75 0F 99            428 	mov	(_NUMBERS + 0x0004),#0x99
   0070 75 10 92            429 	mov	(_NUMBERS + 0x0005),#0x92
   0073 75 11 82            430 	mov	(_NUMBERS + 0x0006),#0x82
   0076 75 12 F0            431 	mov	(_NUMBERS + 0x0007),#0xF0
   0079 75 13 80            432 	mov	(_NUMBERS + 0x0008),#0x80
   007C 75 14 90            433 	mov	(_NUMBERS + 0x0009),#0x90
                            434 	.area GSFINAL (CODE)
   007F 02 00 03            435 	ljmp	__sdcc_program_startup
                            436 ;--------------------------------------------------------
                            437 ; Home
                            438 ;--------------------------------------------------------
                            439 	.area HOME    (CODE)
                            440 	.area HOME    (CODE)
   0003                     441 __sdcc_program_startup:
   0003 12 01 3B            442 	lcall	_main
                            443 ;	return from main will lock up
   0006 80 FE               444 	sjmp .
                            445 ;--------------------------------------------------------
                            446 ; code
                            447 ;--------------------------------------------------------
                            448 	.area CSEG    (CODE)
                            449 ;------------------------------------------------------------
                            450 ;Allocation info for local variables in function 'init'
                            451 ;------------------------------------------------------------
                            452 ;------------------------------------------------------------
                    0000    453 	G$init$0$0 ==.
                    0000    454 	C$main.c$35$0$0 ==.
                            455 ;	main.c:35: void init(void) {
                            456 ;	-----------------------------------------
                            457 ;	 function init
                            458 ;	-----------------------------------------
   0082                     459 _init:
                    0002    460 	ar2 = 0x02
                    0003    461 	ar3 = 0x03
                    0004    462 	ar4 = 0x04
                    0005    463 	ar5 = 0x05
                    0006    464 	ar6 = 0x06
                    0007    465 	ar7 = 0x07
                    0000    466 	ar0 = 0x00
                    0001    467 	ar1 = 0x01
                    0000    468 	C$main.c$36$1$1 ==.
                            469 ;	main.c:36: MAX_SLOTS = 10; // We have this many free slots, max
   0082 75 09 0A            470 	mov	_MAX_SLOTS,#0x0A
   0085 E4                  471 	clr	a
   0086 F5 0A               472 	mov	(_MAX_SLOTS + 1),a
                    0006    473 	C$main.c$38$1$1 ==.
                            474 ;	main.c:38: free_slots = MAX_SLOTS; // All slots are empty in the beginning
   0088 75 08 0A            475 	mov	_free_slots,#0x0A
                    0009    476 	C$main.c$40$1$1 ==.
                            477 ;	main.c:40: BUTTON_ENTER = 1; // Define as input
   008B D2 90               478 	setb	_P1_0
                    000B    479 	C$main.c$41$1$1 ==.
                            480 ;	main.c:41: BUTTON_EXIT = 1; // Define as input
   008D D2 91               481 	setb	_P1_1
                    000D    482 	C$main.c$43$1$1 ==.
                            483 ;	main.c:43: cycle_duration = 1; // The artificial time delay is X cycles long
   008F 75 19 01            484 	mov	_cycle_duration,#0x01
   0092 E4                  485 	clr	a
   0093 F5 1A               486 	mov	(_cycle_duration + 1),a
   0095 F5 1B               487 	mov	(_cycle_duration + 2),a
   0097 F5 1C               488 	mov	(_cycle_duration + 3),a
                    0017    489 	C$main.c$44$1$1 ==.
                    0017    490 	XG$init$0$0 ==.
   0099 22                  491 	ret
                            492 ;------------------------------------------------------------
                            493 ;Allocation info for local variables in function 'write_segment'
                            494 ;------------------------------------------------------------
                            495 ;value                     Allocated with name '_write_segment_PARM_2'
                            496 ;segment_number            Allocated to registers r2 
                            497 ;------------------------------------------------------------
                    0018    498 	G$write_segment$0$0 ==.
                    0018    499 	C$main.c$52$1$1 ==.
                            500 ;	main.c:52: void write_segment(unsigned char segment_number, unsigned char value) {
                            501 ;	-----------------------------------------
                            502 ;	 function write_segment
                            503 ;	-----------------------------------------
   009A                     504 _write_segment:
   009A AA 82               505 	mov	r2,dpl
                    001A    506 	C$main.c$54$1$1 ==.
                            507 ;	main.c:54: P3_0 = 1; // Reset P3 to avoid flickers
   009C D2 B0               508 	setb	_P3_0
                    001C    509 	C$main.c$55$1$1 ==.
                            510 ;	main.c:55: P3_1 = 1;
   009E D2 B1               511 	setb	_P3_1
                    001E    512 	C$main.c$56$1$1 ==.
                            513 ;	main.c:56: P3_2 = 1;
   00A0 D2 B2               514 	setb	_P3_2
                    0020    515 	C$main.c$59$1$1 ==.
                            516 ;	main.c:59: P2 = NUMBERS[value];
   00A2 E5 1D               517 	mov	a,_write_segment_PARM_2
   00A4 24 0B               518 	add	a,#_NUMBERS
   00A6 F8                  519 	mov	r0,a
   00A7 86 A0               520 	mov	_P2,@r0
                    0027    521 	C$main.c$62$1$1 ==.
                            522 ;	main.c:62: switch (segment_number) {
   00A9 BA 00 02            523 	cjne	r2,#0x00,00110$
   00AC 80 0A               524 	sjmp	00101$
   00AE                     525 00110$:
   00AE BA 01 02            526 	cjne	r2,#0x01,00111$
   00B1 80 0C               527 	sjmp	00102$
   00B3                     528 00111$:
                    0031    529 	C$main.c$63$2$2 ==.
                            530 ;	main.c:63: case 0:
   00B3 BA 02 16            531 	cjne	r2,#0x02,00105$
   00B6 80 0E               532 	sjmp	00103$
   00B8                     533 00101$:
                    0036    534 	C$main.c$64$2$2 ==.
                            535 ;	main.c:64: P3_1 = 1;
   00B8 D2 B1               536 	setb	_P3_1
                    0038    537 	C$main.c$65$2$2 ==.
                            538 ;	main.c:65: P3_2 = 1;
   00BA D2 B2               539 	setb	_P3_2
                    003A    540 	C$main.c$66$2$2 ==.
                            541 ;	main.c:66: P3_0 = 0;
   00BC C2 B0               542 	clr	_P3_0
                    003C    543 	C$main.c$67$2$2 ==.
                            544 ;	main.c:67: break;
                    003C    545 	C$main.c$68$2$2 ==.
                            546 ;	main.c:68: case 1:
   00BE 22                  547 	ret
   00BF                     548 00102$:
                    003D    549 	C$main.c$69$2$2 ==.
                            550 ;	main.c:69: P3_0 = 1;
   00BF D2 B0               551 	setb	_P3_0
                    003F    552 	C$main.c$70$2$2 ==.
                            553 ;	main.c:70: P3_2 = 1;
   00C1 D2 B2               554 	setb	_P3_2
                    0041    555 	C$main.c$71$2$2 ==.
                            556 ;	main.c:71: P3_1 = 0;
   00C3 C2 B1               557 	clr	_P3_1
                    0043    558 	C$main.c$72$2$2 ==.
                            559 ;	main.c:72: break;
                    0043    560 	C$main.c$73$2$2 ==.
                            561 ;	main.c:73: case 2:
   00C5 22                  562 	ret
   00C6                     563 00103$:
                    0044    564 	C$main.c$74$2$2 ==.
                            565 ;	main.c:74: P3_3 = 1;
   00C6 D2 B3               566 	setb	_P3_3
                    0046    567 	C$main.c$75$2$2 ==.
                            568 ;	main.c:75: P3_1 = 1;
   00C8 D2 B1               569 	setb	_P3_1
                    0048    570 	C$main.c$76$2$2 ==.
                            571 ;	main.c:76: P3_2 = 0;
   00CA C2 B2               572 	clr	_P3_2
                    004A    573 	C$main.c$78$1$1 ==.
                            574 ;	main.c:78: }
   00CC                     575 00105$:
                    004A    576 	C$main.c$79$1$1 ==.
                    004A    577 	XG$write_segment$0$0 ==.
   00CC 22                  578 	ret
                            579 ;------------------------------------------------------------
                            580 ;Allocation info for local variables in function 'get_digit'
                            581 ;------------------------------------------------------------
                            582 ;place                     Allocated with name '_get_digit_PARM_2'
                            583 ;value                     Allocated to registers 
                            584 ;------------------------------------------------------------
                    004B    585 	G$get_digit$0$0 ==.
                    004B    586 	C$main.c$84$1$1 ==.
                            587 ;	main.c:84: unsigned char get_digit(unsigned int value, unsigned char place) {
                            588 ;	-----------------------------------------
                            589 ;	 function get_digit
                            590 ;	-----------------------------------------
   00CD                     591 _get_digit:
                    004B    592 	C$main.c$85$1$1 ==.
                            593 ;	main.c:85: return 4;
   00CD 75 82 04            594 	mov	dpl,#0x04
                    004E    595 	C$main.c$86$1$1 ==.
                    004E    596 	XG$get_digit$0$0 ==.
   00D0 22                  597 	ret
                            598 ;------------------------------------------------------------
                            599 ;Allocation info for local variables in function 'display'
                            600 ;------------------------------------------------------------
                            601 ;value                     Allocated to registers r2 r3 
                            602 ;------------------------------------------------------------
                    004F    603 	G$display$0$0 ==.
                    004F    604 	C$main.c$93$1$1 ==.
                            605 ;	main.c:93: void display(unsigned int value) {
                            606 ;	-----------------------------------------
                            607 ;	 function display
                            608 ;	-----------------------------------------
   00D1                     609 _display:
   00D1 AA 82               610 	mov	r2,dpl
   00D3 AB 83               611 	mov	r3,dph
                    0053    612 	C$main.c$96$1$1 ==.
                            613 ;	main.c:96: write_segment(2, get_digit(value, 3));
   00D5 75 1E 03            614 	mov	_get_digit_PARM_2,#0x03
   00D8 8A 82               615 	mov	dpl,r2
   00DA 8B 83               616 	mov	dph,r3
   00DC C0 02               617 	push	ar2
   00DE C0 03               618 	push	ar3
   00E0 12 00 CD            619 	lcall	_get_digit
   00E3 85 82 1D            620 	mov	_write_segment_PARM_2,dpl
   00E6 75 82 02            621 	mov	dpl,#0x02
   00E9 12 00 9A            622 	lcall	_write_segment
   00EC D0 03               623 	pop	ar3
   00EE D0 02               624 	pop	ar2
                    006E    625 	C$main.c$97$1$1 ==.
                            626 ;	main.c:97: write_segment(1, get_digit(value, 2));
   00F0 75 1E 02            627 	mov	_get_digit_PARM_2,#0x02
   00F3 8A 82               628 	mov	dpl,r2
   00F5 8B 83               629 	mov	dph,r3
   00F7 C0 02               630 	push	ar2
   00F9 C0 03               631 	push	ar3
   00FB 12 00 CD            632 	lcall	_get_digit
   00FE 85 82 1D            633 	mov	_write_segment_PARM_2,dpl
   0101 75 82 01            634 	mov	dpl,#0x01
   0104 12 00 9A            635 	lcall	_write_segment
   0107 D0 03               636 	pop	ar3
   0109 D0 02               637 	pop	ar2
                    0089    638 	C$main.c$98$1$1 ==.
                            639 ;	main.c:98: write_segment(0, get_digit(value, 1));
   010B 75 1E 01            640 	mov	_get_digit_PARM_2,#0x01
   010E 8A 82               641 	mov	dpl,r2
   0110 8B 83               642 	mov	dph,r3
   0112 12 00 CD            643 	lcall	_get_digit
   0115 85 82 1D            644 	mov	_write_segment_PARM_2,dpl
   0118 75 82 00            645 	mov	dpl,#0x00
                    0099    646 	C$main.c$99$1$1 ==.
                    0099    647 	XG$display$0$0 ==.
   011B 02 00 9A            648 	ljmp	_write_segment
                            649 ;------------------------------------------------------------
                            650 ;Allocation info for local variables in function 'check_outgoing'
                            651 ;------------------------------------------------------------
                            652 ;------------------------------------------------------------
                    009C    653 	G$check_outgoing$0$0 ==.
                    009C    654 	C$main.c$105$1$1 ==.
                            655 ;	main.c:105: void check_outgoing(){
                            656 ;	-----------------------------------------
                            657 ;	 function check_outgoing
                            658 ;	-----------------------------------------
   011E                     659 _check_outgoing:
                    009C    660 	C$main.c$107$1$1 ==.
                            661 ;	main.c:107: if (BUTTON_EXIT == 1) {
   011E 30 91 0F            662 	jnb	_P1_1,00105$
                    009F    663 	C$main.c$110$2$2 ==.
                            664 ;	main.c:110: if (free_slots < MAX_SLOTS) {
   0121 AA 08               665 	mov	r2,_free_slots
   0123 7B 00               666 	mov	r3,#0x00
   0125 C3                  667 	clr	c
   0126 EA                  668 	mov	a,r2
   0127 95 09               669 	subb	a,_MAX_SLOTS
   0129 EB                  670 	mov	a,r3
   012A 95 0A               671 	subb	a,(_MAX_SLOTS + 1)
   012C 50 02               672 	jnc	00105$
                    00AC    673 	C$main.c$111$3$3 ==.
                            674 ;	main.c:111: free_slots++;
   012E 05 08               675 	inc	_free_slots
   0130                     676 00105$:
                    00AE    677 	C$main.c$114$1$1 ==.
                    00AE    678 	XG$check_outgoing$0$0 ==.
   0130 22                  679 	ret
                            680 ;------------------------------------------------------------
                            681 ;Allocation info for local variables in function 'check_incoming'
                            682 ;------------------------------------------------------------
                            683 ;------------------------------------------------------------
                    00AF    684 	G$check_incoming$0$0 ==.
                    00AF    685 	C$main.c$119$1$1 ==.
                            686 ;	main.c:119: void check_incoming() {
                            687 ;	-----------------------------------------
                            688 ;	 function check_incoming
                            689 ;	-----------------------------------------
   0131                     690 _check_incoming:
                    00AF    691 	C$main.c$120$1$1 ==.
                            692 ;	main.c:120: if (BUTTON_ENTER == 1) {
   0131 30 90 06            693 	jnb	_P1_0,00105$
                    00B2    694 	C$main.c$122$2$2 ==.
                            695 ;	main.c:122: if (free_slots > 0) {    
   0134 E5 08               696 	mov	a,_free_slots
   0136 60 02               697 	jz	00105$
                    00B6    698 	C$main.c$123$3$3 ==.
                            699 ;	main.c:123: free_slots--;
   0138 15 08               700 	dec	_free_slots
   013A                     701 00105$:
                    00B8    702 	C$main.c$126$1$1 ==.
                    00B8    703 	XG$check_incoming$0$0 ==.
   013A 22                  704 	ret
                            705 ;------------------------------------------------------------
                            706 ;Allocation info for local variables in function 'main'
                            707 ;------------------------------------------------------------
                            708 ;------------------------------------------------------------
                    00B9    709 	G$main$0$0 ==.
                    00B9    710 	C$main.c$129$1$1 ==.
                            711 ;	main.c:129: void main (void) {
                            712 ;	-----------------------------------------
                            713 ;	 function main
                            714 ;	-----------------------------------------
   013B                     715 _main:
                    00B9    716 	C$main.c$130$1$1 ==.
                            717 ;	main.c:130: init(); // Initialize
   013B 12 00 82            718 	lcall	_init
                    00BC    719 	C$main.c$133$1$1 ==.
                            720 ;	main.c:133: while(1) {
   013E                     721 00102$:
                    00BC    722 	C$main.c$134$2$2 ==.
                            723 ;	main.c:134: display(112); // test OK if 100
   013E 90 00 70            724 	mov	dptr,#0x0070
   0141 12 00 D1            725 	lcall	_display
                    00C2    726 	C$main.c$150$1$1 ==.
                            727 ;	main.c:150: display(free_slots); // Output the number of free slots
                    00C2    728 	C$main.c$152$1$1 ==.
                    00C2    729 	XG$main$0$0 ==.
   0144 80 F8               730 	sjmp	00102$
                            731 	.area CSEG    (CODE)
                            732 	.area CONST   (CODE)
                            733 	.area XINIT   (CODE)
                            734 	.area CABS    (ABS,CODE)
