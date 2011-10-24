                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Mon Oct 24 11:40:45 2011
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
                             16 	.globl _write_segment
                             17 	.globl _init
                             18 	.globl _CY
                             19 	.globl _AC
                             20 	.globl _F0
                             21 	.globl _RS1
                             22 	.globl _RS0
                             23 	.globl _OV
                             24 	.globl _F1
                             25 	.globl _P
                             26 	.globl _PS
                             27 	.globl _PT1
                             28 	.globl _PX1
                             29 	.globl _PT0
                             30 	.globl _PX0
                             31 	.globl _RD
                             32 	.globl _WR
                             33 	.globl _T1
                             34 	.globl _T0
                             35 	.globl _INT1
                             36 	.globl _INT0
                             37 	.globl _TXD
                             38 	.globl _RXD
                             39 	.globl _P3_7
                             40 	.globl _P3_6
                             41 	.globl _P3_5
                             42 	.globl _P3_4
                             43 	.globl _P3_3
                             44 	.globl _P3_2
                             45 	.globl _P3_1
                             46 	.globl _P3_0
                             47 	.globl _EA
                             48 	.globl _ES
                             49 	.globl _ET1
                             50 	.globl _EX1
                             51 	.globl _ET0
                             52 	.globl _EX0
                             53 	.globl _P2_7
                             54 	.globl _P2_6
                             55 	.globl _P2_5
                             56 	.globl _P2_4
                             57 	.globl _P2_3
                             58 	.globl _P2_2
                             59 	.globl _P2_1
                             60 	.globl _P2_0
                             61 	.globl _SM0
                             62 	.globl _SM1
                             63 	.globl _SM2
                             64 	.globl _REN
                             65 	.globl _TB8
                             66 	.globl _RB8
                             67 	.globl _TI
                             68 	.globl _RI
                             69 	.globl _P1_7
                             70 	.globl _P1_6
                             71 	.globl _P1_5
                             72 	.globl _P1_4
                             73 	.globl _P1_3
                             74 	.globl _P1_2
                             75 	.globl _P1_1
                             76 	.globl _P1_0
                             77 	.globl _TF1
                             78 	.globl _TR1
                             79 	.globl _TF0
                             80 	.globl _TR0
                             81 	.globl _IE1
                             82 	.globl _IT1
                             83 	.globl _IE0
                             84 	.globl _IT0
                             85 	.globl _P0_7
                             86 	.globl _P0_6
                             87 	.globl _P0_5
                             88 	.globl _P0_4
                             89 	.globl _P0_3
                             90 	.globl _P0_2
                             91 	.globl _P0_1
                             92 	.globl _P0_0
                             93 	.globl _B
                             94 	.globl _ACC
                             95 	.globl _PSW
                             96 	.globl _IP
                             97 	.globl _P3
                             98 	.globl _IE
                             99 	.globl _P2
                            100 	.globl _SBUF
                            101 	.globl _SCON
                            102 	.globl _P1
                            103 	.globl _TH1
                            104 	.globl _TH0
                            105 	.globl _TL1
                            106 	.globl _TL0
                            107 	.globl _TMOD
                            108 	.globl _TCON
                            109 	.globl _PCON
                            110 	.globl _DPH
                            111 	.globl _DPL
                            112 	.globl _SP
                            113 	.globl _P0
                            114 	.globl _write_segment_PARM_2
                            115 	.globl _cycle_duration
                            116 	.globl _cycle_delay
                            117 	.globl _NUMBERS
                            118 	.globl _MAX_SLOTS
                            119 	.globl _free_slots
                            120 ;--------------------------------------------------------
                            121 ; special function registers
                            122 ;--------------------------------------------------------
                            123 	.area RSEG    (DATA)
                    0080    124 G$P0$0$0 == 0x0080
                    0080    125 _P0	=	0x0080
                    0081    126 G$SP$0$0 == 0x0081
                    0081    127 _SP	=	0x0081
                    0082    128 G$DPL$0$0 == 0x0082
                    0082    129 _DPL	=	0x0082
                    0083    130 G$DPH$0$0 == 0x0083
                    0083    131 _DPH	=	0x0083
                    0087    132 G$PCON$0$0 == 0x0087
                    0087    133 _PCON	=	0x0087
                    0088    134 G$TCON$0$0 == 0x0088
                    0088    135 _TCON	=	0x0088
                    0089    136 G$TMOD$0$0 == 0x0089
                    0089    137 _TMOD	=	0x0089
                    008A    138 G$TL0$0$0 == 0x008a
                    008A    139 _TL0	=	0x008a
                    008B    140 G$TL1$0$0 == 0x008b
                    008B    141 _TL1	=	0x008b
                    008C    142 G$TH0$0$0 == 0x008c
                    008C    143 _TH0	=	0x008c
                    008D    144 G$TH1$0$0 == 0x008d
                    008D    145 _TH1	=	0x008d
                    0090    146 G$P1$0$0 == 0x0090
                    0090    147 _P1	=	0x0090
                    0098    148 G$SCON$0$0 == 0x0098
                    0098    149 _SCON	=	0x0098
                    0099    150 G$SBUF$0$0 == 0x0099
                    0099    151 _SBUF	=	0x0099
                    00A0    152 G$P2$0$0 == 0x00a0
                    00A0    153 _P2	=	0x00a0
                    00A8    154 G$IE$0$0 == 0x00a8
                    00A8    155 _IE	=	0x00a8
                    00B0    156 G$P3$0$0 == 0x00b0
                    00B0    157 _P3	=	0x00b0
                    00B8    158 G$IP$0$0 == 0x00b8
                    00B8    159 _IP	=	0x00b8
                    00D0    160 G$PSW$0$0 == 0x00d0
                    00D0    161 _PSW	=	0x00d0
                    00E0    162 G$ACC$0$0 == 0x00e0
                    00E0    163 _ACC	=	0x00e0
                    00F0    164 G$B$0$0 == 0x00f0
                    00F0    165 _B	=	0x00f0
                            166 ;--------------------------------------------------------
                            167 ; special function bits
                            168 ;--------------------------------------------------------
                            169 	.area RSEG    (DATA)
                    0080    170 G$P0_0$0$0 == 0x0080
                    0080    171 _P0_0	=	0x0080
                    0081    172 G$P0_1$0$0 == 0x0081
                    0081    173 _P0_1	=	0x0081
                    0082    174 G$P0_2$0$0 == 0x0082
                    0082    175 _P0_2	=	0x0082
                    0083    176 G$P0_3$0$0 == 0x0083
                    0083    177 _P0_3	=	0x0083
                    0084    178 G$P0_4$0$0 == 0x0084
                    0084    179 _P0_4	=	0x0084
                    0085    180 G$P0_5$0$0 == 0x0085
                    0085    181 _P0_5	=	0x0085
                    0086    182 G$P0_6$0$0 == 0x0086
                    0086    183 _P0_6	=	0x0086
                    0087    184 G$P0_7$0$0 == 0x0087
                    0087    185 _P0_7	=	0x0087
                    0088    186 G$IT0$0$0 == 0x0088
                    0088    187 _IT0	=	0x0088
                    0089    188 G$IE0$0$0 == 0x0089
                    0089    189 _IE0	=	0x0089
                    008A    190 G$IT1$0$0 == 0x008a
                    008A    191 _IT1	=	0x008a
                    008B    192 G$IE1$0$0 == 0x008b
                    008B    193 _IE1	=	0x008b
                    008C    194 G$TR0$0$0 == 0x008c
                    008C    195 _TR0	=	0x008c
                    008D    196 G$TF0$0$0 == 0x008d
                    008D    197 _TF0	=	0x008d
                    008E    198 G$TR1$0$0 == 0x008e
                    008E    199 _TR1	=	0x008e
                    008F    200 G$TF1$0$0 == 0x008f
                    008F    201 _TF1	=	0x008f
                    0090    202 G$P1_0$0$0 == 0x0090
                    0090    203 _P1_0	=	0x0090
                    0091    204 G$P1_1$0$0 == 0x0091
                    0091    205 _P1_1	=	0x0091
                    0092    206 G$P1_2$0$0 == 0x0092
                    0092    207 _P1_2	=	0x0092
                    0093    208 G$P1_3$0$0 == 0x0093
                    0093    209 _P1_3	=	0x0093
                    0094    210 G$P1_4$0$0 == 0x0094
                    0094    211 _P1_4	=	0x0094
                    0095    212 G$P1_5$0$0 == 0x0095
                    0095    213 _P1_5	=	0x0095
                    0096    214 G$P1_6$0$0 == 0x0096
                    0096    215 _P1_6	=	0x0096
                    0097    216 G$P1_7$0$0 == 0x0097
                    0097    217 _P1_7	=	0x0097
                    0098    218 G$RI$0$0 == 0x0098
                    0098    219 _RI	=	0x0098
                    0099    220 G$TI$0$0 == 0x0099
                    0099    221 _TI	=	0x0099
                    009A    222 G$RB8$0$0 == 0x009a
                    009A    223 _RB8	=	0x009a
                    009B    224 G$TB8$0$0 == 0x009b
                    009B    225 _TB8	=	0x009b
                    009C    226 G$REN$0$0 == 0x009c
                    009C    227 _REN	=	0x009c
                    009D    228 G$SM2$0$0 == 0x009d
                    009D    229 _SM2	=	0x009d
                    009E    230 G$SM1$0$0 == 0x009e
                    009E    231 _SM1	=	0x009e
                    009F    232 G$SM0$0$0 == 0x009f
                    009F    233 _SM0	=	0x009f
                    00A0    234 G$P2_0$0$0 == 0x00a0
                    00A0    235 _P2_0	=	0x00a0
                    00A1    236 G$P2_1$0$0 == 0x00a1
                    00A1    237 _P2_1	=	0x00a1
                    00A2    238 G$P2_2$0$0 == 0x00a2
                    00A2    239 _P2_2	=	0x00a2
                    00A3    240 G$P2_3$0$0 == 0x00a3
                    00A3    241 _P2_3	=	0x00a3
                    00A4    242 G$P2_4$0$0 == 0x00a4
                    00A4    243 _P2_4	=	0x00a4
                    00A5    244 G$P2_5$0$0 == 0x00a5
                    00A5    245 _P2_5	=	0x00a5
                    00A6    246 G$P2_6$0$0 == 0x00a6
                    00A6    247 _P2_6	=	0x00a6
                    00A7    248 G$P2_7$0$0 == 0x00a7
                    00A7    249 _P2_7	=	0x00a7
                    00A8    250 G$EX0$0$0 == 0x00a8
                    00A8    251 _EX0	=	0x00a8
                    00A9    252 G$ET0$0$0 == 0x00a9
                    00A9    253 _ET0	=	0x00a9
                    00AA    254 G$EX1$0$0 == 0x00aa
                    00AA    255 _EX1	=	0x00aa
                    00AB    256 G$ET1$0$0 == 0x00ab
                    00AB    257 _ET1	=	0x00ab
                    00AC    258 G$ES$0$0 == 0x00ac
                    00AC    259 _ES	=	0x00ac
                    00AF    260 G$EA$0$0 == 0x00af
                    00AF    261 _EA	=	0x00af
                    00B0    262 G$P3_0$0$0 == 0x00b0
                    00B0    263 _P3_0	=	0x00b0
                    00B1    264 G$P3_1$0$0 == 0x00b1
                    00B1    265 _P3_1	=	0x00b1
                    00B2    266 G$P3_2$0$0 == 0x00b2
                    00B2    267 _P3_2	=	0x00b2
                    00B3    268 G$P3_3$0$0 == 0x00b3
                    00B3    269 _P3_3	=	0x00b3
                    00B4    270 G$P3_4$0$0 == 0x00b4
                    00B4    271 _P3_4	=	0x00b4
                    00B5    272 G$P3_5$0$0 == 0x00b5
                    00B5    273 _P3_5	=	0x00b5
                    00B6    274 G$P3_6$0$0 == 0x00b6
                    00B6    275 _P3_6	=	0x00b6
                    00B7    276 G$P3_7$0$0 == 0x00b7
                    00B7    277 _P3_7	=	0x00b7
                    00B0    278 G$RXD$0$0 == 0x00b0
                    00B0    279 _RXD	=	0x00b0
                    00B1    280 G$TXD$0$0 == 0x00b1
                    00B1    281 _TXD	=	0x00b1
                    00B2    282 G$INT0$0$0 == 0x00b2
                    00B2    283 _INT0	=	0x00b2
                    00B3    284 G$INT1$0$0 == 0x00b3
                    00B3    285 _INT1	=	0x00b3
                    00B4    286 G$T0$0$0 == 0x00b4
                    00B4    287 _T0	=	0x00b4
                    00B5    288 G$T1$0$0 == 0x00b5
                    00B5    289 _T1	=	0x00b5
                    00B6    290 G$WR$0$0 == 0x00b6
                    00B6    291 _WR	=	0x00b6
                    00B7    292 G$RD$0$0 == 0x00b7
                    00B7    293 _RD	=	0x00b7
                    00B8    294 G$PX0$0$0 == 0x00b8
                    00B8    295 _PX0	=	0x00b8
                    00B9    296 G$PT0$0$0 == 0x00b9
                    00B9    297 _PT0	=	0x00b9
                    00BA    298 G$PX1$0$0 == 0x00ba
                    00BA    299 _PX1	=	0x00ba
                    00BB    300 G$PT1$0$0 == 0x00bb
                    00BB    301 _PT1	=	0x00bb
                    00BC    302 G$PS$0$0 == 0x00bc
                    00BC    303 _PS	=	0x00bc
                    00D0    304 G$P$0$0 == 0x00d0
                    00D0    305 _P	=	0x00d0
                    00D1    306 G$F1$0$0 == 0x00d1
                    00D1    307 _F1	=	0x00d1
                    00D2    308 G$OV$0$0 == 0x00d2
                    00D2    309 _OV	=	0x00d2
                    00D3    310 G$RS0$0$0 == 0x00d3
                    00D3    311 _RS0	=	0x00d3
                    00D4    312 G$RS1$0$0 == 0x00d4
                    00D4    313 _RS1	=	0x00d4
                    00D5    314 G$F0$0$0 == 0x00d5
                    00D5    315 _F0	=	0x00d5
                    00D6    316 G$AC$0$0 == 0x00d6
                    00D6    317 _AC	=	0x00d6
                    00D7    318 G$CY$0$0 == 0x00d7
                    00D7    319 _CY	=	0x00d7
                            320 ;--------------------------------------------------------
                            321 ; overlayable register banks
                            322 ;--------------------------------------------------------
                            323 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     324 	.ds 8
                            325 ;--------------------------------------------------------
                            326 ; internal ram data
                            327 ;--------------------------------------------------------
                            328 	.area DSEG    (DATA)
                    0000    329 G$free_slots$0$0==.
   0008                     330 _free_slots::
   0008                     331 	.ds 1
                    0001    332 G$MAX_SLOTS$0$0==.
   0009                     333 _MAX_SLOTS::
   0009                     334 	.ds 2
                    0003    335 G$NUMBERS$0$0==.
   000B                     336 _NUMBERS::
   000B                     337 	.ds 10
                    000D    338 G$cycle_delay$0$0==.
   0015                     339 _cycle_delay::
   0015                     340 	.ds 4
                    0011    341 G$cycle_duration$0$0==.
   0019                     342 _cycle_duration::
   0019                     343 	.ds 4
                    0015    344 Lwrite_segment$value$1$1==.
   001D                     345 _write_segment_PARM_2:
   001D                     346 	.ds 1
                            347 ;--------------------------------------------------------
                            348 ; overlayable items in internal ram 
                            349 ;--------------------------------------------------------
                            350 	.area OSEG    (OVR,DATA)
                            351 ;--------------------------------------------------------
                            352 ; Stack segment in internal ram 
                            353 ;--------------------------------------------------------
                            354 	.area	SSEG	(DATA)
   001E                     355 __start__stack:
   001E                     356 	.ds	1
                            357 
                            358 ;--------------------------------------------------------
                            359 ; indirectly addressable internal ram data
                            360 ;--------------------------------------------------------
                            361 	.area ISEG    (DATA)
                            362 ;--------------------------------------------------------
                            363 ; absolute internal ram data
                            364 ;--------------------------------------------------------
                            365 	.area IABS    (ABS,DATA)
                            366 	.area IABS    (ABS,DATA)
                            367 ;--------------------------------------------------------
                            368 ; bit data
                            369 ;--------------------------------------------------------
                            370 	.area BSEG    (BIT)
                            371 ;--------------------------------------------------------
                            372 ; paged external ram data
                            373 ;--------------------------------------------------------
                            374 	.area PSEG    (PAG,XDATA)
                            375 ;--------------------------------------------------------
                            376 ; external ram data
                            377 ;--------------------------------------------------------
                            378 	.area XSEG    (XDATA)
                            379 ;--------------------------------------------------------
                            380 ; absolute external ram data
                            381 ;--------------------------------------------------------
                            382 	.area XABS    (ABS,XDATA)
                            383 ;--------------------------------------------------------
                            384 ; external initialized ram data
                            385 ;--------------------------------------------------------
                            386 	.area XISEG   (XDATA)
                            387 	.area HOME    (CODE)
                            388 	.area GSINIT0 (CODE)
                            389 	.area GSINIT1 (CODE)
                            390 	.area GSINIT2 (CODE)
                            391 	.area GSINIT3 (CODE)
                            392 	.area GSINIT4 (CODE)
                            393 	.area GSINIT5 (CODE)
                            394 	.area GSINIT  (CODE)
                            395 	.area GSFINAL (CODE)
                            396 	.area CSEG    (CODE)
                            397 ;--------------------------------------------------------
                            398 ; interrupt vector 
                            399 ;--------------------------------------------------------
                            400 	.area HOME    (CODE)
   0000                     401 __interrupt_vect:
   0000 02 00 08            402 	ljmp	__sdcc_gsinit_startup
                            403 ;--------------------------------------------------------
                            404 ; global & static initialisations
                            405 ;--------------------------------------------------------
                            406 	.area HOME    (CODE)
                            407 	.area GSINIT  (CODE)
                            408 	.area GSFINAL (CODE)
                            409 	.area GSINIT  (CODE)
                            410 	.globl __sdcc_gsinit_startup
                            411 	.globl __sdcc_program_startup
                            412 	.globl __start__stack
                            413 	.globl __mcs51_genXINIT
                            414 	.globl __mcs51_genXRAMCLEAR
                            415 	.globl __mcs51_genRAMCLEAR
                    0000    416 	G$main$0$0 ==.
                    0000    417 	C$main.c$27$1$1 ==.
                            418 ;	main.c:27: unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0061 75 0B C0            419 	mov	_NUMBERS,#0xC0
   0064 75 0C F9            420 	mov	(_NUMBERS + 0x0001),#0xF9
   0067 75 0D A4            421 	mov	(_NUMBERS + 0x0002),#0xA4
   006A 75 0E B0            422 	mov	(_NUMBERS + 0x0003),#0xB0
   006D 75 0F 99            423 	mov	(_NUMBERS + 0x0004),#0x99
   0070 75 10 92            424 	mov	(_NUMBERS + 0x0005),#0x92
   0073 75 11 82            425 	mov	(_NUMBERS + 0x0006),#0x82
   0076 75 12 F0            426 	mov	(_NUMBERS + 0x0007),#0xF0
   0079 75 13 80            427 	mov	(_NUMBERS + 0x0008),#0x80
   007C 75 14 90            428 	mov	(_NUMBERS + 0x0009),#0x90
                            429 	.area GSFINAL (CODE)
   007F 02 00 03            430 	ljmp	__sdcc_program_startup
                            431 ;--------------------------------------------------------
                            432 ; Home
                            433 ;--------------------------------------------------------
                            434 	.area HOME    (CODE)
                            435 	.area HOME    (CODE)
   0003                     436 __sdcc_program_startup:
   0003 12 00 D6            437 	lcall	_main
                            438 ;	return from main will lock up
   0006 80 FE               439 	sjmp .
                            440 ;--------------------------------------------------------
                            441 ; code
                            442 ;--------------------------------------------------------
                            443 	.area CSEG    (CODE)
                            444 ;------------------------------------------------------------
                            445 ;Allocation info for local variables in function 'init'
                            446 ;------------------------------------------------------------
                            447 ;------------------------------------------------------------
                    0000    448 	G$init$0$0 ==.
                    0000    449 	C$main.c$35$0$0 ==.
                            450 ;	main.c:35: void init(void) {
                            451 ;	-----------------------------------------
                            452 ;	 function init
                            453 ;	-----------------------------------------
   0082                     454 _init:
                    0002    455 	ar2 = 0x02
                    0003    456 	ar3 = 0x03
                    0004    457 	ar4 = 0x04
                    0005    458 	ar5 = 0x05
                    0006    459 	ar6 = 0x06
                    0007    460 	ar7 = 0x07
                    0000    461 	ar0 = 0x00
                    0001    462 	ar1 = 0x01
                    0000    463 	C$main.c$36$1$1 ==.
                            464 ;	main.c:36: LED = NUMBERS[0]; // LED display is set to 0 when the system turns on, then changes to MAX slots
   0082 85 0B A0            465 	mov	_P2,_NUMBERS
                    0003    466 	C$main.c$37$1$1 ==.
                            467 ;	main.c:37: MAX_SLOTS = 10; // We have this many free slots, max
   0085 75 09 0A            468 	mov	_MAX_SLOTS,#0x0A
   0088 E4                  469 	clr	a
   0089 F5 0A               470 	mov	(_MAX_SLOTS + 1),a
                    0009    471 	C$main.c$39$1$1 ==.
                            472 ;	main.c:39: free_slots = MAX_SLOTS; // All slots are empty in the beginning
   008B 75 08 0A            473 	mov	_free_slots,#0x0A
                    000C    474 	C$main.c$41$1$1 ==.
                            475 ;	main.c:41: BUTTON_ENTER = 1; // Define as input
   008E D2 90               476 	setb	_P1_0
                    000E    477 	C$main.c$42$1$1 ==.
                            478 ;	main.c:42: BUTTON_EXIT = 1; // Define as input
   0090 D2 91               479 	setb	_P1_1
                    0010    480 	C$main.c$44$1$1 ==.
                            481 ;	main.c:44: cycle_duration = 10; // The artificial time delay is X cycles long
   0092 75 19 0A            482 	mov	_cycle_duration,#0x0A
   0095 E4                  483 	clr	a
   0096 F5 1A               484 	mov	(_cycle_duration + 1),a
   0098 F5 1B               485 	mov	(_cycle_duration + 2),a
   009A F5 1C               486 	mov	(_cycle_duration + 3),a
                    001A    487 	C$main.c$45$1$1 ==.
                    001A    488 	XG$init$0$0 ==.
   009C 22                  489 	ret
                            490 ;------------------------------------------------------------
                            491 ;Allocation info for local variables in function 'write_segment'
                            492 ;------------------------------------------------------------
                            493 ;value                     Allocated with name '_write_segment_PARM_2'
                            494 ;segment_number            Allocated to registers 
                            495 ;------------------------------------------------------------
                    001B    496 	G$write_segment$0$0 ==.
                    001B    497 	C$main.c$51$1$1 ==.
                            498 ;	main.c:51: void write_segment(unsigned char segment_number, unsigned char value) {
                            499 ;	-----------------------------------------
                            500 ;	 function write_segment
                            501 ;	-----------------------------------------
   009D                     502 _write_segment:
                    001B    503 	C$main.c$52$1$1 ==.
                            504 ;	main.c:52: return;
                    001B    505 	C$main.c$53$1$1 ==.
                    001B    506 	XG$write_segment$0$0 ==.
   009D 22                  507 	ret
                            508 ;------------------------------------------------------------
                            509 ;Allocation info for local variables in function 'display'
                            510 ;------------------------------------------------------------
                            511 ;value                     Allocated to registers 
                            512 ;------------------------------------------------------------
                    001C    513 	G$display$0$0 ==.
                    001C    514 	C$main.c$60$1$1 ==.
                            515 ;	main.c:60: void display(unsigned int value) {
                            516 ;	-----------------------------------------
                            517 ;	 function display
                            518 ;	-----------------------------------------
   009E                     519 _display:
                    001C    520 	C$main.c$66$1$1 ==.
                            521 ;	main.c:66: write_segment(2, 0);
   009E 75 1D 00            522 	mov	_write_segment_PARM_2,#0x00
   00A1 75 82 02            523 	mov	dpl,#0x02
   00A4 12 00 9D            524 	lcall	_write_segment
                    0025    525 	C$main.c$67$1$1 ==.
                            526 ;	main.c:67: write_segment(1, 0);
   00A7 75 1D 00            527 	mov	_write_segment_PARM_2,#0x00
   00AA 75 82 01            528 	mov	dpl,#0x01
   00AD 12 00 9D            529 	lcall	_write_segment
                    002E    530 	C$main.c$68$1$1 ==.
                            531 ;	main.c:68: write_segment(0, 0);
   00B0 75 1D 00            532 	mov	_write_segment_PARM_2,#0x00
   00B3 75 82 00            533 	mov	dpl,#0x00
                    0034    534 	C$main.c$69$1$1 ==.
                    0034    535 	XG$display$0$0 ==.
   00B6 02 00 9D            536 	ljmp	_write_segment
                            537 ;------------------------------------------------------------
                            538 ;Allocation info for local variables in function 'check_outgoing'
                            539 ;------------------------------------------------------------
                            540 ;------------------------------------------------------------
                    0037    541 	G$check_outgoing$0$0 ==.
                    0037    542 	C$main.c$75$1$1 ==.
                            543 ;	main.c:75: void check_outgoing(){
                            544 ;	-----------------------------------------
                            545 ;	 function check_outgoing
                            546 ;	-----------------------------------------
   00B9                     547 _check_outgoing:
                    0037    548 	C$main.c$77$1$1 ==.
                            549 ;	main.c:77: if (BUTTON_EXIT == 1) {
   00B9 30 91 0F            550 	jnb	_P1_1,00105$
                    003A    551 	C$main.c$80$2$2 ==.
                            552 ;	main.c:80: if (free_slots < MAX_SLOTS) {
   00BC AA 08               553 	mov	r2,_free_slots
   00BE 7B 00               554 	mov	r3,#0x00
   00C0 C3                  555 	clr	c
   00C1 EA                  556 	mov	a,r2
   00C2 95 09               557 	subb	a,_MAX_SLOTS
   00C4 EB                  558 	mov	a,r3
   00C5 95 0A               559 	subb	a,(_MAX_SLOTS + 1)
   00C7 50 02               560 	jnc	00105$
                    0047    561 	C$main.c$81$3$3 ==.
                            562 ;	main.c:81: free_slots++;
   00C9 05 08               563 	inc	_free_slots
   00CB                     564 00105$:
                    0049    565 	C$main.c$84$1$1 ==.
                    0049    566 	XG$check_outgoing$0$0 ==.
   00CB 22                  567 	ret
                            568 ;------------------------------------------------------------
                            569 ;Allocation info for local variables in function 'check_incoming'
                            570 ;------------------------------------------------------------
                            571 ;------------------------------------------------------------
                    004A    572 	G$check_incoming$0$0 ==.
                    004A    573 	C$main.c$89$1$1 ==.
                            574 ;	main.c:89: void check_incoming() {
                            575 ;	-----------------------------------------
                            576 ;	 function check_incoming
                            577 ;	-----------------------------------------
   00CC                     578 _check_incoming:
                    004A    579 	C$main.c$90$1$1 ==.
                            580 ;	main.c:90: if (BUTTON_ENTER == 1) {
   00CC 30 90 06            581 	jnb	_P1_0,00105$
                    004D    582 	C$main.c$92$2$2 ==.
                            583 ;	main.c:92: if (free_slots > 0) {    
   00CF E5 08               584 	mov	a,_free_slots
   00D1 60 02               585 	jz	00105$
                    0051    586 	C$main.c$93$3$3 ==.
                            587 ;	main.c:93: free_slots--;
   00D3 15 08               588 	dec	_free_slots
   00D5                     589 00105$:
                    0053    590 	C$main.c$96$1$1 ==.
                    0053    591 	XG$check_incoming$0$0 ==.
   00D5 22                  592 	ret
                            593 ;------------------------------------------------------------
                            594 ;Allocation info for local variables in function 'main'
                            595 ;------------------------------------------------------------
                            596 ;------------------------------------------------------------
                    0054    597 	G$main$0$0 ==.
                    0054    598 	C$main.c$99$1$1 ==.
                            599 ;	main.c:99: void main (void) {
                            600 ;	-----------------------------------------
                            601 ;	 function main
                            602 ;	-----------------------------------------
   00D6                     603 _main:
                    0054    604 	C$main.c$100$1$1 ==.
                            605 ;	main.c:100: init(); // Initialize
   00D6 12 00 82            606 	lcall	_init
                    0057    607 	C$main.c$102$1$1 ==.
                            608 ;	main.c:102: while (1) {
   00D9                     609 00102$:
                    0057    610 	C$main.c$104$2$2 ==.
                            611 ;	main.c:104: check_incoming(); // Car enters
   00D9 12 00 CC            612 	lcall	_check_incoming
                    005A    613 	C$main.c$106$2$2 ==.
                            614 ;	main.c:106: check_outgoing(); // Car leaves
   00DC 12 00 B9            615 	lcall	_check_outgoing
                    005D    616 	C$main.c$113$2$2 ==.
                            617 ;	main.c:113: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   00DF E4                  618 	clr	a
   00E0 F5 15               619 	mov	_cycle_delay,a
   00E2 F5 16               620 	mov	(_cycle_delay + 1),a
   00E4 F5 17               621 	mov	(_cycle_delay + 2),a
   00E6 F5 18               622 	mov	(_cycle_delay + 3),a
   00E8                     623 00104$:
   00E8 C3                  624 	clr	c
   00E9 E5 15               625 	mov	a,_cycle_delay
   00EB 95 19               626 	subb	a,_cycle_duration
   00ED E5 16               627 	mov	a,(_cycle_delay + 1)
   00EF 95 1A               628 	subb	a,(_cycle_duration + 1)
   00F1 E5 17               629 	mov	a,(_cycle_delay + 2)
   00F3 95 1B               630 	subb	a,(_cycle_duration + 2)
   00F5 E5 18               631 	mov	a,(_cycle_delay + 3)
   00F7 95 1C               632 	subb	a,(_cycle_duration + 3)
   00F9 50 14               633 	jnc	00107$
   00FB 05 15               634 	inc	_cycle_delay
   00FD E4                  635 	clr	a
   00FE B5 15 E7            636 	cjne	a,_cycle_delay,00104$
   0101 05 16               637 	inc	(_cycle_delay + 1)
   0103 B5 16 E2            638 	cjne	a,(_cycle_delay + 1),00104$
   0106 05 17               639 	inc	(_cycle_delay + 2)
   0108 B5 17 DD            640 	cjne	a,(_cycle_delay + 2),00104$
   010B 05 18               641 	inc	(_cycle_delay + 3)
   010D 80 D9               642 	sjmp	00104$
   010F                     643 00107$:
                    008D    644 	C$main.c$115$2$2 ==.
                            645 ;	main.c:115: display(free_slots); // Output the number of free slots
   010F AA 08               646 	mov	r2,_free_slots
   0111 7B 00               647 	mov	r3,#0x00
   0113 8A 82               648 	mov	dpl,r2
   0115 8B 83               649 	mov	dph,r3
   0117 12 00 9E            650 	lcall	_display
                    0098    651 	C$main.c$117$1$1 ==.
                    0098    652 	XG$main$0$0 ==.
   011A 80 BD               653 	sjmp	00102$
                            654 	.area CSEG    (CODE)
                            655 	.area CONST   (CODE)
                            656 	.area XINIT   (CODE)
                            657 	.area CABS    (ABS,CODE)
