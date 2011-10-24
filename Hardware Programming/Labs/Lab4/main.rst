                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Mon Oct 24 12:35:32 2011
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
   0003 12 01 05            437 	lcall	_main
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
                            464 ;	main.c:36: MAX_SLOTS = 10; // We have this many free slots, max
   0082 75 09 0A            465 	mov	_MAX_SLOTS,#0x0A
   0085 E4                  466 	clr	a
   0086 F5 0A               467 	mov	(_MAX_SLOTS + 1),a
                    0006    468 	C$main.c$38$1$1 ==.
                            469 ;	main.c:38: free_slots = MAX_SLOTS; // All slots are empty in the beginning
   0088 75 08 0A            470 	mov	_free_slots,#0x0A
                    0009    471 	C$main.c$40$1$1 ==.
                            472 ;	main.c:40: BUTTON_ENTER = 1; // Define as input
   008B D2 90               473 	setb	_P1_0
                    000B    474 	C$main.c$41$1$1 ==.
                            475 ;	main.c:41: BUTTON_EXIT = 1; // Define as input
   008D D2 91               476 	setb	_P1_1
                    000D    477 	C$main.c$43$1$1 ==.
                            478 ;	main.c:43: cycle_duration = 1; // The artificial time delay is X cycles long
   008F 75 19 01            479 	mov	_cycle_duration,#0x01
   0092 E4                  480 	clr	a
   0093 F5 1A               481 	mov	(_cycle_duration + 1),a
   0095 F5 1B               482 	mov	(_cycle_duration + 2),a
   0097 F5 1C               483 	mov	(_cycle_duration + 3),a
                    0017    484 	C$main.c$44$1$1 ==.
                    0017    485 	XG$init$0$0 ==.
   0099 22                  486 	ret
                            487 ;------------------------------------------------------------
                            488 ;Allocation info for local variables in function 'write_segment'
                            489 ;------------------------------------------------------------
                            490 ;value                     Allocated with name '_write_segment_PARM_2'
                            491 ;segment_number            Allocated to registers r2 
                            492 ;------------------------------------------------------------
                    0018    493 	G$write_segment$0$0 ==.
                    0018    494 	C$main.c$52$1$1 ==.
                            495 ;	main.c:52: void write_segment(unsigned char segment_number, unsigned char value) {
                            496 ;	-----------------------------------------
                            497 ;	 function write_segment
                            498 ;	-----------------------------------------
   009A                     499 _write_segment:
   009A AA 82               500 	mov	r2,dpl
                    001A    501 	C$main.c$54$1$1 ==.
                            502 ;	main.c:54: P3_0 = 1; // Reset P3 to avoid flickers
   009C D2 B0               503 	setb	_P3_0
                    001C    504 	C$main.c$55$1$1 ==.
                            505 ;	main.c:55: P3_1 = 1;
   009E D2 B1               506 	setb	_P3_1
                    001E    507 	C$main.c$56$1$1 ==.
                            508 ;	main.c:56: P3_2 = 1;
   00A0 D2 B2               509 	setb	_P3_2
                    0020    510 	C$main.c$59$1$1 ==.
                            511 ;	main.c:59: P2 = NUMBERS[value];
   00A2 E5 1D               512 	mov	a,_write_segment_PARM_2
   00A4 24 0B               513 	add	a,#_NUMBERS
   00A6 F8                  514 	mov	r0,a
   00A7 86 A0               515 	mov	_P2,@r0
                    0027    516 	C$main.c$62$1$1 ==.
                            517 ;	main.c:62: switch (segment_number) {
   00A9 BA 00 02            518 	cjne	r2,#0x00,00110$
   00AC 80 0A               519 	sjmp	00101$
   00AE                     520 00110$:
   00AE BA 01 02            521 	cjne	r2,#0x01,00111$
   00B1 80 0C               522 	sjmp	00102$
   00B3                     523 00111$:
                    0031    524 	C$main.c$63$2$2 ==.
                            525 ;	main.c:63: case 0:
   00B3 BA 02 16            526 	cjne	r2,#0x02,00105$
   00B6 80 0E               527 	sjmp	00103$
   00B8                     528 00101$:
                    0036    529 	C$main.c$64$2$2 ==.
                            530 ;	main.c:64: P3_1 = 1;
   00B8 D2 B1               531 	setb	_P3_1
                    0038    532 	C$main.c$65$2$2 ==.
                            533 ;	main.c:65: P3_2 = 1;
   00BA D2 B2               534 	setb	_P3_2
                    003A    535 	C$main.c$66$2$2 ==.
                            536 ;	main.c:66: P3_0 = 0;
   00BC C2 B0               537 	clr	_P3_0
                    003C    538 	C$main.c$67$2$2 ==.
                            539 ;	main.c:67: break;
                    003C    540 	C$main.c$68$2$2 ==.
                            541 ;	main.c:68: case 1:
   00BE 22                  542 	ret
   00BF                     543 00102$:
                    003D    544 	C$main.c$69$2$2 ==.
                            545 ;	main.c:69: P3_0 = 1;
   00BF D2 B0               546 	setb	_P3_0
                    003F    547 	C$main.c$70$2$2 ==.
                            548 ;	main.c:70: P3_2 = 1;
   00C1 D2 B2               549 	setb	_P3_2
                    0041    550 	C$main.c$71$2$2 ==.
                            551 ;	main.c:71: P3_1 = 0;
   00C3 C2 B1               552 	clr	_P3_1
                    0043    553 	C$main.c$72$2$2 ==.
                            554 ;	main.c:72: break;
                    0043    555 	C$main.c$73$2$2 ==.
                            556 ;	main.c:73: case 2:
   00C5 22                  557 	ret
   00C6                     558 00103$:
                    0044    559 	C$main.c$74$2$2 ==.
                            560 ;	main.c:74: P3_3 = 1;
   00C6 D2 B3               561 	setb	_P3_3
                    0046    562 	C$main.c$75$2$2 ==.
                            563 ;	main.c:75: P3_1 = 1;
   00C8 D2 B1               564 	setb	_P3_1
                    0048    565 	C$main.c$76$2$2 ==.
                            566 ;	main.c:76: P3_2 = 0;
   00CA C2 B2               567 	clr	_P3_2
                    004A    568 	C$main.c$78$1$1 ==.
                            569 ;	main.c:78: }
   00CC                     570 00105$:
                    004A    571 	C$main.c$79$1$1 ==.
                    004A    572 	XG$write_segment$0$0 ==.
   00CC 22                  573 	ret
                            574 ;------------------------------------------------------------
                            575 ;Allocation info for local variables in function 'display'
                            576 ;------------------------------------------------------------
                            577 ;value                     Allocated to registers 
                            578 ;------------------------------------------------------------
                    004B    579 	G$display$0$0 ==.
                    004B    580 	C$main.c$86$1$1 ==.
                            581 ;	main.c:86: void display(unsigned int value) {
                            582 ;	-----------------------------------------
                            583 ;	 function display
                            584 ;	-----------------------------------------
   00CD                     585 _display:
                    004B    586 	C$main.c$95$1$1 ==.
                            587 ;	main.c:95: write_segment(2, 1);
   00CD 75 1D 01            588 	mov	_write_segment_PARM_2,#0x01
   00D0 75 82 02            589 	mov	dpl,#0x02
   00D3 12 00 9A            590 	lcall	_write_segment
                    0054    591 	C$main.c$96$1$1 ==.
                            592 ;	main.c:96: write_segment(1, 2);
   00D6 75 1D 02            593 	mov	_write_segment_PARM_2,#0x02
   00D9 75 82 01            594 	mov	dpl,#0x01
   00DC 12 00 9A            595 	lcall	_write_segment
                    005D    596 	C$main.c$97$1$1 ==.
                            597 ;	main.c:97: write_segment(0, 3);
   00DF 75 1D 03            598 	mov	_write_segment_PARM_2,#0x03
   00E2 75 82 00            599 	mov	dpl,#0x00
                    0063    600 	C$main.c$98$1$1 ==.
                    0063    601 	XG$display$0$0 ==.
   00E5 02 00 9A            602 	ljmp	_write_segment
                            603 ;------------------------------------------------------------
                            604 ;Allocation info for local variables in function 'check_outgoing'
                            605 ;------------------------------------------------------------
                            606 ;------------------------------------------------------------
                    0066    607 	G$check_outgoing$0$0 ==.
                    0066    608 	C$main.c$104$1$1 ==.
                            609 ;	main.c:104: void check_outgoing(){
                            610 ;	-----------------------------------------
                            611 ;	 function check_outgoing
                            612 ;	-----------------------------------------
   00E8                     613 _check_outgoing:
                    0066    614 	C$main.c$106$1$1 ==.
                            615 ;	main.c:106: if (BUTTON_EXIT == 1) {
   00E8 30 91 0F            616 	jnb	_P1_1,00105$
                    0069    617 	C$main.c$109$2$2 ==.
                            618 ;	main.c:109: if (free_slots < MAX_SLOTS) {
   00EB AA 08               619 	mov	r2,_free_slots
   00ED 7B 00               620 	mov	r3,#0x00
   00EF C3                  621 	clr	c
   00F0 EA                  622 	mov	a,r2
   00F1 95 09               623 	subb	a,_MAX_SLOTS
   00F3 EB                  624 	mov	a,r3
   00F4 95 0A               625 	subb	a,(_MAX_SLOTS + 1)
   00F6 50 02               626 	jnc	00105$
                    0076    627 	C$main.c$110$3$3 ==.
                            628 ;	main.c:110: free_slots++;
   00F8 05 08               629 	inc	_free_slots
   00FA                     630 00105$:
                    0078    631 	C$main.c$113$1$1 ==.
                    0078    632 	XG$check_outgoing$0$0 ==.
   00FA 22                  633 	ret
                            634 ;------------------------------------------------------------
                            635 ;Allocation info for local variables in function 'check_incoming'
                            636 ;------------------------------------------------------------
                            637 ;------------------------------------------------------------
                    0079    638 	G$check_incoming$0$0 ==.
                    0079    639 	C$main.c$118$1$1 ==.
                            640 ;	main.c:118: void check_incoming() {
                            641 ;	-----------------------------------------
                            642 ;	 function check_incoming
                            643 ;	-----------------------------------------
   00FB                     644 _check_incoming:
                    0079    645 	C$main.c$119$1$1 ==.
                            646 ;	main.c:119: if (BUTTON_ENTER == 1) {
   00FB 30 90 06            647 	jnb	_P1_0,00105$
                    007C    648 	C$main.c$121$2$2 ==.
                            649 ;	main.c:121: if (free_slots > 0) {    
   00FE E5 08               650 	mov	a,_free_slots
   0100 60 02               651 	jz	00105$
                    0080    652 	C$main.c$122$3$3 ==.
                            653 ;	main.c:122: free_slots--;
   0102 15 08               654 	dec	_free_slots
   0104                     655 00105$:
                    0082    656 	C$main.c$125$1$1 ==.
                    0082    657 	XG$check_incoming$0$0 ==.
   0104 22                  658 	ret
                            659 ;------------------------------------------------------------
                            660 ;Allocation info for local variables in function 'main'
                            661 ;------------------------------------------------------------
                            662 ;------------------------------------------------------------
                    0083    663 	G$main$0$0 ==.
                    0083    664 	C$main.c$128$1$1 ==.
                            665 ;	main.c:128: void main (void) {
                            666 ;	-----------------------------------------
                            667 ;	 function main
                            668 ;	-----------------------------------------
   0105                     669 _main:
                    0083    670 	C$main.c$129$1$1 ==.
                            671 ;	main.c:129: init(); // Initialize
   0105 12 00 82            672 	lcall	_init
                    0086    673 	C$main.c$132$1$1 ==.
                            674 ;	main.c:132: while(1) {
   0108                     675 00102$:
                    0086    676 	C$main.c$133$2$2 ==.
                            677 ;	main.c:133: display(100); // test OK if 100
   0108 90 00 64            678 	mov	dptr,#0x0064
   010B 12 00 CD            679 	lcall	_display
                    008C    680 	C$main.c$149$1$1 ==.
                            681 ;	main.c:149: display(free_slots); // Output the number of free slots
                    008C    682 	C$main.c$151$1$1 ==.
                    008C    683 	XG$main$0$0 ==.
   010E 80 F8               684 	sjmp	00102$
                            685 	.area CSEG    (CODE)
                            686 	.area CONST   (CODE)
                            687 	.area XINIT   (CODE)
                            688 	.area CABS    (ABS,CODE)
