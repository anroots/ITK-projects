                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Mon Oct 24 10:40:39 2011
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
                             16 	.globl _init
                             17 	.globl _CY
                             18 	.globl _AC
                             19 	.globl _F0
                             20 	.globl _RS1
                             21 	.globl _RS0
                             22 	.globl _OV
                             23 	.globl _F1
                             24 	.globl _P
                             25 	.globl _PS
                             26 	.globl _PT1
                             27 	.globl _PX1
                             28 	.globl _PT0
                             29 	.globl _PX0
                             30 	.globl _RD
                             31 	.globl _WR
                             32 	.globl _T1
                             33 	.globl _T0
                             34 	.globl _INT1
                             35 	.globl _INT0
                             36 	.globl _TXD
                             37 	.globl _RXD
                             38 	.globl _P3_7
                             39 	.globl _P3_6
                             40 	.globl _P3_5
                             41 	.globl _P3_4
                             42 	.globl _P3_3
                             43 	.globl _P3_2
                             44 	.globl _P3_1
                             45 	.globl _P3_0
                             46 	.globl _EA
                             47 	.globl _ES
                             48 	.globl _ET1
                             49 	.globl _EX1
                             50 	.globl _ET0
                             51 	.globl _EX0
                             52 	.globl _P2_7
                             53 	.globl _P2_6
                             54 	.globl _P2_5
                             55 	.globl _P2_4
                             56 	.globl _P2_3
                             57 	.globl _P2_2
                             58 	.globl _P2_1
                             59 	.globl _P2_0
                             60 	.globl _SM0
                             61 	.globl _SM1
                             62 	.globl _SM2
                             63 	.globl _REN
                             64 	.globl _TB8
                             65 	.globl _RB8
                             66 	.globl _TI
                             67 	.globl _RI
                             68 	.globl _P1_7
                             69 	.globl _P1_6
                             70 	.globl _P1_5
                             71 	.globl _P1_4
                             72 	.globl _P1_3
                             73 	.globl _P1_2
                             74 	.globl _P1_1
                             75 	.globl _P1_0
                             76 	.globl _TF1
                             77 	.globl _TR1
                             78 	.globl _TF0
                             79 	.globl _TR0
                             80 	.globl _IE1
                             81 	.globl _IT1
                             82 	.globl _IE0
                             83 	.globl _IT0
                             84 	.globl _P0_7
                             85 	.globl _P0_6
                             86 	.globl _P0_5
                             87 	.globl _P0_4
                             88 	.globl _P0_3
                             89 	.globl _P0_2
                             90 	.globl _P0_1
                             91 	.globl _P0_0
                             92 	.globl _B
                             93 	.globl _ACC
                             94 	.globl _PSW
                             95 	.globl _IP
                             96 	.globl _P3
                             97 	.globl _IE
                             98 	.globl _P2
                             99 	.globl _SBUF
                            100 	.globl _SCON
                            101 	.globl _P1
                            102 	.globl _TH1
                            103 	.globl _TH0
                            104 	.globl _TL1
                            105 	.globl _TL0
                            106 	.globl _TMOD
                            107 	.globl _TCON
                            108 	.globl _PCON
                            109 	.globl _DPH
                            110 	.globl _DPL
                            111 	.globl _SP
                            112 	.globl _P0
                            113 	.globl _cycle_duration
                            114 	.globl _cycle_delay
                            115 	.globl _OUT
                            116 	.globl _MAX_SLOTS
                            117 	.globl _free_slots
                            118 ;--------------------------------------------------------
                            119 ; special function registers
                            120 ;--------------------------------------------------------
                            121 	.area RSEG    (DATA)
                    0080    122 G$P0$0$0 == 0x0080
                    0080    123 _P0	=	0x0080
                    0081    124 G$SP$0$0 == 0x0081
                    0081    125 _SP	=	0x0081
                    0082    126 G$DPL$0$0 == 0x0082
                    0082    127 _DPL	=	0x0082
                    0083    128 G$DPH$0$0 == 0x0083
                    0083    129 _DPH	=	0x0083
                    0087    130 G$PCON$0$0 == 0x0087
                    0087    131 _PCON	=	0x0087
                    0088    132 G$TCON$0$0 == 0x0088
                    0088    133 _TCON	=	0x0088
                    0089    134 G$TMOD$0$0 == 0x0089
                    0089    135 _TMOD	=	0x0089
                    008A    136 G$TL0$0$0 == 0x008a
                    008A    137 _TL0	=	0x008a
                    008B    138 G$TL1$0$0 == 0x008b
                    008B    139 _TL1	=	0x008b
                    008C    140 G$TH0$0$0 == 0x008c
                    008C    141 _TH0	=	0x008c
                    008D    142 G$TH1$0$0 == 0x008d
                    008D    143 _TH1	=	0x008d
                    0090    144 G$P1$0$0 == 0x0090
                    0090    145 _P1	=	0x0090
                    0098    146 G$SCON$0$0 == 0x0098
                    0098    147 _SCON	=	0x0098
                    0099    148 G$SBUF$0$0 == 0x0099
                    0099    149 _SBUF	=	0x0099
                    00A0    150 G$P2$0$0 == 0x00a0
                    00A0    151 _P2	=	0x00a0
                    00A8    152 G$IE$0$0 == 0x00a8
                    00A8    153 _IE	=	0x00a8
                    00B0    154 G$P3$0$0 == 0x00b0
                    00B0    155 _P3	=	0x00b0
                    00B8    156 G$IP$0$0 == 0x00b8
                    00B8    157 _IP	=	0x00b8
                    00D0    158 G$PSW$0$0 == 0x00d0
                    00D0    159 _PSW	=	0x00d0
                    00E0    160 G$ACC$0$0 == 0x00e0
                    00E0    161 _ACC	=	0x00e0
                    00F0    162 G$B$0$0 == 0x00f0
                    00F0    163 _B	=	0x00f0
                            164 ;--------------------------------------------------------
                            165 ; special function bits
                            166 ;--------------------------------------------------------
                            167 	.area RSEG    (DATA)
                    0080    168 G$P0_0$0$0 == 0x0080
                    0080    169 _P0_0	=	0x0080
                    0081    170 G$P0_1$0$0 == 0x0081
                    0081    171 _P0_1	=	0x0081
                    0082    172 G$P0_2$0$0 == 0x0082
                    0082    173 _P0_2	=	0x0082
                    0083    174 G$P0_3$0$0 == 0x0083
                    0083    175 _P0_3	=	0x0083
                    0084    176 G$P0_4$0$0 == 0x0084
                    0084    177 _P0_4	=	0x0084
                    0085    178 G$P0_5$0$0 == 0x0085
                    0085    179 _P0_5	=	0x0085
                    0086    180 G$P0_6$0$0 == 0x0086
                    0086    181 _P0_6	=	0x0086
                    0087    182 G$P0_7$0$0 == 0x0087
                    0087    183 _P0_7	=	0x0087
                    0088    184 G$IT0$0$0 == 0x0088
                    0088    185 _IT0	=	0x0088
                    0089    186 G$IE0$0$0 == 0x0089
                    0089    187 _IE0	=	0x0089
                    008A    188 G$IT1$0$0 == 0x008a
                    008A    189 _IT1	=	0x008a
                    008B    190 G$IE1$0$0 == 0x008b
                    008B    191 _IE1	=	0x008b
                    008C    192 G$TR0$0$0 == 0x008c
                    008C    193 _TR0	=	0x008c
                    008D    194 G$TF0$0$0 == 0x008d
                    008D    195 _TF0	=	0x008d
                    008E    196 G$TR1$0$0 == 0x008e
                    008E    197 _TR1	=	0x008e
                    008F    198 G$TF1$0$0 == 0x008f
                    008F    199 _TF1	=	0x008f
                    0090    200 G$P1_0$0$0 == 0x0090
                    0090    201 _P1_0	=	0x0090
                    0091    202 G$P1_1$0$0 == 0x0091
                    0091    203 _P1_1	=	0x0091
                    0092    204 G$P1_2$0$0 == 0x0092
                    0092    205 _P1_2	=	0x0092
                    0093    206 G$P1_3$0$0 == 0x0093
                    0093    207 _P1_3	=	0x0093
                    0094    208 G$P1_4$0$0 == 0x0094
                    0094    209 _P1_4	=	0x0094
                    0095    210 G$P1_5$0$0 == 0x0095
                    0095    211 _P1_5	=	0x0095
                    0096    212 G$P1_6$0$0 == 0x0096
                    0096    213 _P1_6	=	0x0096
                    0097    214 G$P1_7$0$0 == 0x0097
                    0097    215 _P1_7	=	0x0097
                    0098    216 G$RI$0$0 == 0x0098
                    0098    217 _RI	=	0x0098
                    0099    218 G$TI$0$0 == 0x0099
                    0099    219 _TI	=	0x0099
                    009A    220 G$RB8$0$0 == 0x009a
                    009A    221 _RB8	=	0x009a
                    009B    222 G$TB8$0$0 == 0x009b
                    009B    223 _TB8	=	0x009b
                    009C    224 G$REN$0$0 == 0x009c
                    009C    225 _REN	=	0x009c
                    009D    226 G$SM2$0$0 == 0x009d
                    009D    227 _SM2	=	0x009d
                    009E    228 G$SM1$0$0 == 0x009e
                    009E    229 _SM1	=	0x009e
                    009F    230 G$SM0$0$0 == 0x009f
                    009F    231 _SM0	=	0x009f
                    00A0    232 G$P2_0$0$0 == 0x00a0
                    00A0    233 _P2_0	=	0x00a0
                    00A1    234 G$P2_1$0$0 == 0x00a1
                    00A1    235 _P2_1	=	0x00a1
                    00A2    236 G$P2_2$0$0 == 0x00a2
                    00A2    237 _P2_2	=	0x00a2
                    00A3    238 G$P2_3$0$0 == 0x00a3
                    00A3    239 _P2_3	=	0x00a3
                    00A4    240 G$P2_4$0$0 == 0x00a4
                    00A4    241 _P2_4	=	0x00a4
                    00A5    242 G$P2_5$0$0 == 0x00a5
                    00A5    243 _P2_5	=	0x00a5
                    00A6    244 G$P2_6$0$0 == 0x00a6
                    00A6    245 _P2_6	=	0x00a6
                    00A7    246 G$P2_7$0$0 == 0x00a7
                    00A7    247 _P2_7	=	0x00a7
                    00A8    248 G$EX0$0$0 == 0x00a8
                    00A8    249 _EX0	=	0x00a8
                    00A9    250 G$ET0$0$0 == 0x00a9
                    00A9    251 _ET0	=	0x00a9
                    00AA    252 G$EX1$0$0 == 0x00aa
                    00AA    253 _EX1	=	0x00aa
                    00AB    254 G$ET1$0$0 == 0x00ab
                    00AB    255 _ET1	=	0x00ab
                    00AC    256 G$ES$0$0 == 0x00ac
                    00AC    257 _ES	=	0x00ac
                    00AF    258 G$EA$0$0 == 0x00af
                    00AF    259 _EA	=	0x00af
                    00B0    260 G$P3_0$0$0 == 0x00b0
                    00B0    261 _P3_0	=	0x00b0
                    00B1    262 G$P3_1$0$0 == 0x00b1
                    00B1    263 _P3_1	=	0x00b1
                    00B2    264 G$P3_2$0$0 == 0x00b2
                    00B2    265 _P3_2	=	0x00b2
                    00B3    266 G$P3_3$0$0 == 0x00b3
                    00B3    267 _P3_3	=	0x00b3
                    00B4    268 G$P3_4$0$0 == 0x00b4
                    00B4    269 _P3_4	=	0x00b4
                    00B5    270 G$P3_5$0$0 == 0x00b5
                    00B5    271 _P3_5	=	0x00b5
                    00B6    272 G$P3_6$0$0 == 0x00b6
                    00B6    273 _P3_6	=	0x00b6
                    00B7    274 G$P3_7$0$0 == 0x00b7
                    00B7    275 _P3_7	=	0x00b7
                    00B0    276 G$RXD$0$0 == 0x00b0
                    00B0    277 _RXD	=	0x00b0
                    00B1    278 G$TXD$0$0 == 0x00b1
                    00B1    279 _TXD	=	0x00b1
                    00B2    280 G$INT0$0$0 == 0x00b2
                    00B2    281 _INT0	=	0x00b2
                    00B3    282 G$INT1$0$0 == 0x00b3
                    00B3    283 _INT1	=	0x00b3
                    00B4    284 G$T0$0$0 == 0x00b4
                    00B4    285 _T0	=	0x00b4
                    00B5    286 G$T1$0$0 == 0x00b5
                    00B5    287 _T1	=	0x00b5
                    00B6    288 G$WR$0$0 == 0x00b6
                    00B6    289 _WR	=	0x00b6
                    00B7    290 G$RD$0$0 == 0x00b7
                    00B7    291 _RD	=	0x00b7
                    00B8    292 G$PX0$0$0 == 0x00b8
                    00B8    293 _PX0	=	0x00b8
                    00B9    294 G$PT0$0$0 == 0x00b9
                    00B9    295 _PT0	=	0x00b9
                    00BA    296 G$PX1$0$0 == 0x00ba
                    00BA    297 _PX1	=	0x00ba
                    00BB    298 G$PT1$0$0 == 0x00bb
                    00BB    299 _PT1	=	0x00bb
                    00BC    300 G$PS$0$0 == 0x00bc
                    00BC    301 _PS	=	0x00bc
                    00D0    302 G$P$0$0 == 0x00d0
                    00D0    303 _P	=	0x00d0
                    00D1    304 G$F1$0$0 == 0x00d1
                    00D1    305 _F1	=	0x00d1
                    00D2    306 G$OV$0$0 == 0x00d2
                    00D2    307 _OV	=	0x00d2
                    00D3    308 G$RS0$0$0 == 0x00d3
                    00D3    309 _RS0	=	0x00d3
                    00D4    310 G$RS1$0$0 == 0x00d4
                    00D4    311 _RS1	=	0x00d4
                    00D5    312 G$F0$0$0 == 0x00d5
                    00D5    313 _F0	=	0x00d5
                    00D6    314 G$AC$0$0 == 0x00d6
                    00D6    315 _AC	=	0x00d6
                    00D7    316 G$CY$0$0 == 0x00d7
                    00D7    317 _CY	=	0x00d7
                            318 ;--------------------------------------------------------
                            319 ; overlayable register banks
                            320 ;--------------------------------------------------------
                            321 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     322 	.ds 8
                            323 ;--------------------------------------------------------
                            324 ; internal ram data
                            325 ;--------------------------------------------------------
                            326 	.area DSEG    (DATA)
                    0000    327 G$free_slots$0$0==.
   0008                     328 _free_slots::
   0008                     329 	.ds 1
                    0001    330 G$MAX_SLOTS$0$0==.
   0009                     331 _MAX_SLOTS::
   0009                     332 	.ds 2
                    0003    333 G$OUT$0$0==.
   000B                     334 _OUT::
   000B                     335 	.ds 10
                    000D    336 G$cycle_delay$0$0==.
   0015                     337 _cycle_delay::
   0015                     338 	.ds 4
                    0011    339 G$cycle_duration$0$0==.
   0019                     340 _cycle_duration::
   0019                     341 	.ds 4
                            342 ;--------------------------------------------------------
                            343 ; overlayable items in internal ram 
                            344 ;--------------------------------------------------------
                            345 	.area OSEG    (OVR,DATA)
                            346 ;--------------------------------------------------------
                            347 ; Stack segment in internal ram 
                            348 ;--------------------------------------------------------
                            349 	.area	SSEG	(DATA)
   001D                     350 __start__stack:
   001D                     351 	.ds	1
                            352 
                            353 ;--------------------------------------------------------
                            354 ; indirectly addressable internal ram data
                            355 ;--------------------------------------------------------
                            356 	.area ISEG    (DATA)
                            357 ;--------------------------------------------------------
                            358 ; absolute internal ram data
                            359 ;--------------------------------------------------------
                            360 	.area IABS    (ABS,DATA)
                            361 	.area IABS    (ABS,DATA)
                            362 ;--------------------------------------------------------
                            363 ; bit data
                            364 ;--------------------------------------------------------
                            365 	.area BSEG    (BIT)
                            366 ;--------------------------------------------------------
                            367 ; paged external ram data
                            368 ;--------------------------------------------------------
                            369 	.area PSEG    (PAG,XDATA)
                            370 ;--------------------------------------------------------
                            371 ; external ram data
                            372 ;--------------------------------------------------------
                            373 	.area XSEG    (XDATA)
                            374 ;--------------------------------------------------------
                            375 ; absolute external ram data
                            376 ;--------------------------------------------------------
                            377 	.area XABS    (ABS,XDATA)
                            378 ;--------------------------------------------------------
                            379 ; external initialized ram data
                            380 ;--------------------------------------------------------
                            381 	.area XISEG   (XDATA)
                            382 	.area HOME    (CODE)
                            383 	.area GSINIT0 (CODE)
                            384 	.area GSINIT1 (CODE)
                            385 	.area GSINIT2 (CODE)
                            386 	.area GSINIT3 (CODE)
                            387 	.area GSINIT4 (CODE)
                            388 	.area GSINIT5 (CODE)
                            389 	.area GSINIT  (CODE)
                            390 	.area GSFINAL (CODE)
                            391 	.area CSEG    (CODE)
                            392 ;--------------------------------------------------------
                            393 ; interrupt vector 
                            394 ;--------------------------------------------------------
                            395 	.area HOME    (CODE)
   0000                     396 __interrupt_vect:
   0000 02 00 08            397 	ljmp	__sdcc_gsinit_startup
                            398 ;--------------------------------------------------------
                            399 ; global & static initialisations
                            400 ;--------------------------------------------------------
                            401 	.area HOME    (CODE)
                            402 	.area GSINIT  (CODE)
                            403 	.area GSFINAL (CODE)
                            404 	.area GSINIT  (CODE)
                            405 	.globl __sdcc_gsinit_startup
                            406 	.globl __sdcc_program_startup
                            407 	.globl __start__stack
                            408 	.globl __mcs51_genXINIT
                            409 	.globl __mcs51_genXRAMCLEAR
                            410 	.globl __mcs51_genRAMCLEAR
                    0000    411 	G$main$0$0 ==.
                    0000    412 	C$main.c$27$1$1 ==.
                            413 ;	main.c:27: unsigned char OUT [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0061 75 0B C0            414 	mov	_OUT,#0xC0
   0064 75 0C F9            415 	mov	(_OUT + 0x0001),#0xF9
   0067 75 0D A4            416 	mov	(_OUT + 0x0002),#0xA4
   006A 75 0E B0            417 	mov	(_OUT + 0x0003),#0xB0
   006D 75 0F 99            418 	mov	(_OUT + 0x0004),#0x99
   0070 75 10 92            419 	mov	(_OUT + 0x0005),#0x92
   0073 75 11 82            420 	mov	(_OUT + 0x0006),#0x82
   0076 75 12 F0            421 	mov	(_OUT + 0x0007),#0xF0
   0079 75 13 80            422 	mov	(_OUT + 0x0008),#0x80
   007C 75 14 90            423 	mov	(_OUT + 0x0009),#0x90
                            424 	.area GSFINAL (CODE)
   007F 02 00 03            425 	ljmp	__sdcc_program_startup
                            426 ;--------------------------------------------------------
                            427 ; Home
                            428 ;--------------------------------------------------------
                            429 	.area HOME    (CODE)
                            430 	.area HOME    (CODE)
   0003                     431 __sdcc_program_startup:
   0003 12 00 C2            432 	lcall	_main
                            433 ;	return from main will lock up
   0006 80 FE               434 	sjmp .
                            435 ;--------------------------------------------------------
                            436 ; code
                            437 ;--------------------------------------------------------
                            438 	.area CSEG    (CODE)
                            439 ;------------------------------------------------------------
                            440 ;Allocation info for local variables in function 'init'
                            441 ;------------------------------------------------------------
                            442 ;------------------------------------------------------------
                    0000    443 	G$init$0$0 ==.
                    0000    444 	C$main.c$34$0$0 ==.
                            445 ;	main.c:34: void init(void) {
                            446 ;	-----------------------------------------
                            447 ;	 function init
                            448 ;	-----------------------------------------
   0082                     449 _init:
                    0002    450 	ar2 = 0x02
                    0003    451 	ar3 = 0x03
                    0004    452 	ar4 = 0x04
                    0005    453 	ar5 = 0x05
                    0006    454 	ar6 = 0x06
                    0007    455 	ar7 = 0x07
                    0000    456 	ar0 = 0x00
                    0001    457 	ar1 = 0x01
                    0000    458 	C$main.c$35$1$1 ==.
                            459 ;	main.c:35: LED = 0xc0; // LED display is set to 0 when the system turns on, then changes to MAX slots
   0082 75 A0 C0            460 	mov	_P2,#0xC0
                    0003    461 	C$main.c$36$1$1 ==.
                            462 ;	main.c:36: MAX_SLOTS = 10; // We have this many free slots, max
   0085 75 09 0A            463 	mov	_MAX_SLOTS,#0x0A
   0088 E4                  464 	clr	a
   0089 F5 0A               465 	mov	(_MAX_SLOTS + 1),a
                    0009    466 	C$main.c$38$1$1 ==.
                            467 ;	main.c:38: free_slots = MAX_SLOTS; // All slots are empty in the beginning
   008B 75 08 0A            468 	mov	_free_slots,#0x0A
                    000C    469 	C$main.c$40$1$1 ==.
                            470 ;	main.c:40: BUTTON_ENTER = 1; // Define as input
   008E D2 91               471 	setb	_P1_1
                    000E    472 	C$main.c$41$1$1 ==.
                            473 ;	main.c:41: BUTTON_EXIT = 1; // Define as input
   0090 D2 92               474 	setb	_P1_2
                    0010    475 	C$main.c$43$1$1 ==.
                            476 ;	main.c:43: cycle_duration = 10; // The artificial time delay is X cycles long
   0092 75 19 0A            477 	mov	_cycle_duration,#0x0A
   0095 E4                  478 	clr	a
   0096 F5 1A               479 	mov	(_cycle_duration + 1),a
   0098 F5 1B               480 	mov	(_cycle_duration + 2),a
   009A F5 1C               481 	mov	(_cycle_duration + 3),a
                    001A    482 	C$main.c$44$1$1 ==.
                    001A    483 	XG$init$0$0 ==.
   009C 22                  484 	ret
                            485 ;------------------------------------------------------------
                            486 ;Allocation info for local variables in function 'display'
                            487 ;------------------------------------------------------------
                            488 ;value                     Allocated to registers 
                            489 ;------------------------------------------------------------
                    001B    490 	G$display$0$0 ==.
                    001B    491 	C$main.c$49$1$1 ==.
                            492 ;	main.c:49: void display(unsigned int value) {
                            493 ;	-----------------------------------------
                            494 ;	 function display
                            495 ;	-----------------------------------------
   009D                     496 _display:
                    001B    497 	C$main.c$50$1$1 ==.
                            498 ;	main.c:50: LED = OUT[free_slots];
   009D E5 08               499 	mov	a,_free_slots
   009F 24 0B               500 	add	a,#_OUT
   00A1 F8                  501 	mov	r0,a
   00A2 86 A0               502 	mov	_P2,@r0
                    0022    503 	C$main.c$51$1$1 ==.
                    0022    504 	XG$display$0$0 ==.
   00A4 22                  505 	ret
                            506 ;------------------------------------------------------------
                            507 ;Allocation info for local variables in function 'check_outgoing'
                            508 ;------------------------------------------------------------
                            509 ;------------------------------------------------------------
                    0023    510 	G$check_outgoing$0$0 ==.
                    0023    511 	C$main.c$56$1$1 ==.
                            512 ;	main.c:56: void check_outgoing(){
                            513 ;	-----------------------------------------
                            514 ;	 function check_outgoing
                            515 ;	-----------------------------------------
   00A5                     516 _check_outgoing:
                    0023    517 	C$main.c$58$1$1 ==.
                            518 ;	main.c:58: if (BUTTON_EXIT == 1) {
   00A5 30 92 0F            519 	jnb	_P1_2,00105$
                    0026    520 	C$main.c$61$2$2 ==.
                            521 ;	main.c:61: if (free_slots < MAX_SLOTS) {
   00A8 AA 08               522 	mov	r2,_free_slots
   00AA 7B 00               523 	mov	r3,#0x00
   00AC C3                  524 	clr	c
   00AD EA                  525 	mov	a,r2
   00AE 95 09               526 	subb	a,_MAX_SLOTS
   00B0 EB                  527 	mov	a,r3
   00B1 95 0A               528 	subb	a,(_MAX_SLOTS + 1)
   00B3 50 02               529 	jnc	00105$
                    0033    530 	C$main.c$62$3$3 ==.
                            531 ;	main.c:62: free_slots++;
   00B5 05 08               532 	inc	_free_slots
   00B7                     533 00105$:
                    0035    534 	C$main.c$65$1$1 ==.
                    0035    535 	XG$check_outgoing$0$0 ==.
   00B7 22                  536 	ret
                            537 ;------------------------------------------------------------
                            538 ;Allocation info for local variables in function 'check_incoming'
                            539 ;------------------------------------------------------------
                            540 ;------------------------------------------------------------
                    0036    541 	G$check_incoming$0$0 ==.
                    0036    542 	C$main.c$70$1$1 ==.
                            543 ;	main.c:70: void check_incoming() {
                            544 ;	-----------------------------------------
                            545 ;	 function check_incoming
                            546 ;	-----------------------------------------
   00B8                     547 _check_incoming:
                    0036    548 	C$main.c$71$1$1 ==.
                            549 ;	main.c:71: if (BUTTON_ENTER == 1) {
   00B8 30 91 06            550 	jnb	_P1_1,00105$
                    0039    551 	C$main.c$73$2$2 ==.
                            552 ;	main.c:73: if (free_slots > 0) {    
   00BB E5 08               553 	mov	a,_free_slots
   00BD 60 02               554 	jz	00105$
                    003D    555 	C$main.c$74$3$3 ==.
                            556 ;	main.c:74: free_slots--;
   00BF 15 08               557 	dec	_free_slots
   00C1                     558 00105$:
                    003F    559 	C$main.c$77$1$1 ==.
                    003F    560 	XG$check_incoming$0$0 ==.
   00C1 22                  561 	ret
                            562 ;------------------------------------------------------------
                            563 ;Allocation info for local variables in function 'main'
                            564 ;------------------------------------------------------------
                            565 ;------------------------------------------------------------
                    0040    566 	G$main$0$0 ==.
                    0040    567 	C$main.c$80$1$1 ==.
                            568 ;	main.c:80: void main (void) {
                            569 ;	-----------------------------------------
                            570 ;	 function main
                            571 ;	-----------------------------------------
   00C2                     572 _main:
                    0040    573 	C$main.c$82$1$1 ==.
                            574 ;	main.c:82: init();
   00C2 12 00 82            575 	lcall	_init
                    0043    576 	C$main.c$84$1$1 ==.
                            577 ;	main.c:84: while (1) {
   00C5                     578 00102$:
                    0043    579 	C$main.c$86$2$2 ==.
                            580 ;	main.c:86: check_incoming(); // Car enters
   00C5 12 00 B8            581 	lcall	_check_incoming
                    0046    582 	C$main.c$88$2$2 ==.
                            583 ;	main.c:88: check_outgoing(); // Car leaves
   00C8 12 00 A5            584 	lcall	_check_outgoing
                    0049    585 	C$main.c$95$2$2 ==.
                            586 ;	main.c:95: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   00CB E4                  587 	clr	a
   00CC F5 15               588 	mov	_cycle_delay,a
   00CE F5 16               589 	mov	(_cycle_delay + 1),a
   00D0 F5 17               590 	mov	(_cycle_delay + 2),a
   00D2 F5 18               591 	mov	(_cycle_delay + 3),a
   00D4                     592 00104$:
   00D4 C3                  593 	clr	c
   00D5 E5 15               594 	mov	a,_cycle_delay
   00D7 95 19               595 	subb	a,_cycle_duration
   00D9 E5 16               596 	mov	a,(_cycle_delay + 1)
   00DB 95 1A               597 	subb	a,(_cycle_duration + 1)
   00DD E5 17               598 	mov	a,(_cycle_delay + 2)
   00DF 95 1B               599 	subb	a,(_cycle_duration + 2)
   00E1 E5 18               600 	mov	a,(_cycle_delay + 3)
   00E3 95 1C               601 	subb	a,(_cycle_duration + 3)
   00E5 50 14               602 	jnc	00107$
   00E7 05 15               603 	inc	_cycle_delay
   00E9 E4                  604 	clr	a
   00EA B5 15 E7            605 	cjne	a,_cycle_delay,00104$
   00ED 05 16               606 	inc	(_cycle_delay + 1)
   00EF B5 16 E2            607 	cjne	a,(_cycle_delay + 1),00104$
   00F2 05 17               608 	inc	(_cycle_delay + 2)
   00F4 B5 17 DD            609 	cjne	a,(_cycle_delay + 2),00104$
   00F7 05 18               610 	inc	(_cycle_delay + 3)
   00F9 80 D9               611 	sjmp	00104$
   00FB                     612 00107$:
                    0079    613 	C$main.c$97$2$2 ==.
                            614 ;	main.c:97: display(free_slots); // Output the number of free slots
   00FB AA 08               615 	mov	r2,_free_slots
   00FD 7B 00               616 	mov	r3,#0x00
   00FF 8A 82               617 	mov	dpl,r2
   0101 8B 83               618 	mov	dph,r3
   0103 12 00 9D            619 	lcall	_display
                    0084    620 	C$main.c$99$1$1 ==.
                    0084    621 	XG$main$0$0 ==.
   0106 80 BD               622 	sjmp	00102$
                            623 	.area CSEG    (CODE)
                            624 	.area CONST   (CODE)
                            625 	.area XINIT   (CODE)
                            626 	.area CABS    (ABS,CODE)
