                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Mon Oct 24 10:59:57 2011
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
                            117 	.globl _OUT
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
                    0003    335 G$OUT$0$0==.
   000B                     336 _OUT::
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
                            418 ;	main.c:27: unsigned char OUT [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0061 75 0B C0            419 	mov	_OUT,#0xC0
   0064 75 0C F9            420 	mov	(_OUT + 0x0001),#0xF9
   0067 75 0D A4            421 	mov	(_OUT + 0x0002),#0xA4
   006A 75 0E B0            422 	mov	(_OUT + 0x0003),#0xB0
   006D 75 0F 99            423 	mov	(_OUT + 0x0004),#0x99
   0070 75 10 92            424 	mov	(_OUT + 0x0005),#0x92
   0073 75 11 82            425 	mov	(_OUT + 0x0006),#0x82
   0076 75 12 F0            426 	mov	(_OUT + 0x0007),#0xF0
   0079 75 13 80            427 	mov	(_OUT + 0x0008),#0x80
   007C 75 14 90            428 	mov	(_OUT + 0x0009),#0x90
                            429 	.area GSFINAL (CODE)
   007F 02 00 03            430 	ljmp	__sdcc_program_startup
                            431 ;--------------------------------------------------------
                            432 ; Home
                            433 ;--------------------------------------------------------
                            434 	.area HOME    (CODE)
                            435 	.area HOME    (CODE)
   0003                     436 __sdcc_program_startup:
   0003 12 00 CD            437 	lcall	_main
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
                    0000    449 	C$main.c$34$0$0 ==.
                            450 ;	main.c:34: void init(void) {
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
                    0000    463 	C$main.c$35$1$1 ==.
                            464 ;	main.c:35: LED = 0xc0; // LED display is set to 0 when the system turns on, then changes to MAX slots
   0082 75 A0 C0            465 	mov	_P2,#0xC0
                    0003    466 	C$main.c$36$1$1 ==.
                            467 ;	main.c:36: MAX_SLOTS = 10; // We have this many free slots, max
   0085 75 09 0A            468 	mov	_MAX_SLOTS,#0x0A
   0088 E4                  469 	clr	a
   0089 F5 0A               470 	mov	(_MAX_SLOTS + 1),a
                    0009    471 	C$main.c$38$1$1 ==.
                            472 ;	main.c:38: free_slots = MAX_SLOTS; // All slots are empty in the beginning
   008B 75 08 0A            473 	mov	_free_slots,#0x0A
                    000C    474 	C$main.c$40$1$1 ==.
                            475 ;	main.c:40: BUTTON_ENTER = 1; // Define as input
   008E D2 90               476 	setb	_P1_0
                    000E    477 	C$main.c$41$1$1 ==.
                            478 ;	main.c:41: BUTTON_EXIT = 1; // Define as input
   0090 D2 91               479 	setb	_P1_1
                    0010    480 	C$main.c$43$1$1 ==.
                            481 ;	main.c:43: cycle_duration = 10; // The artificial time delay is X cycles long
   0092 75 19 0A            482 	mov	_cycle_duration,#0x0A
   0095 E4                  483 	clr	a
   0096 F5 1A               484 	mov	(_cycle_duration + 1),a
   0098 F5 1B               485 	mov	(_cycle_duration + 2),a
   009A F5 1C               486 	mov	(_cycle_duration + 3),a
                    001A    487 	C$main.c$44$1$1 ==.
                    001A    488 	XG$init$0$0 ==.
   009C 22                  489 	ret
                            490 ;------------------------------------------------------------
                            491 ;Allocation info for local variables in function 'write_segment'
                            492 ;------------------------------------------------------------
                            493 ;value                     Allocated with name '_write_segment_PARM_2'
                            494 ;segment_number            Allocated to registers 
                            495 ;------------------------------------------------------------
                    001B    496 	G$write_segment$0$0 ==.
                    001B    497 	C$main.c$49$1$1 ==.
                            498 ;	main.c:49: void write_segment(unsigned char segment_number, unsigned char value) {
                            499 ;	-----------------------------------------
                            500 ;	 function write_segment
                            501 ;	-----------------------------------------
   009D                     502 _write_segment:
                    001B    503 	C$main.c$51$1$1 ==.
                            504 ;	main.c:51: }
                    001B    505 	C$main.c$51$1$1 ==.
                    001B    506 	XG$write_segment$0$0 ==.
   009D 22                  507 	ret
                            508 ;------------------------------------------------------------
                            509 ;Allocation info for local variables in function 'display'
                            510 ;------------------------------------------------------------
                            511 ;value                     Allocated to registers 
                            512 ;------------------------------------------------------------
                    001C    513 	G$display$0$0 ==.
                    001C    514 	C$main.c$58$1$1 ==.
                            515 ;	main.c:58: void display(unsigned int value) {
                            516 ;	-----------------------------------------
                            517 ;	 function display
                            518 ;	-----------------------------------------
   009E                     519 _display:
                    001C    520 	C$main.c$62$1$1 ==.
                            521 ;	main.c:62: write_segment(1, 0);
   009E 75 1D 00            522 	mov	_write_segment_PARM_2,#0x00
   00A1 75 82 01            523 	mov	dpl,#0x01
   00A4 12 00 9D            524 	lcall	_write_segment
                    0025    525 	C$main.c$63$1$1 ==.
                            526 ;	main.c:63: write_segment(0, 0);
   00A7 75 1D 00            527 	mov	_write_segment_PARM_2,#0x00
   00AA 75 82 00            528 	mov	dpl,#0x00
                    002B    529 	C$main.c$64$1$1 ==.
                    002B    530 	XG$display$0$0 ==.
   00AD 02 00 9D            531 	ljmp	_write_segment
                            532 ;------------------------------------------------------------
                            533 ;Allocation info for local variables in function 'check_outgoing'
                            534 ;------------------------------------------------------------
                            535 ;------------------------------------------------------------
                    002E    536 	G$check_outgoing$0$0 ==.
                    002E    537 	C$main.c$70$1$1 ==.
                            538 ;	main.c:70: void check_outgoing(){
                            539 ;	-----------------------------------------
                            540 ;	 function check_outgoing
                            541 ;	-----------------------------------------
   00B0                     542 _check_outgoing:
                    002E    543 	C$main.c$72$1$1 ==.
                            544 ;	main.c:72: if (BUTTON_EXIT == 1) {
   00B0 30 91 0F            545 	jnb	_P1_1,00105$
                    0031    546 	C$main.c$75$2$2 ==.
                            547 ;	main.c:75: if (free_slots < MAX_SLOTS) {
   00B3 AA 08               548 	mov	r2,_free_slots
   00B5 7B 00               549 	mov	r3,#0x00
   00B7 C3                  550 	clr	c
   00B8 EA                  551 	mov	a,r2
   00B9 95 09               552 	subb	a,_MAX_SLOTS
   00BB EB                  553 	mov	a,r3
   00BC 95 0A               554 	subb	a,(_MAX_SLOTS + 1)
   00BE 50 02               555 	jnc	00105$
                    003E    556 	C$main.c$76$3$3 ==.
                            557 ;	main.c:76: free_slots++;
   00C0 05 08               558 	inc	_free_slots
   00C2                     559 00105$:
                    0040    560 	C$main.c$79$1$1 ==.
                    0040    561 	XG$check_outgoing$0$0 ==.
   00C2 22                  562 	ret
                            563 ;------------------------------------------------------------
                            564 ;Allocation info for local variables in function 'check_incoming'
                            565 ;------------------------------------------------------------
                            566 ;------------------------------------------------------------
                    0041    567 	G$check_incoming$0$0 ==.
                    0041    568 	C$main.c$84$1$1 ==.
                            569 ;	main.c:84: void check_incoming() {
                            570 ;	-----------------------------------------
                            571 ;	 function check_incoming
                            572 ;	-----------------------------------------
   00C3                     573 _check_incoming:
                    0041    574 	C$main.c$85$1$1 ==.
                            575 ;	main.c:85: if (BUTTON_ENTER == 1) {
   00C3 30 90 06            576 	jnb	_P1_0,00105$
                    0044    577 	C$main.c$87$2$2 ==.
                            578 ;	main.c:87: if (free_slots > 0) {    
   00C6 E5 08               579 	mov	a,_free_slots
   00C8 60 02               580 	jz	00105$
                    0048    581 	C$main.c$88$3$3 ==.
                            582 ;	main.c:88: free_slots--;
   00CA 15 08               583 	dec	_free_slots
   00CC                     584 00105$:
                    004A    585 	C$main.c$91$1$1 ==.
                    004A    586 	XG$check_incoming$0$0 ==.
   00CC 22                  587 	ret
                            588 ;------------------------------------------------------------
                            589 ;Allocation info for local variables in function 'main'
                            590 ;------------------------------------------------------------
                            591 ;------------------------------------------------------------
                    004B    592 	G$main$0$0 ==.
                    004B    593 	C$main.c$94$1$1 ==.
                            594 ;	main.c:94: void main (void) {
                            595 ;	-----------------------------------------
                            596 ;	 function main
                            597 ;	-----------------------------------------
   00CD                     598 _main:
                    004B    599 	C$main.c$95$1$1 ==.
                            600 ;	main.c:95: init(); // Initialize
   00CD 12 00 82            601 	lcall	_init
                    004E    602 	C$main.c$97$1$1 ==.
                            603 ;	main.c:97: while (1) {
   00D0                     604 00102$:
                    004E    605 	C$main.c$99$2$2 ==.
                            606 ;	main.c:99: check_incoming(); // Car enters
   00D0 12 00 C3            607 	lcall	_check_incoming
                    0051    608 	C$main.c$101$2$2 ==.
                            609 ;	main.c:101: check_outgoing(); // Car leaves
   00D3 12 00 B0            610 	lcall	_check_outgoing
                    0054    611 	C$main.c$108$2$2 ==.
                            612 ;	main.c:108: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   00D6 E4                  613 	clr	a
   00D7 F5 15               614 	mov	_cycle_delay,a
   00D9 F5 16               615 	mov	(_cycle_delay + 1),a
   00DB F5 17               616 	mov	(_cycle_delay + 2),a
   00DD F5 18               617 	mov	(_cycle_delay + 3),a
   00DF                     618 00104$:
   00DF C3                  619 	clr	c
   00E0 E5 15               620 	mov	a,_cycle_delay
   00E2 95 19               621 	subb	a,_cycle_duration
   00E4 E5 16               622 	mov	a,(_cycle_delay + 1)
   00E6 95 1A               623 	subb	a,(_cycle_duration + 1)
   00E8 E5 17               624 	mov	a,(_cycle_delay + 2)
   00EA 95 1B               625 	subb	a,(_cycle_duration + 2)
   00EC E5 18               626 	mov	a,(_cycle_delay + 3)
   00EE 95 1C               627 	subb	a,(_cycle_duration + 3)
   00F0 50 14               628 	jnc	00107$
   00F2 05 15               629 	inc	_cycle_delay
   00F4 E4                  630 	clr	a
   00F5 B5 15 E7            631 	cjne	a,_cycle_delay,00104$
   00F8 05 16               632 	inc	(_cycle_delay + 1)
   00FA B5 16 E2            633 	cjne	a,(_cycle_delay + 1),00104$
   00FD 05 17               634 	inc	(_cycle_delay + 2)
   00FF B5 17 DD            635 	cjne	a,(_cycle_delay + 2),00104$
   0102 05 18               636 	inc	(_cycle_delay + 3)
   0104 80 D9               637 	sjmp	00104$
   0106                     638 00107$:
                    0084    639 	C$main.c$110$2$2 ==.
                            640 ;	main.c:110: display(free_slots); // Output the number of free slots
   0106 AA 08               641 	mov	r2,_free_slots
   0108 7B 00               642 	mov	r3,#0x00
   010A 8A 82               643 	mov	dpl,r2
   010C 8B 83               644 	mov	dph,r3
   010E 12 00 9E            645 	lcall	_display
                    008F    646 	C$main.c$112$1$1 ==.
                    008F    647 	XG$main$0$0 ==.
   0111 80 BD               648 	sjmp	00102$
                            649 	.area CSEG    (CODE)
                            650 	.area CONST   (CODE)
                            651 	.area XINIT   (CODE)
                            652 	.area CABS    (ABS,CODE)
