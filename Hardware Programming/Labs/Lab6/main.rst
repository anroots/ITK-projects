                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Sat Nov 26 01:57:16 2011
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _convert_seconds
                             14 	.globl _process_key_press
                             15 	.globl _stop
                             16 	.globl _start
                             17 	.globl _set_time
                             18 	.globl _init
                             19 	.globl _check_start_press
                             20 	.globl _bounce_delay
                             21 	.globl _display
                             22 	.globl _get_digit
                             23 	.globl _write_segment
                             24 	.globl _reset_display
                             25 	.globl _GetNumberFromMatrixKeypad
                             26 	.globl _CY
                             27 	.globl _AC
                             28 	.globl _F0
                             29 	.globl _RS1
                             30 	.globl _RS0
                             31 	.globl _OV
                             32 	.globl _F1
                             33 	.globl _P
                             34 	.globl _PS
                             35 	.globl _PT1
                             36 	.globl _PX1
                             37 	.globl _PT0
                             38 	.globl _PX0
                             39 	.globl _RD
                             40 	.globl _WR
                             41 	.globl _T1
                             42 	.globl _T0
                             43 	.globl _INT1
                             44 	.globl _INT0
                             45 	.globl _TXD
                             46 	.globl _RXD
                             47 	.globl _P3_7
                             48 	.globl _P3_6
                             49 	.globl _P3_5
                             50 	.globl _P3_4
                             51 	.globl _P3_3
                             52 	.globl _P3_2
                             53 	.globl _P3_1
                             54 	.globl _P3_0
                             55 	.globl _EA
                             56 	.globl _ES
                             57 	.globl _ET1
                             58 	.globl _EX1
                             59 	.globl _ET0
                             60 	.globl _EX0
                             61 	.globl _P2_7
                             62 	.globl _P2_6
                             63 	.globl _P2_5
                             64 	.globl _P2_4
                             65 	.globl _P2_3
                             66 	.globl _P2_2
                             67 	.globl _P2_1
                             68 	.globl _P2_0
                             69 	.globl _SM0
                             70 	.globl _SM1
                             71 	.globl _SM2
                             72 	.globl _REN
                             73 	.globl _TB8
                             74 	.globl _RB8
                             75 	.globl _TI
                             76 	.globl _RI
                             77 	.globl _P1_7
                             78 	.globl _P1_6
                             79 	.globl _P1_5
                             80 	.globl _P1_4
                             81 	.globl _P1_3
                             82 	.globl _P1_2
                             83 	.globl _P1_1
                             84 	.globl _P1_0
                             85 	.globl _TF1
                             86 	.globl _TR1
                             87 	.globl _TF0
                             88 	.globl _TR0
                             89 	.globl _IE1
                             90 	.globl _IT1
                             91 	.globl _IE0
                             92 	.globl _IT0
                             93 	.globl _P0_7
                             94 	.globl _P0_6
                             95 	.globl _P0_5
                             96 	.globl _P0_4
                             97 	.globl _P0_3
                             98 	.globl _P0_2
                             99 	.globl _P0_1
                            100 	.globl _P0_0
                            101 	.globl _B
                            102 	.globl _ACC
                            103 	.globl _PSW
                            104 	.globl _IP
                            105 	.globl _P3
                            106 	.globl _IE
                            107 	.globl _P2
                            108 	.globl _SBUF
                            109 	.globl _SCON
                            110 	.globl _P1
                            111 	.globl _TH1
                            112 	.globl _TH0
                            113 	.globl _TL1
                            114 	.globl _TL0
                            115 	.globl _TMOD
                            116 	.globl _TCON
                            117 	.globl _PCON
                            118 	.globl _DPH
                            119 	.globl _DPL
                            120 	.globl _SP
                            121 	.globl _P0
                            122 	.globl _get_digit_PARM_2
                            123 	.globl _write_segment_PARM_2
                            124 	.globl _seconds_left
                            125 	.globl _BUTTON_ERROR
                            126 	.globl _BUTTON_START
                            127 	.globl _cycle_duration
                            128 	.globl _cycle_delay
                            129 	.globl _NUMBERS
                            130 	.globl _NUMBER_OF_DIGITS
                            131 	.globl _RUNNING
                            132 ;--------------------------------------------------------
                            133 ; special function registers
                            134 ;--------------------------------------------------------
                            135 	.area RSEG    (DATA)
                    0080    136 G$P0$0$0 == 0x0080
                    0080    137 _P0	=	0x0080
                    0081    138 G$SP$0$0 == 0x0081
                    0081    139 _SP	=	0x0081
                    0082    140 G$DPL$0$0 == 0x0082
                    0082    141 _DPL	=	0x0082
                    0083    142 G$DPH$0$0 == 0x0083
                    0083    143 _DPH	=	0x0083
                    0087    144 G$PCON$0$0 == 0x0087
                    0087    145 _PCON	=	0x0087
                    0088    146 G$TCON$0$0 == 0x0088
                    0088    147 _TCON	=	0x0088
                    0089    148 G$TMOD$0$0 == 0x0089
                    0089    149 _TMOD	=	0x0089
                    008A    150 G$TL0$0$0 == 0x008a
                    008A    151 _TL0	=	0x008a
                    008B    152 G$TL1$0$0 == 0x008b
                    008B    153 _TL1	=	0x008b
                    008C    154 G$TH0$0$0 == 0x008c
                    008C    155 _TH0	=	0x008c
                    008D    156 G$TH1$0$0 == 0x008d
                    008D    157 _TH1	=	0x008d
                    0090    158 G$P1$0$0 == 0x0090
                    0090    159 _P1	=	0x0090
                    0098    160 G$SCON$0$0 == 0x0098
                    0098    161 _SCON	=	0x0098
                    0099    162 G$SBUF$0$0 == 0x0099
                    0099    163 _SBUF	=	0x0099
                    00A0    164 G$P2$0$0 == 0x00a0
                    00A0    165 _P2	=	0x00a0
                    00A8    166 G$IE$0$0 == 0x00a8
                    00A8    167 _IE	=	0x00a8
                    00B0    168 G$P3$0$0 == 0x00b0
                    00B0    169 _P3	=	0x00b0
                    00B8    170 G$IP$0$0 == 0x00b8
                    00B8    171 _IP	=	0x00b8
                    00D0    172 G$PSW$0$0 == 0x00d0
                    00D0    173 _PSW	=	0x00d0
                    00E0    174 G$ACC$0$0 == 0x00e0
                    00E0    175 _ACC	=	0x00e0
                    00F0    176 G$B$0$0 == 0x00f0
                    00F0    177 _B	=	0x00f0
                            178 ;--------------------------------------------------------
                            179 ; special function bits
                            180 ;--------------------------------------------------------
                            181 	.area RSEG    (DATA)
                    0080    182 G$P0_0$0$0 == 0x0080
                    0080    183 _P0_0	=	0x0080
                    0081    184 G$P0_1$0$0 == 0x0081
                    0081    185 _P0_1	=	0x0081
                    0082    186 G$P0_2$0$0 == 0x0082
                    0082    187 _P0_2	=	0x0082
                    0083    188 G$P0_3$0$0 == 0x0083
                    0083    189 _P0_3	=	0x0083
                    0084    190 G$P0_4$0$0 == 0x0084
                    0084    191 _P0_4	=	0x0084
                    0085    192 G$P0_5$0$0 == 0x0085
                    0085    193 _P0_5	=	0x0085
                    0086    194 G$P0_6$0$0 == 0x0086
                    0086    195 _P0_6	=	0x0086
                    0087    196 G$P0_7$0$0 == 0x0087
                    0087    197 _P0_7	=	0x0087
                    0088    198 G$IT0$0$0 == 0x0088
                    0088    199 _IT0	=	0x0088
                    0089    200 G$IE0$0$0 == 0x0089
                    0089    201 _IE0	=	0x0089
                    008A    202 G$IT1$0$0 == 0x008a
                    008A    203 _IT1	=	0x008a
                    008B    204 G$IE1$0$0 == 0x008b
                    008B    205 _IE1	=	0x008b
                    008C    206 G$TR0$0$0 == 0x008c
                    008C    207 _TR0	=	0x008c
                    008D    208 G$TF0$0$0 == 0x008d
                    008D    209 _TF0	=	0x008d
                    008E    210 G$TR1$0$0 == 0x008e
                    008E    211 _TR1	=	0x008e
                    008F    212 G$TF1$0$0 == 0x008f
                    008F    213 _TF1	=	0x008f
                    0090    214 G$P1_0$0$0 == 0x0090
                    0090    215 _P1_0	=	0x0090
                    0091    216 G$P1_1$0$0 == 0x0091
                    0091    217 _P1_1	=	0x0091
                    0092    218 G$P1_2$0$0 == 0x0092
                    0092    219 _P1_2	=	0x0092
                    0093    220 G$P1_3$0$0 == 0x0093
                    0093    221 _P1_3	=	0x0093
                    0094    222 G$P1_4$0$0 == 0x0094
                    0094    223 _P1_4	=	0x0094
                    0095    224 G$P1_5$0$0 == 0x0095
                    0095    225 _P1_5	=	0x0095
                    0096    226 G$P1_6$0$0 == 0x0096
                    0096    227 _P1_6	=	0x0096
                    0097    228 G$P1_7$0$0 == 0x0097
                    0097    229 _P1_7	=	0x0097
                    0098    230 G$RI$0$0 == 0x0098
                    0098    231 _RI	=	0x0098
                    0099    232 G$TI$0$0 == 0x0099
                    0099    233 _TI	=	0x0099
                    009A    234 G$RB8$0$0 == 0x009a
                    009A    235 _RB8	=	0x009a
                    009B    236 G$TB8$0$0 == 0x009b
                    009B    237 _TB8	=	0x009b
                    009C    238 G$REN$0$0 == 0x009c
                    009C    239 _REN	=	0x009c
                    009D    240 G$SM2$0$0 == 0x009d
                    009D    241 _SM2	=	0x009d
                    009E    242 G$SM1$0$0 == 0x009e
                    009E    243 _SM1	=	0x009e
                    009F    244 G$SM0$0$0 == 0x009f
                    009F    245 _SM0	=	0x009f
                    00A0    246 G$P2_0$0$0 == 0x00a0
                    00A0    247 _P2_0	=	0x00a0
                    00A1    248 G$P2_1$0$0 == 0x00a1
                    00A1    249 _P2_1	=	0x00a1
                    00A2    250 G$P2_2$0$0 == 0x00a2
                    00A2    251 _P2_2	=	0x00a2
                    00A3    252 G$P2_3$0$0 == 0x00a3
                    00A3    253 _P2_3	=	0x00a3
                    00A4    254 G$P2_4$0$0 == 0x00a4
                    00A4    255 _P2_4	=	0x00a4
                    00A5    256 G$P2_5$0$0 == 0x00a5
                    00A5    257 _P2_5	=	0x00a5
                    00A6    258 G$P2_6$0$0 == 0x00a6
                    00A6    259 _P2_6	=	0x00a6
                    00A7    260 G$P2_7$0$0 == 0x00a7
                    00A7    261 _P2_7	=	0x00a7
                    00A8    262 G$EX0$0$0 == 0x00a8
                    00A8    263 _EX0	=	0x00a8
                    00A9    264 G$ET0$0$0 == 0x00a9
                    00A9    265 _ET0	=	0x00a9
                    00AA    266 G$EX1$0$0 == 0x00aa
                    00AA    267 _EX1	=	0x00aa
                    00AB    268 G$ET1$0$0 == 0x00ab
                    00AB    269 _ET1	=	0x00ab
                    00AC    270 G$ES$0$0 == 0x00ac
                    00AC    271 _ES	=	0x00ac
                    00AF    272 G$EA$0$0 == 0x00af
                    00AF    273 _EA	=	0x00af
                    00B0    274 G$P3_0$0$0 == 0x00b0
                    00B0    275 _P3_0	=	0x00b0
                    00B1    276 G$P3_1$0$0 == 0x00b1
                    00B1    277 _P3_1	=	0x00b1
                    00B2    278 G$P3_2$0$0 == 0x00b2
                    00B2    279 _P3_2	=	0x00b2
                    00B3    280 G$P3_3$0$0 == 0x00b3
                    00B3    281 _P3_3	=	0x00b3
                    00B4    282 G$P3_4$0$0 == 0x00b4
                    00B4    283 _P3_4	=	0x00b4
                    00B5    284 G$P3_5$0$0 == 0x00b5
                    00B5    285 _P3_5	=	0x00b5
                    00B6    286 G$P3_6$0$0 == 0x00b6
                    00B6    287 _P3_6	=	0x00b6
                    00B7    288 G$P3_7$0$0 == 0x00b7
                    00B7    289 _P3_7	=	0x00b7
                    00B0    290 G$RXD$0$0 == 0x00b0
                    00B0    291 _RXD	=	0x00b0
                    00B1    292 G$TXD$0$0 == 0x00b1
                    00B1    293 _TXD	=	0x00b1
                    00B2    294 G$INT0$0$0 == 0x00b2
                    00B2    295 _INT0	=	0x00b2
                    00B3    296 G$INT1$0$0 == 0x00b3
                    00B3    297 _INT1	=	0x00b3
                    00B4    298 G$T0$0$0 == 0x00b4
                    00B4    299 _T0	=	0x00b4
                    00B5    300 G$T1$0$0 == 0x00b5
                    00B5    301 _T1	=	0x00b5
                    00B6    302 G$WR$0$0 == 0x00b6
                    00B6    303 _WR	=	0x00b6
                    00B7    304 G$RD$0$0 == 0x00b7
                    00B7    305 _RD	=	0x00b7
                    00B8    306 G$PX0$0$0 == 0x00b8
                    00B8    307 _PX0	=	0x00b8
                    00B9    308 G$PT0$0$0 == 0x00b9
                    00B9    309 _PT0	=	0x00b9
                    00BA    310 G$PX1$0$0 == 0x00ba
                    00BA    311 _PX1	=	0x00ba
                    00BB    312 G$PT1$0$0 == 0x00bb
                    00BB    313 _PT1	=	0x00bb
                    00BC    314 G$PS$0$0 == 0x00bc
                    00BC    315 _PS	=	0x00bc
                    00D0    316 G$P$0$0 == 0x00d0
                    00D0    317 _P	=	0x00d0
                    00D1    318 G$F1$0$0 == 0x00d1
                    00D1    319 _F1	=	0x00d1
                    00D2    320 G$OV$0$0 == 0x00d2
                    00D2    321 _OV	=	0x00d2
                    00D3    322 G$RS0$0$0 == 0x00d3
                    00D3    323 _RS0	=	0x00d3
                    00D4    324 G$RS1$0$0 == 0x00d4
                    00D4    325 _RS1	=	0x00d4
                    00D5    326 G$F0$0$0 == 0x00d5
                    00D5    327 _F0	=	0x00d5
                    00D6    328 G$AC$0$0 == 0x00d6
                    00D6    329 _AC	=	0x00d6
                    00D7    330 G$CY$0$0 == 0x00d7
                    00D7    331 _CY	=	0x00d7
                            332 ;--------------------------------------------------------
                            333 ; overlayable register banks
                            334 ;--------------------------------------------------------
                            335 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     336 	.ds 8
                            337 ;--------------------------------------------------------
                            338 ; internal ram data
                            339 ;--------------------------------------------------------
                            340 	.area DSEG    (DATA)
                    0000    341 G$RUNNING$0$0==.
   0008                     342 _RUNNING::
   0008                     343 	.ds 1
                    0001    344 G$NUMBER_OF_DIGITS$0$0==.
   0009                     345 _NUMBER_OF_DIGITS::
   0009                     346 	.ds 1
                    0002    347 G$NUMBERS$0$0==.
   000A                     348 _NUMBERS::
   000A                     349 	.ds 10
                    000C    350 G$cycle_delay$0$0==.
   0014                     351 _cycle_delay::
   0014                     352 	.ds 4
                    0010    353 G$cycle_duration$0$0==.
   0018                     354 _cycle_duration::
   0018                     355 	.ds 4
                    0014    356 G$BUTTON_START$0$0==.
   001C                     357 _BUTTON_START::
   001C                     358 	.ds 1
                    0015    359 G$BUTTON_ERROR$0$0==.
   001D                     360 _BUTTON_ERROR::
   001D                     361 	.ds 1
                    0016    362 G$seconds_left$0$0==.
   001E                     363 _seconds_left::
   001E                     364 	.ds 2
                    0018    365 Lwrite_segment$value$1$1==.
   0020                     366 _write_segment_PARM_2:
   0020                     367 	.ds 1
                    0019    368 Lget_digit$place$1$1==.
   0021                     369 _get_digit_PARM_2:
   0021                     370 	.ds 1
                    001A    371 Lget_digit$powers$1$1==.
   0022                     372 _get_digit_powers_1_1:
   0022                     373 	.ds 8
                            374 ;--------------------------------------------------------
                            375 ; overlayable items in internal ram 
                            376 ;--------------------------------------------------------
                            377 	.area OSEG    (OVR,DATA)
                            378 ;--------------------------------------------------------
                            379 ; Stack segment in internal ram 
                            380 ;--------------------------------------------------------
                            381 	.area	SSEG	(DATA)
   002C                     382 __start__stack:
   002C                     383 	.ds	1
                            384 
                            385 ;--------------------------------------------------------
                            386 ; indirectly addressable internal ram data
                            387 ;--------------------------------------------------------
                            388 	.area ISEG    (DATA)
                            389 ;--------------------------------------------------------
                            390 ; absolute internal ram data
                            391 ;--------------------------------------------------------
                            392 	.area IABS    (ABS,DATA)
                            393 	.area IABS    (ABS,DATA)
                            394 ;--------------------------------------------------------
                            395 ; bit data
                            396 ;--------------------------------------------------------
                            397 	.area BSEG    (BIT)
                            398 ;--------------------------------------------------------
                            399 ; paged external ram data
                            400 ;--------------------------------------------------------
                            401 	.area PSEG    (PAG,XDATA)
                            402 ;--------------------------------------------------------
                            403 ; external ram data
                            404 ;--------------------------------------------------------
                            405 	.area XSEG    (XDATA)
                            406 ;--------------------------------------------------------
                            407 ; absolute external ram data
                            408 ;--------------------------------------------------------
                            409 	.area XABS    (ABS,XDATA)
                            410 ;--------------------------------------------------------
                            411 ; external initialized ram data
                            412 ;--------------------------------------------------------
                            413 	.area XISEG   (XDATA)
                            414 	.area HOME    (CODE)
                            415 	.area GSINIT0 (CODE)
                            416 	.area GSINIT1 (CODE)
                            417 	.area GSINIT2 (CODE)
                            418 	.area GSINIT3 (CODE)
                            419 	.area GSINIT4 (CODE)
                            420 	.area GSINIT5 (CODE)
                            421 	.area GSINIT  (CODE)
                            422 	.area GSFINAL (CODE)
                            423 	.area CSEG    (CODE)
                            424 ;--------------------------------------------------------
                            425 ; interrupt vector 
                            426 ;--------------------------------------------------------
                            427 	.area HOME    (CODE)
   0000                     428 __interrupt_vect:
   0000 02 00 08            429 	ljmp	__sdcc_gsinit_startup
                            430 ;--------------------------------------------------------
                            431 ; global & static initialisations
                            432 ;--------------------------------------------------------
                            433 	.area HOME    (CODE)
                            434 	.area GSINIT  (CODE)
                            435 	.area GSFINAL (CODE)
                            436 	.area GSINIT  (CODE)
                            437 	.globl __sdcc_gsinit_startup
                            438 	.globl __sdcc_program_startup
                            439 	.globl __start__stack
                            440 	.globl __mcs51_genXINIT
                            441 	.globl __mcs51_genXRAMCLEAR
                            442 	.globl __mcs51_genRAMCLEAR
                    0000    443 	G$main$0$0 ==.
                    0000    444 	C$main.c$18$1$1 ==.
                            445 ;	main.c:18: unsigned char RUNNING = 0;
   0061 75 08 00            446 	mov	_RUNNING,#0x00
                    0003    447 	G$main$0$0 ==.
                    0003    448 	C$main.c$23$1$1 ==.
                            449 ;	main.c:23: unsigned char NUMBER_OF_DIGITS = 4;
   0064 75 09 04            450 	mov	_NUMBER_OF_DIGITS,#0x04
                    0006    451 	G$main$0$0 ==.
                    0006    452 	C$main.c$26$1$1 ==.
                            453 ;	main.c:26: unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
   0067 75 0A C0            454 	mov	_NUMBERS,#0xC0
   006A 75 0B F9            455 	mov	(_NUMBERS + 0x0001),#0xF9
   006D 75 0C A4            456 	mov	(_NUMBERS + 0x0002),#0xA4
   0070 75 0D B0            457 	mov	(_NUMBERS + 0x0003),#0xB0
   0073 75 0E 99            458 	mov	(_NUMBERS + 0x0004),#0x99
   0076 75 0F 92            459 	mov	(_NUMBERS + 0x0005),#0x92
   0079 75 10 82            460 	mov	(_NUMBERS + 0x0006),#0x82
   007C 75 11 F0            461 	mov	(_NUMBERS + 0x0007),#0xF0
   007F 75 12 80            462 	mov	(_NUMBERS + 0x0008),#0x80
   0082 75 13 90            463 	mov	(_NUMBERS + 0x0009),#0x90
                    0024    464 	G$main$0$0 ==.
                    0024    465 	C$main.c$34$1$1 ==.
                            466 ;	main.c:34: unsigned char BUTTON_START = 35;
   0085 75 1C 23            467 	mov	_BUTTON_START,#0x23
                    0027    468 	G$main$0$0 ==.
                    0027    469 	C$main.c$37$1$1 ==.
                            470 ;	main.c:37: unsigned char BUTTON_ERROR = 255;
   0088 75 1D FF            471 	mov	_BUTTON_ERROR,#0xFF
                    002A    472 	G$main$0$0 ==.
                    002A    473 	C$main.c$44$1$1 ==.
                            474 ;	main.c:44: short int seconds_left = 0; 
   008B E4                  475 	clr	a
   008C F5 1E               476 	mov	_seconds_left,a
   008E F5 1F               477 	mov	(_seconds_left + 1),a
                            478 	.area GSFINAL (CODE)
   0090 02 00 03            479 	ljmp	__sdcc_program_startup
                            480 ;--------------------------------------------------------
                            481 ; Home
                            482 ;--------------------------------------------------------
                            483 	.area HOME    (CODE)
                            484 	.area HOME    (CODE)
   0003                     485 __sdcc_program_startup:
   0003 12 03 63            486 	lcall	_main
                            487 ;	return from main will lock up
   0006 80 FE               488 	sjmp .
                            489 ;--------------------------------------------------------
                            490 ; code
                            491 ;--------------------------------------------------------
                            492 	.area CSEG    (CODE)
                            493 ;------------------------------------------------------------
                            494 ;Allocation info for local variables in function 'GetNumberFromMatrixKeypad'
                            495 ;------------------------------------------------------------
                            496 ;col                       Allocated to registers r2 
                            497 ;row                       Allocated to registers r3 
                            498 ;------------------------------------------------------------
                    0000    499 	G$GetNumberFromMatrixKeypad$0$0 ==.
                    0000    500 	C$main.c$60$0$0 ==.
                            501 ;	main.c:60: unsigned char GetNumberFromMatrixKeypad()
                            502 ;	-----------------------------------------
                            503 ;	 function GetNumberFromMatrixKeypad
                            504 ;	-----------------------------------------
   0093                     505 _GetNumberFromMatrixKeypad:
                    0002    506 	ar2 = 0x02
                    0003    507 	ar3 = 0x03
                    0004    508 	ar4 = 0x04
                    0005    509 	ar5 = 0x05
                    0006    510 	ar6 = 0x06
                    0007    511 	ar7 = 0x07
                    0000    512 	ar0 = 0x00
                    0001    513 	ar1 = 0x01
                    0000    514 	C$main.c$62$1$0 ==.
                            515 ;	main.c:62: unsigned char col = 0, row = 0;
   0093 7A 00               516 	mov	r2,#0x00
   0095 7B 00               517 	mov	r3,#0x00
                    0004    518 	C$main.c$63$1$1 ==.
                            519 ;	main.c:63: KEYPAD_PORT = 240;    //column info
   0097 75 90 F0            520 	mov	_P1,#0xF0
                    0007    521 	C$main.c$64$1$1 ==.
                            522 ;	main.c:64: switch(P1)
   009A AC 90               523 	mov	r4,_P1
   009C BC 70 02            524 	cjne	r4,#0x70,00219$
   009F 80 19               525 	sjmp	00104$
   00A1                     526 00219$:
   00A1 BC B0 02            527 	cjne	r4,#0xB0,00220$
   00A4 80 10               528 	sjmp	00103$
   00A6                     529 00220$:
   00A6 BC D0 02            530 	cjne	r4,#0xD0,00221$
   00A9 80 07               531 	sjmp	00102$
   00AB                     532 00221$:
   00AB BC E0 0E            533 	cjne	r4,#0xE0,00106$
                    001B    534 	C$main.c$66$2$2 ==.
                            535 ;	main.c:66: case 224:    col = 1;    break;   
   00AE 7A 01               536 	mov	r2,#0x01
                    001D    537 	C$main.c$67$2$2 ==.
                            538 ;	main.c:67: case 208:    col = 2;    break;    
   00B0 80 0A               539 	sjmp	00106$
   00B2                     540 00102$:
   00B2 7A 02               541 	mov	r2,#0x02
                    0021    542 	C$main.c$68$2$2 ==.
                            543 ;	main.c:68: case 176:    col = 3;    break;    
   00B4 80 06               544 	sjmp	00106$
   00B6                     545 00103$:
   00B6 7A 03               546 	mov	r2,#0x03
                    0025    547 	C$main.c$69$2$2 ==.
                            548 ;	main.c:69: case 112:    col = 4;    break;    
   00B8 80 02               549 	sjmp	00106$
   00BA                     550 00104$:
   00BA 7A 04               551 	mov	r2,#0x04
                    0029    552 	C$main.c$71$1$1 ==.
                            553 ;	main.c:71: }
   00BC                     554 00106$:
                    0029    555 	C$main.c$73$1$1 ==.
                            556 ;	main.c:73: KEYPAD_PORT = 15;    //row info
   00BC 75 90 0F            557 	mov	_P1,#0x0F
                    002C    558 	C$main.c$74$1$1 ==.
                            559 ;	main.c:74: switch(P1)
   00BF AC 90               560 	mov	r4,_P1
   00C1 BC 07 02            561 	cjne	r4,#0x07,00224$
   00C4 80 19               562 	sjmp	00110$
   00C6                     563 00224$:
   00C6 BC 0B 02            564 	cjne	r4,#0x0B,00225$
   00C9 80 10               565 	sjmp	00109$
   00CB                     566 00225$:
   00CB BC 0D 02            567 	cjne	r4,#0x0D,00226$
   00CE 80 07               568 	sjmp	00108$
   00D0                     569 00226$:
   00D0 BC 0E 0E            570 	cjne	r4,#0x0E,00112$
                    0040    571 	C$main.c$76$2$3 ==.
                            572 ;	main.c:76: case 14:    row = 1;    break;
   00D3 7B 01               573 	mov	r3,#0x01
                    0042    574 	C$main.c$77$2$3 ==.
                            575 ;	main.c:77: case 13:    row = 2;    break;
   00D5 80 0A               576 	sjmp	00112$
   00D7                     577 00108$:
   00D7 7B 02               578 	mov	r3,#0x02
                    0046    579 	C$main.c$78$2$3 ==.
                            580 ;	main.c:78: case 11:    row = 3;    break;
   00D9 80 06               581 	sjmp	00112$
   00DB                     582 00109$:
   00DB 7B 03               583 	mov	r3,#0x03
                    004A    584 	C$main.c$79$2$3 ==.
                            585 ;	main.c:79: case 7:    row = 4;    break;
   00DD 80 02               586 	sjmp	00112$
   00DF                     587 00110$:
   00DF 7B 04               588 	mov	r3,#0x04
                    004E    589 	C$main.c$81$1$1 ==.
                            590 ;	main.c:81: }
   00E1                     591 00112$:
                    004E    592 	C$main.c$83$1$1 ==.
                            593 ;	main.c:83: if((col == 1) && (row == 1))
   00E1 E4                  594 	clr	a
   00E2 BA 01 01            595 	cjne	r2,#0x01,00229$
   00E5 04                  596 	inc	a
   00E6                     597 00229$:
   00E6 FC                  598 	mov	r4,a
   00E7 60 07               599 	jz	00174$
   00E9 BB 01 04            600 	cjne	r3,#0x01,00174$
                    0059    601 	C$main.c$84$1$1 ==.
                            602 ;	main.c:84: return 1;
   00EC 75 82 01            603 	mov	dpl,#0x01
   00EF 22                  604 	ret
   00F0                     605 00174$:
                    005D    606 	C$main.c$85$1$1 ==.
                            607 ;	main.c:85: else if((col == 2) && (row == 1))
   00F0 E4                  608 	clr	a
   00F1 BA 02 01            609 	cjne	r2,#0x02,00234$
   00F4 04                  610 	inc	a
   00F5                     611 00234$:
   00F5 FD                  612 	mov	r5,a
   00F6 60 07               613 	jz	00170$
   00F8 BB 01 04            614 	cjne	r3,#0x01,00170$
                    0068    615 	C$main.c$86$1$1 ==.
                            616 ;	main.c:86: return 2;
   00FB 75 82 02            617 	mov	dpl,#0x02
   00FE 22                  618 	ret
   00FF                     619 00170$:
                    006C    620 	C$main.c$87$1$1 ==.
                            621 ;	main.c:87: else if((col == 3) && (row == 1))
   00FF E4                  622 	clr	a
   0100 BA 03 01            623 	cjne	r2,#0x03,00239$
   0103 04                  624 	inc	a
   0104                     625 00239$:
   0104 FE                  626 	mov	r6,a
   0105 60 07               627 	jz	00166$
   0107 BB 01 04            628 	cjne	r3,#0x01,00166$
                    0077    629 	C$main.c$88$1$1 ==.
                            630 ;	main.c:88: return 3;
   010A 75 82 03            631 	mov	dpl,#0x03
   010D 22                  632 	ret
   010E                     633 00166$:
                    007B    634 	C$main.c$89$1$1 ==.
                            635 ;	main.c:89: else if((col == 4) && (row == 1))    //Letter A
   010E E4                  636 	clr	a
   010F BA 04 01            637 	cjne	r2,#0x04,00244$
   0112 04                  638 	inc	a
   0113                     639 00244$:
   0113 FA                  640 	mov	r2,a
   0114 60 07               641 	jz	00162$
   0116 BB 01 04            642 	cjne	r3,#0x01,00162$
                    0086    643 	C$main.c$90$1$1 ==.
                            644 ;	main.c:90: return 10;
   0119 75 82 0A            645 	mov	dpl,#0x0A
   011C 22                  646 	ret
   011D                     647 00162$:
                    008A    648 	C$main.c$91$1$1 ==.
                            649 ;	main.c:91: else if((col == 1) && (row == 2))
   011D EC                  650 	mov	a,r4
   011E 60 07               651 	jz	00158$
   0120 BB 02 04            652 	cjne	r3,#0x02,00158$
                    0090    653 	C$main.c$92$1$1 ==.
                            654 ;	main.c:92: return 4;
   0123 75 82 04            655 	mov	dpl,#0x04
   0126 22                  656 	ret
   0127                     657 00158$:
                    0094    658 	C$main.c$93$1$1 ==.
                            659 ;	main.c:93: else if((col == 2) && (row == 2))
   0127 ED                  660 	mov	a,r5
   0128 60 07               661 	jz	00154$
   012A BB 02 04            662 	cjne	r3,#0x02,00154$
                    009A    663 	C$main.c$94$1$1 ==.
                            664 ;	main.c:94: return 5;
   012D 75 82 05            665 	mov	dpl,#0x05
   0130 22                  666 	ret
   0131                     667 00154$:
                    009E    668 	C$main.c$95$1$1 ==.
                            669 ;	main.c:95: else if((col == 3) && (row == 2))
   0131 EE                  670 	mov	a,r6
   0132 60 07               671 	jz	00150$
   0134 BB 02 04            672 	cjne	r3,#0x02,00150$
                    00A4    673 	C$main.c$96$1$1 ==.
                            674 ;	main.c:96: return 6;
   0137 75 82 06            675 	mov	dpl,#0x06
   013A 22                  676 	ret
   013B                     677 00150$:
                    00A8    678 	C$main.c$97$1$1 ==.
                            679 ;	main.c:97: else if((col == 4) && (row == 2))    //Letter B
   013B EA                  680 	mov	a,r2
   013C 60 07               681 	jz	00146$
   013E BB 02 04            682 	cjne	r3,#0x02,00146$
                    00AE    683 	C$main.c$98$1$1 ==.
                            684 ;	main.c:98: return 11;
   0141 75 82 0B            685 	mov	dpl,#0x0B
   0144 22                  686 	ret
   0145                     687 00146$:
                    00B2    688 	C$main.c$99$1$1 ==.
                            689 ;	main.c:99: else if((col == 1) && (row == 3))
   0145 EC                  690 	mov	a,r4
   0146 60 07               691 	jz	00142$
   0148 BB 03 04            692 	cjne	r3,#0x03,00142$
                    00B8    693 	C$main.c$100$1$1 ==.
                            694 ;	main.c:100: return 7;
   014B 75 82 07            695 	mov	dpl,#0x07
   014E 22                  696 	ret
   014F                     697 00142$:
                    00BC    698 	C$main.c$101$1$1 ==.
                            699 ;	main.c:101: else if((col == 2) && (row == 3))
   014F ED                  700 	mov	a,r5
   0150 60 07               701 	jz	00138$
   0152 BB 03 04            702 	cjne	r3,#0x03,00138$
                    00C2    703 	C$main.c$102$1$1 ==.
                            704 ;	main.c:102: return 8;
   0155 75 82 08            705 	mov	dpl,#0x08
   0158 22                  706 	ret
   0159                     707 00138$:
                    00C6    708 	C$main.c$103$1$1 ==.
                            709 ;	main.c:103: else if((col == 3) && (row == 3))
   0159 EE                  710 	mov	a,r6
   015A 60 07               711 	jz	00134$
   015C BB 03 04            712 	cjne	r3,#0x03,00134$
                    00CC    713 	C$main.c$104$1$1 ==.
                            714 ;	main.c:104: return 9;
   015F 75 82 09            715 	mov	dpl,#0x09
   0162 22                  716 	ret
   0163                     717 00134$:
                    00D0    718 	C$main.c$105$1$1 ==.
                            719 ;	main.c:105: else if((col == 4) && (row == 3))    //Letter C
   0163 EA                  720 	mov	a,r2
   0164 60 07               721 	jz	00130$
   0166 BB 03 04            722 	cjne	r3,#0x03,00130$
                    00D6    723 	C$main.c$106$1$1 ==.
                            724 ;	main.c:106: return 12;
   0169 75 82 0C            725 	mov	dpl,#0x0C
   016C 22                  726 	ret
   016D                     727 00130$:
                    00DA    728 	C$main.c$107$1$1 ==.
                            729 ;	main.c:107: else if((col == 1) && (row == 4))    //Char * (ASCII 42)
   016D EC                  730 	mov	a,r4
   016E 60 07               731 	jz	00126$
   0170 BB 04 04            732 	cjne	r3,#0x04,00126$
                    00E0    733 	C$main.c$108$1$1 ==.
                            734 ;	main.c:108: return 42;
   0173 75 82 2A            735 	mov	dpl,#0x2A
   0176 22                  736 	ret
   0177                     737 00126$:
                    00E4    738 	C$main.c$109$1$1 ==.
                            739 ;	main.c:109: else if((col == 2) && (row == 4))
   0177 ED                  740 	mov	a,r5
   0178 60 07               741 	jz	00122$
   017A BB 04 04            742 	cjne	r3,#0x04,00122$
                    00EA    743 	C$main.c$110$1$1 ==.
                            744 ;	main.c:110: return 0;
   017D 75 82 00            745 	mov	dpl,#0x00
   0180 22                  746 	ret
   0181                     747 00122$:
                    00EE    748 	C$main.c$111$1$1 ==.
                            749 ;	main.c:111: else if((col == 3) && (row == 4))    //Char # (ASCII 35)
   0181 EE                  750 	mov	a,r6
   0182 60 07               751 	jz	00118$
   0184 BB 04 04            752 	cjne	r3,#0x04,00118$
                    00F4    753 	C$main.c$112$1$1 ==.
                            754 ;	main.c:112: return 35;
   0187 75 82 23            755 	mov	dpl,#0x23
   018A 22                  756 	ret
   018B                     757 00118$:
                    00F8    758 	C$main.c$113$1$1 ==.
                            759 ;	main.c:113: else if((col == 4) && (row == 4))    //Letter D
   018B EA                  760 	mov	a,r2
   018C 60 07               761 	jz	00114$
   018E BB 04 04            762 	cjne	r3,#0x04,00114$
                    00FE    763 	C$main.c$114$1$1 ==.
                            764 ;	main.c:114: return 13;
   0191 75 82 0D            765 	mov	dpl,#0x0D
                    0101    766 	C$main.c$116$1$1 ==.
                            767 ;	main.c:116: return BUTTON_ERROR;    //error code :)
                    0101    768 	C$main.c$117$1$1 ==.
                    0101    769 	XG$GetNumberFromMatrixKeypad$0$0 ==.
   0194 22                  770 	ret
   0195                     771 00114$:
   0195 85 1D 82            772 	mov	dpl,_BUTTON_ERROR
   0198 22                  773 	ret
                            774 ;------------------------------------------------------------
                            775 ;Allocation info for local variables in function 'reset_display'
                            776 ;------------------------------------------------------------
                            777 ;------------------------------------------------------------
                    0106    778 	G$reset_display$0$0 ==.
                    0106    779 	C$main.c$123$1$1 ==.
                            780 ;	main.c:123: void reset_display() {
                            781 ;	-----------------------------------------
                            782 ;	 function reset_display
                            783 ;	-----------------------------------------
   0199                     784 _reset_display:
                    0106    785 	C$main.c$124$1$1 ==.
                            786 ;	main.c:124: P3_0 = 1;
   0199 D2 B0               787 	setb	_P3_0
                    0108    788 	C$main.c$125$1$1 ==.
                            789 ;	main.c:125: P3_1 = 1;
   019B D2 B1               790 	setb	_P3_1
                    010A    791 	C$main.c$126$1$1 ==.
                            792 ;	main.c:126: P3_2 = 1;
   019D D2 B2               793 	setb	_P3_2
                    010C    794 	C$main.c$127$1$1 ==.
                            795 ;	main.c:127: P3_3 = 1;
   019F D2 B3               796 	setb	_P3_3
                    010E    797 	C$main.c$128$1$1 ==.
                    010E    798 	XG$reset_display$0$0 ==.
   01A1 22                  799 	ret
                            800 ;------------------------------------------------------------
                            801 ;Allocation info for local variables in function 'write_segment'
                            802 ;------------------------------------------------------------
                            803 ;value                     Allocated with name '_write_segment_PARM_2'
                            804 ;segment_number            Allocated to registers r2 
                            805 ;------------------------------------------------------------
                    010F    806 	G$write_segment$0$0 ==.
                    010F    807 	C$main.c$136$1$1 ==.
                            808 ;	main.c:136: void write_segment(unsigned char segment_number, unsigned char value) {
                            809 ;	-----------------------------------------
                            810 ;	 function write_segment
                            811 ;	-----------------------------------------
   01A2                     812 _write_segment:
   01A2 AA 82               813 	mov	r2,dpl
                    0111    814 	C$main.c$138$1$1 ==.
                            815 ;	main.c:138: reset_display();
   01A4 C0 02               816 	push	ar2
   01A6 12 01 99            817 	lcall	_reset_display
   01A9 D0 02               818 	pop	ar2
                    0118    819 	C$main.c$141$1$1 ==.
                            820 ;	main.c:141: P2 = NUMBERS[value];
   01AB E5 20               821 	mov	a,_write_segment_PARM_2
   01AD 24 0A               822 	add	a,#_NUMBERS
   01AF F8                  823 	mov	r0,a
   01B0 86 A0               824 	mov	_P2,@r0
                    011F    825 	C$main.c$144$1$1 ==.
                            826 ;	main.c:144: switch (segment_number) {
   01B2 EA                  827 	mov	a,r2
   01B3 24 FC               828 	add	a,#0xff - 0x03
   01B5 40 36               829 	jc	00106$
   01B7 EA                  830 	mov	a,r2
   01B8 2A                  831 	add	a,r2
   01B9 2A                  832 	add	a,r2
   01BA 90 01 BE            833 	mov	dptr,#00110$
   01BD 73                  834 	jmp	@a+dptr
   01BE                     835 00110$:
   01BE 02 01 CA            836 	ljmp	00101$
   01C1 02 01 D3            837 	ljmp	00102$
   01C4 02 01 DC            838 	ljmp	00103$
   01C7 02 01 E5            839 	ljmp	00104$
                    0137    840 	C$main.c$145$2$2 ==.
                            841 ;	main.c:145: case 0:
   01CA                     842 00101$:
                    0137    843 	C$main.c$146$2$2 ==.
                            844 ;	main.c:146: P3_1 = 1;
   01CA D2 B1               845 	setb	_P3_1
                    0139    846 	C$main.c$147$2$2 ==.
                            847 ;	main.c:147: P3_2 = 1;
   01CC D2 B2               848 	setb	_P3_2
                    013B    849 	C$main.c$148$2$2 ==.
                            850 ;	main.c:148: P3_3 = 1;
   01CE D2 B3               851 	setb	_P3_3
                    013D    852 	C$main.c$149$2$2 ==.
                            853 ;	main.c:149: P3_0 = 0;
   01D0 C2 B0               854 	clr	_P3_0
                    013F    855 	C$main.c$150$2$2 ==.
                            856 ;	main.c:150: break;
                    013F    857 	C$main.c$151$2$2 ==.
                            858 ;	main.c:151: case 1:
   01D2 22                  859 	ret
   01D3                     860 00102$:
                    0140    861 	C$main.c$152$2$2 ==.
                            862 ;	main.c:152: P3_0 = 1;
   01D3 D2 B0               863 	setb	_P3_0
                    0142    864 	C$main.c$153$2$2 ==.
                            865 ;	main.c:153: P3_2 = 1;
   01D5 D2 B2               866 	setb	_P3_2
                    0144    867 	C$main.c$154$2$2 ==.
                            868 ;	main.c:154: P3_3 = 1;
   01D7 D2 B3               869 	setb	_P3_3
                    0146    870 	C$main.c$155$2$2 ==.
                            871 ;	main.c:155: P3_1 = 0;
   01D9 C2 B1               872 	clr	_P3_1
                    0148    873 	C$main.c$156$2$2 ==.
                            874 ;	main.c:156: break;
                    0148    875 	C$main.c$157$2$2 ==.
                            876 ;	main.c:157: case 2:
   01DB 22                  877 	ret
   01DC                     878 00103$:
                    0149    879 	C$main.c$158$2$2 ==.
                            880 ;	main.c:158: P3_3 = 1;
   01DC D2 B3               881 	setb	_P3_3
                    014B    882 	C$main.c$159$2$2 ==.
                            883 ;	main.c:159: P3_1 = 1;
   01DE D2 B1               884 	setb	_P3_1
                    014D    885 	C$main.c$160$2$2 ==.
                            886 ;	main.c:160: P3_0 = 1;
   01E0 D2 B0               887 	setb	_P3_0
                    014F    888 	C$main.c$161$2$2 ==.
                            889 ;	main.c:161: P3_2 = 0;
   01E2 C2 B2               890 	clr	_P3_2
                    0151    891 	C$main.c$162$2$2 ==.
                            892 ;	main.c:162: break;
                    0151    893 	C$main.c$163$2$2 ==.
                            894 ;	main.c:163: case 3:
   01E4 22                  895 	ret
   01E5                     896 00104$:
                    0152    897 	C$main.c$164$2$2 ==.
                            898 ;	main.c:164: P3_0 = 1;
   01E5 D2 B0               899 	setb	_P3_0
                    0154    900 	C$main.c$165$2$2 ==.
                            901 ;	main.c:165: P3_1 = 1;
   01E7 D2 B1               902 	setb	_P3_1
                    0156    903 	C$main.c$166$2$2 ==.
                            904 ;	main.c:166: P3_2 = 1;
   01E9 D2 B2               905 	setb	_P3_2
                    0158    906 	C$main.c$167$2$2 ==.
                            907 ;	main.c:167: P3_3 = 0;
   01EB C2 B3               908 	clr	_P3_3
                    015A    909 	C$main.c$168$1$1 ==.
                            910 ;	main.c:168: }
   01ED                     911 00106$:
                    015A    912 	C$main.c$169$1$1 ==.
                    015A    913 	XG$write_segment$0$0 ==.
   01ED 22                  914 	ret
                            915 ;------------------------------------------------------------
                            916 ;Allocation info for local variables in function 'get_digit'
                            917 ;------------------------------------------------------------
                            918 ;place                     Allocated with name '_get_digit_PARM_2'
                            919 ;value                     Allocated to registers r2 r3 
                            920 ;powers                    Allocated with name '_get_digit_powers_1_1'
                            921 ;------------------------------------------------------------
                    015B    922 	G$get_digit$0$0 ==.
                    015B    923 	C$main.c$178$1$1 ==.
                            924 ;	main.c:178: unsigned short int get_digit(unsigned int value, unsigned char place) {
                            925 ;	-----------------------------------------
                            926 ;	 function get_digit
                            927 ;	-----------------------------------------
   01EE                     928 _get_digit:
   01EE AA 82               929 	mov	r2,dpl
   01F0 AB 83               930 	mov	r3,dph
                    015F    931 	C$main.c$181$1$1 ==.
                            932 ;	main.c:181: unsigned int powers [] = {1, 10, 100, 1000};
   01F2 75 22 01            933 	mov	_get_digit_powers_1_1,#0x01
   01F5 75 23 00            934 	mov	(_get_digit_powers_1_1 + 1),#0x00
   01F8 75 24 0A            935 	mov	(_get_digit_powers_1_1 + 0x0002),#0x0A
   01FB 75 25 00            936 	mov	((_get_digit_powers_1_1 + 0x0002) + 1),#0x00
   01FE 75 26 64            937 	mov	(_get_digit_powers_1_1 + 0x0004),#0x64
   0201 75 27 00            938 	mov	((_get_digit_powers_1_1 + 0x0004) + 1),#0x00
   0204 75 28 E8            939 	mov	(_get_digit_powers_1_1 + 0x0006),#0xE8
   0207 75 29 03            940 	mov	((_get_digit_powers_1_1 + 0x0006) + 1),#0x03
                    0177    941 	C$main.c$184$1$1 ==.
                            942 ;	main.c:184: if (value < 10 && place > 1) {
   020A C3                  943 	clr	c
   020B EA                  944 	mov	a,r2
   020C 94 0A               945 	subb	a,#0x0A
   020E EB                  946 	mov	a,r3
   020F 94 00               947 	subb	a,#0x00
   0211 50 0A               948 	jnc	00109$
   0213 E5 21               949 	mov	a,_get_digit_PARM_2
   0215 24 FE               950 	add	a,#0xff - 0x01
   0217 50 04               951 	jnc	00109$
                    0186    952 	C$main.c$185$2$2 ==.
                            953 ;	main.c:185: return 0;
   0219 90 00 00            954 	mov	dptr,#0x0000
   021C 22                  955 	ret
   021D                     956 00109$:
                    018A    957 	C$main.c$186$1$1 ==.
                            958 ;	main.c:186: } else if (value < 100 && place > 2) {
   021D C3                  959 	clr	c
   021E EA                  960 	mov	a,r2
   021F 94 64               961 	subb	a,#0x64
   0221 EB                  962 	mov	a,r3
   0222 94 00               963 	subb	a,#0x00
   0224 50 0A               964 	jnc	00105$
   0226 E5 21               965 	mov	a,_get_digit_PARM_2
   0228 24 FD               966 	add	a,#0xff - 0x02
   022A 50 04               967 	jnc	00105$
                    0199    968 	C$main.c$187$2$3 ==.
                            969 ;	main.c:187: return 0;
   022C 90 00 00            970 	mov	dptr,#0x0000
   022F 22                  971 	ret
   0230                     972 00105$:
                    019D    973 	C$main.c$188$1$1 ==.
                            974 ;	main.c:188: } else if (value < 1000 && place > 3) {
   0230 C3                  975 	clr	c
   0231 EA                  976 	mov	a,r2
   0232 94 E8               977 	subb	a,#0xE8
   0234 EB                  978 	mov	a,r3
   0235 94 03               979 	subb	a,#0x03
   0237 50 0A               980 	jnc	00110$
   0239 E5 21               981 	mov	a,_get_digit_PARM_2
   023B 24 FC               982 	add	a,#0xff - 0x03
   023D 50 04               983 	jnc	00110$
                    01AC    984 	C$main.c$189$2$4 ==.
                            985 ;	main.c:189: return 0;
   023F 90 00 00            986 	mov	dptr,#0x0000
   0242 22                  987 	ret
   0243                     988 00110$:
                    01B0    989 	C$main.c$192$1$1 ==.
                            990 ;	main.c:192: return (unsigned short int)(value / powers[place]) % 10;
   0243 E5 21               991 	mov	a,_get_digit_PARM_2
   0245 25 21               992 	add	a,_get_digit_PARM_2
   0247 24 22               993 	add	a,#_get_digit_powers_1_1
   0249 F8                  994 	mov	r0,a
   024A 86 2A               995 	mov	__divuint_PARM_2,@r0
   024C 08                  996 	inc	r0
   024D 86 2B               997 	mov	(__divuint_PARM_2 + 1),@r0
   024F 8A 82               998 	mov	dpl,r2
   0251 8B 83               999 	mov	dph,r3
   0253 12 03 8D           1000 	lcall	__divuint
   0256 AA 82              1001 	mov	r2,dpl
   0258 AB 83              1002 	mov	r3,dph
   025A 75 2A 0A           1003 	mov	__moduint_PARM_2,#0x0A
   025D E4                 1004 	clr	a
   025E F5 2B              1005 	mov	(__moduint_PARM_2 + 1),a
   0260 8A 82              1006 	mov	dpl,r2
   0262 8B 83              1007 	mov	dph,r3
                    01D1   1008 	C$main.c$193$1$1 ==.
                    01D1   1009 	XG$get_digit$0$0 ==.
   0264 02 03 B6           1010 	ljmp	__moduint
                           1011 ;------------------------------------------------------------
                           1012 ;Allocation info for local variables in function 'display'
                           1013 ;------------------------------------------------------------
                           1014 ;value                     Allocated to registers r2 r3 
                           1015 ;i                         Allocated to registers r4 
                           1016 ;------------------------------------------------------------
                    01D4   1017 	G$display$0$0 ==.
                    01D4   1018 	C$main.c$200$1$1 ==.
                           1019 ;	main.c:200: void display(unsigned short int value) { // todo: should be unsigned short int
                           1020 ;	-----------------------------------------
                           1021 ;	 function display
                           1022 ;	-----------------------------------------
   0267                    1023 _display:
   0267 AA 82              1024 	mov	r2,dpl
   0269 AB 83              1025 	mov	r3,dph
                    01D8   1026 	C$main.c$205$1$1 ==.
                           1027 ;	main.c:205: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   026B 7C 00              1028 	mov	r4,#0x00
   026D                    1029 00101$:
   026D C3                 1030 	clr	c
   026E EC                 1031 	mov	a,r4
   026F 95 09              1032 	subb	a,_NUMBER_OF_DIGITS
   0271 50 25              1033 	jnc	00105$
                    01E0   1034 	C$main.c$206$2$2 ==.
                           1035 ;	main.c:206: write_segment(i, get_digit(value, i));
   0273 8C 21              1036 	mov	_get_digit_PARM_2,r4
   0275 8A 82              1037 	mov	dpl,r2
   0277 8B 83              1038 	mov	dph,r3
   0279 C0 02              1039 	push	ar2
   027B C0 03              1040 	push	ar3
   027D C0 04              1041 	push	ar4
   027F 12 01 EE           1042 	lcall	_get_digit
   0282 AD 82              1043 	mov	r5,dpl
   0284 D0 04              1044 	pop	ar4
   0286 8D 20              1045 	mov	_write_segment_PARM_2,r5
   0288 8C 82              1046 	mov	dpl,r4
   028A C0 04              1047 	push	ar4
   028C 12 01 A2           1048 	lcall	_write_segment
   028F D0 04              1049 	pop	ar4
   0291 D0 03              1050 	pop	ar3
   0293 D0 02              1051 	pop	ar2
                    0202   1052 	C$main.c$205$1$1 ==.
                           1053 ;	main.c:205: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
   0295 0C                 1054 	inc	r4
   0296 80 D5              1055 	sjmp	00101$
   0298                    1056 00105$:
                    0205   1057 	C$main.c$208$1$1 ==.
                    0205   1058 	XG$display$0$0 ==.
   0298 22                 1059 	ret
                           1060 ;------------------------------------------------------------
                           1061 ;Allocation info for local variables in function 'bounce_delay'
                           1062 ;------------------------------------------------------------
                           1063 ;------------------------------------------------------------
                    0206   1064 	G$bounce_delay$0$0 ==.
                    0206   1065 	C$main.c$214$1$1 ==.
                           1066 ;	main.c:214: void bounce_delay() {
                           1067 ;	-----------------------------------------
                           1068 ;	 function bounce_delay
                           1069 ;	-----------------------------------------
   0299                    1070 _bounce_delay:
                    0206   1071 	C$main.c$215$1$1 ==.
                           1072 ;	main.c:215: for (cycle_delay = 0; cycle_delay < 10; cycle_delay++);
   0299 75 14 0A           1073 	mov	_cycle_delay,#0x0A
   029C E4                 1074 	clr	a
   029D F5 15              1075 	mov	(_cycle_delay + 1),a
   029F F5 16              1076 	mov	(_cycle_delay + 2),a
   02A1 F5 17              1077 	mov	(_cycle_delay + 3),a
   02A3                    1078 00103$:
   02A3 15 14              1079 	dec	_cycle_delay
   02A5 74 FF              1080 	mov	a,#0xff
   02A7 B5 14 0C           1081 	cjne	a,_cycle_delay,00108$
   02AA 15 15              1082 	dec	(_cycle_delay + 1)
   02AC B5 15 07           1083 	cjne	a,(_cycle_delay + 1),00108$
   02AF 15 16              1084 	dec	(_cycle_delay + 2)
   02B1 B5 16 02           1085 	cjne	a,(_cycle_delay + 2),00108$
   02B4 15 17              1086 	dec	(_cycle_delay + 3)
   02B6                    1087 00108$:
   02B6 E5 14              1088 	mov	a,_cycle_delay
   02B8 45 15              1089 	orl	a,(_cycle_delay + 1)
   02BA 45 16              1090 	orl	a,(_cycle_delay + 2)
   02BC 45 17              1091 	orl	a,(_cycle_delay + 3)
   02BE 70 E3              1092 	jnz	00103$
   02C0 75 14 0A           1093 	mov	_cycle_delay,#0x0A
   02C3 E4                 1094 	clr	a
   02C4 F5 15              1095 	mov	(_cycle_delay + 1),a
   02C6 F5 16              1096 	mov	(_cycle_delay + 2),a
   02C8 F5 17              1097 	mov	(_cycle_delay + 3),a
                    0237   1098 	C$main.c$216$1$1 ==.
                    0237   1099 	XG$bounce_delay$0$0 ==.
   02CA 22                 1100 	ret
                           1101 ;------------------------------------------------------------
                           1102 ;Allocation info for local variables in function 'check_start_press'
                           1103 ;------------------------------------------------------------
                           1104 ;------------------------------------------------------------
                    0238   1105 	G$check_start_press$0$0 ==.
                    0238   1106 	C$main.c$223$1$1 ==.
                           1107 ;	main.c:223: void check_start_press(){
                           1108 ;	-----------------------------------------
                           1109 ;	 function check_start_press
                           1110 ;	-----------------------------------------
   02CB                    1111 _check_start_press:
                    0238   1112 	C$main.c$225$1$1 ==.
                           1113 ;	main.c:225: if (P1_3 && P1_6) {
   02CB 30 93 42           1114 	jnb	_P1_3,00105$
   02CE 30 96 3F           1115 	jnb	_P1_6,00105$
                    023E   1116 	C$main.c$227$2$2 ==.
                           1117 ;	main.c:227: bounce_delay();
   02D1 12 02 99           1118 	lcall	_bounce_delay
                    0241   1119 	C$main.c$228$2$2 ==.
                           1120 ;	main.c:228: if (P1_3 && P1_6 == 1) {
   02D4 30 93 3C           1121 	jnb	_P1_3,00112$
   02D7 30 96 39           1122 	jnb	_P1_6,00112$
                    0247   1123 	C$main.c$229$3$3 ==.
                           1124 ;	main.c:229: display(1111); // for testing if btn was pressed
   02DA 90 04 57           1125 	mov	dptr,#0x0457
   02DD 12 02 67           1126 	lcall	_display
                    024D   1127 	C$main.c$236$3$3 ==.
                           1128 ;	main.c:236: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
   02E0 E4                 1129 	clr	a
   02E1 F5 14              1130 	mov	_cycle_delay,a
   02E3 F5 15              1131 	mov	(_cycle_delay + 1),a
   02E5 F5 16              1132 	mov	(_cycle_delay + 2),a
   02E7 F5 17              1133 	mov	(_cycle_delay + 3),a
   02E9                    1134 00108$:
   02E9 C3                 1135 	clr	c
   02EA E5 14              1136 	mov	a,_cycle_delay
   02EC 95 18              1137 	subb	a,_cycle_duration
   02EE E5 15              1138 	mov	a,(_cycle_delay + 1)
   02F0 95 19              1139 	subb	a,(_cycle_duration + 1)
   02F2 E5 16              1140 	mov	a,(_cycle_delay + 2)
   02F4 95 1A              1141 	subb	a,(_cycle_duration + 2)
   02F6 E5 17              1142 	mov	a,(_cycle_delay + 3)
   02F8 95 1B              1143 	subb	a,(_cycle_duration + 3)
   02FA 50 17              1144 	jnc	00112$
   02FC 05 14              1145 	inc	_cycle_delay
   02FE E4                 1146 	clr	a
   02FF B5 14 E7           1147 	cjne	a,_cycle_delay,00108$
   0302 05 15              1148 	inc	(_cycle_delay + 1)
   0304 B5 15 E2           1149 	cjne	a,(_cycle_delay + 1),00108$
   0307 05 16              1150 	inc	(_cycle_delay + 2)
   0309 B5 16 DD           1151 	cjne	a,(_cycle_delay + 2),00108$
   030C 05 17              1152 	inc	(_cycle_delay + 3)
   030E 80 D9              1153 	sjmp	00108$
   0310                    1154 00105$:
                    027D   1155 	C$main.c$240$2$4 ==.
                           1156 ;	main.c:240: reset_display();
                    027D   1157 	C$main.c$242$1$1 ==.
                    027D   1158 	XG$check_start_press$0$0 ==.
   0310 02 01 99           1159 	ljmp	_reset_display
   0313                    1160 00112$:
   0313 22                 1161 	ret
                           1162 ;------------------------------------------------------------
                           1163 ;Allocation info for local variables in function 'init'
                           1164 ;------------------------------------------------------------
                           1165 ;------------------------------------------------------------
                    0281   1166 	G$init$0$0 ==.
                    0281   1167 	C$main.c$246$1$1 ==.
                           1168 ;	main.c:246: void init(void) {
                           1169 ;	-----------------------------------------
                           1170 ;	 function init
                           1171 ;	-----------------------------------------
   0314                    1172 _init:
                    0281   1173 	C$main.c$247$1$1 ==.
                           1174 ;	main.c:247: KEYPAD_PORT = 1; // Define as input
   0314 75 90 01           1175 	mov	_P1,#0x01
                    0284   1176 	C$main.c$249$1$1 ==.
                           1177 ;	main.c:249: cycle_duration = 1; // The artificial time delay is X cycles long
   0317 75 18 01           1178 	mov	_cycle_duration,#0x01
   031A E4                 1179 	clr	a
   031B F5 19              1180 	mov	(_cycle_duration + 1),a
   031D F5 1A              1181 	mov	(_cycle_duration + 2),a
   031F F5 1B              1182 	mov	(_cycle_duration + 3),a
                    028E   1183 	C$main.c$250$1$1 ==.
                    028E   1184 	XG$init$0$0 ==.
   0321 22                 1185 	ret
                           1186 ;------------------------------------------------------------
                           1187 ;Allocation info for local variables in function 'set_time'
                           1188 ;------------------------------------------------------------
                           1189 ;digit                     Allocated to registers r2 
                           1190 ;------------------------------------------------------------
                    028F   1191 	G$set_time$0$0 ==.
                    028F   1192 	C$main.c$259$1$1 ==.
                           1193 ;	main.c:259: void set_time(unsigned char digit) {
                           1194 ;	-----------------------------------------
                           1195 ;	 function set_time
                           1196 ;	-----------------------------------------
   0322                    1197 _set_time:
   0322 AA 82              1198 	mov	r2,dpl
                    0291   1199 	C$main.c$260$1$1 ==.
                           1200 ;	main.c:260: seconds_left = digit; // Todo!
   0324 8A 1E              1201 	mov	_seconds_left,r2
   0326 75 1F 00           1202 	mov	(_seconds_left + 1),#0x00
                    0296   1203 	C$main.c$261$1$1 ==.
                    0296   1204 	XG$set_time$0$0 ==.
   0329 22                 1205 	ret
                           1206 ;------------------------------------------------------------
                           1207 ;Allocation info for local variables in function 'start'
                           1208 ;------------------------------------------------------------
                           1209 ;------------------------------------------------------------
                    0297   1210 	G$start$0$0 ==.
                    0297   1211 	C$main.c$266$1$1 ==.
                           1212 ;	main.c:266: void start() {
                           1213 ;	-----------------------------------------
                           1214 ;	 function start
                           1215 ;	-----------------------------------------
   032A                    1216 _start:
                    0297   1217 	C$main.c$273$1$1 ==.
                           1218 ;	main.c:273: RUNNING = 1; // Set system running state - todo deprecate by using TR0 for that
   032A 75 08 01           1219 	mov	_RUNNING,#0x01
                    029A   1220 	C$main.c$274$1$1 ==.
                    029A   1221 	XG$start$0$0 ==.
   032D 22                 1222 	ret
                           1223 ;------------------------------------------------------------
                           1224 ;Allocation info for local variables in function 'stop'
                           1225 ;------------------------------------------------------------
                           1226 ;------------------------------------------------------------
                    029B   1227 	G$stop$0$0 ==.
                    029B   1228 	C$main.c$279$1$1 ==.
                           1229 ;	main.c:279: void stop() {
                           1230 ;	-----------------------------------------
                           1231 ;	 function stop
                           1232 ;	-----------------------------------------
   032E                    1233 _stop:
                    029B   1234 	C$main.c$281$1$1 ==.
                           1235 ;	main.c:281: RUNNING = 0;
                    029B   1236 	C$main.c$282$1$1 ==.
                           1237 ;	main.c:282: seconds_left = 0;
   032E E4                 1238 	clr	a
   032F F5 08              1239 	mov	_RUNNING,a
   0331 F5 1E              1240 	mov	_seconds_left,a
   0333 F5 1F              1241 	mov	(_seconds_left + 1),a
                    02A2   1242 	C$main.c$283$1$1 ==.
                           1243 ;	main.c:283: TR0 = 0; // Stop the timer
   0335 C2 8C              1244 	clr	_TR0
                    02A4   1245 	C$main.c$284$1$1 ==.
                    02A4   1246 	XG$stop$0$0 ==.
   0337 22                 1247 	ret
                           1248 ;------------------------------------------------------------
                           1249 ;Allocation info for local variables in function 'process_key_press'
                           1250 ;------------------------------------------------------------
                           1251 ;pressed_key               Allocated to registers r2 
                           1252 ;------------------------------------------------------------
                    02A5   1253 	G$process_key_press$0$0 ==.
                    02A5   1254 	C$main.c$289$1$1 ==.
                           1255 ;	main.c:289: void process_key_press() {
                           1256 ;	-----------------------------------------
                           1257 ;	 function process_key_press
                           1258 ;	-----------------------------------------
   0338                    1259 _process_key_press:
                    02A5   1260 	C$main.c$290$1$1 ==.
                           1261 ;	main.c:290: unsigned char pressed_key = GetNumberFromMatrixKeypad(); // Current button or error code
   0338 12 00 93           1262 	lcall	_GetNumberFromMatrixKeypad
                    02A8   1263 	C$main.c$292$1$1 ==.
                           1264 ;	main.c:292: if (pressed_key == BUTTON_ERROR || (pressed_key > 9 && pressed_key != BUTTON_START)) { // No key pressed (or invalid), standby...
   033B E5 82              1265 	mov	a,dpl
   033D FA                 1266 	mov	r2,a
   033E B5 1D 02           1267 	cjne	a,_BUTTON_ERROR,00116$
   0341 80 0B              1268 	sjmp	00101$
   0343                    1269 00116$:
   0343 EA                 1270 	mov	a,r2
   0344 24 F6              1271 	add	a,#0xff - 0x09
   0346 50 07              1272 	jnc	00102$
   0348 EA                 1273 	mov	a,r2
   0349 B5 1C 02           1274 	cjne	a,_BUTTON_START,00118$
   034C 80 01              1275 	sjmp	00102$
   034E                    1276 00118$:
   034E                    1277 00101$:
                    02BB   1278 	C$main.c$293$2$2 ==.
                           1279 ;	main.c:293: return;
   034E 22                 1280 	ret
   034F                    1281 00102$:
                    02BC   1282 	C$main.c$297$1$1 ==.
                           1283 ;	main.c:297: if (RUNNING) {
   034F E5 08              1284 	mov	a,_RUNNING
   0351 60 03              1285 	jz	00106$
                    02C0   1286 	C$main.c$298$2$3 ==.
                           1287 ;	main.c:298: stop();
                    02C0   1288 	C$main.c$299$2$3 ==.
                           1289 ;	main.c:299: return;
   0353 02 03 2E           1290 	ljmp	_stop
   0356                    1291 00106$:
                    02C3   1292 	C$main.c$302$1$1 ==.
                           1293 ;	main.c:302: if (pressed_key == BUTTON_START) { // Start?
   0356 EA                 1294 	mov	a,r2
   0357 B5 1C 03           1295 	cjne	a,_BUTTON_START,00108$
                    02C7   1296 	C$main.c$303$2$4 ==.
                           1297 ;	main.c:303: start();
   035A 02 03 2A           1298 	ljmp	_start
   035D                    1299 00108$:
                    02CA   1300 	C$main.c$305$2$5 ==.
                           1301 ;	main.c:305: set_time(pressed_key);
   035D 8A 82              1302 	mov	dpl,r2
                    02CC   1303 	C$main.c$308$1$1 ==.
                    02CC   1304 	XG$process_key_press$0$0 ==.
   035F 02 03 22           1305 	ljmp	_set_time
                           1306 ;------------------------------------------------------------
                           1307 ;Allocation info for local variables in function 'convert_seconds'
                           1308 ;------------------------------------------------------------
                           1309 ;seconds                   Allocated to registers r2 r3 
                           1310 ;------------------------------------------------------------
                    02CF   1311 	G$convert_seconds$0$0 ==.
                    02CF   1312 	C$main.c$313$1$1 ==.
                           1313 ;	main.c:313: unsigned short int convert_seconds(short int seconds) {
                           1314 ;	-----------------------------------------
                           1315 ;	 function convert_seconds
                           1316 ;	-----------------------------------------
   0362                    1317 _convert_seconds:
                    02CF   1318 	C$main.c$314$1$1 ==.
                           1319 ;	main.c:314: return seconds; // Todo!
                    02CF   1320 	C$main.c$315$1$1 ==.
                    02CF   1321 	XG$convert_seconds$0$0 ==.
   0362 22                 1322 	ret
                           1323 ;------------------------------------------------------------
                           1324 ;Allocation info for local variables in function 'main'
                           1325 ;------------------------------------------------------------
                           1326 ;------------------------------------------------------------
                    02D0   1327 	G$main$0$0 ==.
                    02D0   1328 	C$main.c$318$1$1 ==.
                           1329 ;	main.c:318: void main (void) {
                           1330 ;	-----------------------------------------
                           1331 ;	 function main
                           1332 ;	-----------------------------------------
   0363                    1333 _main:
                    02D0   1334 	C$main.c$319$1$1 ==.
                           1335 ;	main.c:319: init(); // Initialize
   0363 12 03 14           1336 	lcall	_init
                    02D3   1337 	C$main.c$321$1$1 ==.
                           1338 ;	main.c:321: while (1) { // Run main program forever
   0366                    1339 00107$:
                    02D3   1340 	C$main.c$323$2$2 ==.
                           1341 ;	main.c:323: process_key_press(); // Check for keyboard press
   0366 12 03 38           1342 	lcall	_process_key_press
                    02D6   1343 	C$main.c$326$2$2 ==.
                           1344 ;	main.c:326: if (!RUNNING) {
   0369 E5 08              1345 	mov	a,_RUNNING
   036B 60 12              1346 	jz	00105$
                    02DA   1347 	C$main.c$332$3$4 ==.
                           1348 ;	main.c:332: if (seconds_left == 0) {
   036D E5 1E              1349 	mov	a,_seconds_left
   036F 45 1F              1350 	orl	a,(_seconds_left + 1)
   0371 70 03              1351 	jnz	00102$
                    02E0   1352 	C$main.c$333$4$5 ==.
                           1353 ;	main.c:333: stop();
   0373 12 03 2E           1354 	lcall	_stop
   0376                    1355 00102$:
                    02E3   1356 	C$main.c$339$3$4 ==.
                           1357 ;	main.c:339: seconds_left = seconds_left - 1;
   0376 15 1E              1358 	dec	_seconds_left
   0378 74 FF              1359 	mov	a,#0xff
   037A B5 1E 02           1360 	cjne	a,_seconds_left,00116$
   037D 15 1F              1361 	dec	(_seconds_left + 1)
   037F                    1362 00116$:
   037F                    1363 00105$:
                    02EC   1364 	C$main.c$345$2$2 ==.
                           1365 ;	main.c:345: display(convert_seconds(seconds_left));	
   037F 85 1E 82           1366 	mov	dpl,_seconds_left
   0382 85 1F 83           1367 	mov	dph,(_seconds_left + 1)
   0385 12 03 62           1368 	lcall	_convert_seconds
   0388 12 02 67           1369 	lcall	_display
                    02F8   1370 	C$main.c$347$1$1 ==.
                    02F8   1371 	XG$main$0$0 ==.
   038B 80 D9              1372 	sjmp	00107$
                           1373 	.area CSEG    (CODE)
                           1374 	.area CONST   (CODE)
                           1375 	.area XINIT   (CODE)
                           1376 	.area CABS    (ABS,CODE)
