;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sat Nov 26 00:33:14 2011
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _init
	.globl _check_start_press
	.globl _bounce_delay
	.globl _reset_display
	.globl _display
	.globl _get_digit
	.globl _write_segment
	.globl _GetNumberFromMatrixKeypad
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _get_digit_PARM_2
	.globl _write_segment_PARM_2
	.globl _cycle_duration
	.globl _cycle_delay
	.globl _NUMBERS
	.globl _NUMBER_OF_DIGITS
	.globl _RUNNING
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$RUNNING$0$0==.
_RUNNING::
	.ds 1
G$NUMBER_OF_DIGITS$0$0==.
_NUMBER_OF_DIGITS::
	.ds 1
G$NUMBERS$0$0==.
_NUMBERS::
	.ds 10
G$cycle_delay$0$0==.
_cycle_delay::
	.ds 4
G$cycle_duration$0$0==.
_cycle_duration::
	.ds 4
Lwrite_segment$value$1$1==.
_write_segment_PARM_2:
	.ds 1
Lget_digit$place$1$1==.
_get_digit_PARM_2:
	.ds 1
Lget_digit$powers$1$1==.
_get_digit_powers_1_1:
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	G$main$0$0 ==.
	C$main.c$18$1$1 ==.
;	main.c:18: unsigned char RUNNING = 0;
	mov	_RUNNING,#0x00
	G$main$0$0 ==.
	C$main.c$23$1$1 ==.
;	main.c:23: unsigned char NUMBER_OF_DIGITS = 4;
	mov	_NUMBER_OF_DIGITS,#0x04
	G$main$0$0 ==.
	C$main.c$26$1$1 ==.
;	main.c:26: unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
	mov	_NUMBERS,#0xC0
	mov	(_NUMBERS + 0x0001),#0xF9
	mov	(_NUMBERS + 0x0002),#0xA4
	mov	(_NUMBERS + 0x0003),#0xB0
	mov	(_NUMBERS + 0x0004),#0x99
	mov	(_NUMBERS + 0x0005),#0x92
	mov	(_NUMBERS + 0x0006),#0x82
	mov	(_NUMBERS + 0x0007),#0xF0
	mov	(_NUMBERS + 0x0008),#0x80
	mov	(_NUMBERS + 0x0009),#0x90
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'GetNumberFromMatrixKeypad'
;------------------------------------------------------------
;col                       Allocated to registers r2 
;row                       Allocated to registers r3 
;------------------------------------------------------------
	G$GetNumberFromMatrixKeypad$0$0 ==.
	C$main.c$45$0$0 ==.
;	main.c:45: unsigned char GetNumberFromMatrixKeypad()
;	-----------------------------------------
;	 function GetNumberFromMatrixKeypad
;	-----------------------------------------
_GetNumberFromMatrixKeypad:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$main.c$47$1$0 ==.
;	main.c:47: unsigned char col = 0, row = 0;
	mov	r2,#0x00
	mov	r3,#0x00
	C$main.c$48$1$1 ==.
;	main.c:48: KEYPAD_PORT = 240;    //column info
	mov	_P1,#0xF0
	C$main.c$49$1$1 ==.
;	main.c:49: switch(P1)
	mov	r4,_P1
	cjne	r4,#0x70,00219$
	sjmp	00104$
00219$:
	cjne	r4,#0xB0,00220$
	sjmp	00103$
00220$:
	cjne	r4,#0xD0,00221$
	sjmp	00102$
00221$:
	cjne	r4,#0xE0,00106$
	C$main.c$51$2$2 ==.
;	main.c:51: case 224:    col = 1;    break;   
	mov	r2,#0x01
	C$main.c$52$2$2 ==.
;	main.c:52: case 208:    col = 2;    break;    
	sjmp	00106$
00102$:
	mov	r2,#0x02
	C$main.c$53$2$2 ==.
;	main.c:53: case 176:    col = 3;    break;    
	sjmp	00106$
00103$:
	mov	r2,#0x03
	C$main.c$54$2$2 ==.
;	main.c:54: case 112:    col = 4;    break;    
	sjmp	00106$
00104$:
	mov	r2,#0x04
	C$main.c$56$1$1 ==.
;	main.c:56: }
00106$:
	C$main.c$58$1$1 ==.
;	main.c:58: KEYPAD_PORT = 15;    //row info
	mov	_P1,#0x0F
	C$main.c$59$1$1 ==.
;	main.c:59: switch(P1)
	mov	r4,_P1
	cjne	r4,#0x07,00224$
	sjmp	00110$
00224$:
	cjne	r4,#0x0B,00225$
	sjmp	00109$
00225$:
	cjne	r4,#0x0D,00226$
	sjmp	00108$
00226$:
	cjne	r4,#0x0E,00112$
	C$main.c$61$2$3 ==.
;	main.c:61: case 14:    row = 1;    break;
	mov	r3,#0x01
	C$main.c$62$2$3 ==.
;	main.c:62: case 13:    row = 2;    break;
	sjmp	00112$
00108$:
	mov	r3,#0x02
	C$main.c$63$2$3 ==.
;	main.c:63: case 11:    row = 3;    break;
	sjmp	00112$
00109$:
	mov	r3,#0x03
	C$main.c$64$2$3 ==.
;	main.c:64: case 7:    row = 4;    break;
	sjmp	00112$
00110$:
	mov	r3,#0x04
	C$main.c$66$1$1 ==.
;	main.c:66: }
00112$:
	C$main.c$68$1$1 ==.
;	main.c:68: if((col == 1) && (row == 1))
	clr	a
	cjne	r2,#0x01,00229$
	inc	a
00229$:
	mov	r4,a
	jz	00174$
	cjne	r3,#0x01,00174$
	C$main.c$69$1$1 ==.
;	main.c:69: return 1;
	mov	dpl,#0x01
	ret
00174$:
	C$main.c$70$1$1 ==.
;	main.c:70: else if((col == 2) && (row == 1))
	clr	a
	cjne	r2,#0x02,00234$
	inc	a
00234$:
	mov	r5,a
	jz	00170$
	cjne	r3,#0x01,00170$
	C$main.c$71$1$1 ==.
;	main.c:71: return 2;
	mov	dpl,#0x02
	ret
00170$:
	C$main.c$72$1$1 ==.
;	main.c:72: else if((col == 3) && (row == 1))
	clr	a
	cjne	r2,#0x03,00239$
	inc	a
00239$:
	mov	r6,a
	jz	00166$
	cjne	r3,#0x01,00166$
	C$main.c$73$1$1 ==.
;	main.c:73: return 3;
	mov	dpl,#0x03
	ret
00166$:
	C$main.c$74$1$1 ==.
;	main.c:74: else if((col == 4) && (row == 1))    //Letter A
	clr	a
	cjne	r2,#0x04,00244$
	inc	a
00244$:
	mov	r2,a
	jz	00162$
	cjne	r3,#0x01,00162$
	C$main.c$75$1$1 ==.
;	main.c:75: return 10;
	mov	dpl,#0x0A
	ret
00162$:
	C$main.c$76$1$1 ==.
;	main.c:76: else if((col == 1) && (row == 2))
	mov	a,r4
	jz	00158$
	cjne	r3,#0x02,00158$
	C$main.c$77$1$1 ==.
;	main.c:77: return 4;
	mov	dpl,#0x04
	ret
00158$:
	C$main.c$78$1$1 ==.
;	main.c:78: else if((col == 2) && (row == 2))
	mov	a,r5
	jz	00154$
	cjne	r3,#0x02,00154$
	C$main.c$79$1$1 ==.
;	main.c:79: return 5;
	mov	dpl,#0x05
	ret
00154$:
	C$main.c$80$1$1 ==.
;	main.c:80: else if((col == 3) && (row == 2))
	mov	a,r6
	jz	00150$
	cjne	r3,#0x02,00150$
	C$main.c$81$1$1 ==.
;	main.c:81: return 6;
	mov	dpl,#0x06
	ret
00150$:
	C$main.c$82$1$1 ==.
;	main.c:82: else if((col == 4) && (row == 2))    //Letter B
	mov	a,r2
	jz	00146$
	cjne	r3,#0x02,00146$
	C$main.c$83$1$1 ==.
;	main.c:83: return 11;
	mov	dpl,#0x0B
	ret
00146$:
	C$main.c$84$1$1 ==.
;	main.c:84: else if((col == 1) && (row == 3))
	mov	a,r4
	jz	00142$
	cjne	r3,#0x03,00142$
	C$main.c$85$1$1 ==.
;	main.c:85: return 7;
	mov	dpl,#0x07
	ret
00142$:
	C$main.c$86$1$1 ==.
;	main.c:86: else if((col == 2) && (row == 3))
	mov	a,r5
	jz	00138$
	cjne	r3,#0x03,00138$
	C$main.c$87$1$1 ==.
;	main.c:87: return 8;
	mov	dpl,#0x08
	ret
00138$:
	C$main.c$88$1$1 ==.
;	main.c:88: else if((col == 3) && (row == 3))
	mov	a,r6
	jz	00134$
	cjne	r3,#0x03,00134$
	C$main.c$89$1$1 ==.
;	main.c:89: return 9;
	mov	dpl,#0x09
	ret
00134$:
	C$main.c$90$1$1 ==.
;	main.c:90: else if((col == 4) && (row == 3))    //Letter C
	mov	a,r2
	jz	00130$
	cjne	r3,#0x03,00130$
	C$main.c$91$1$1 ==.
;	main.c:91: return 12;
	mov	dpl,#0x0C
	ret
00130$:
	C$main.c$92$1$1 ==.
;	main.c:92: else if((col == 1) && (row == 4))    //Char * (ASCII 42)
	mov	a,r4
	jz	00126$
	cjne	r3,#0x04,00126$
	C$main.c$93$1$1 ==.
;	main.c:93: return 42;
	mov	dpl,#0x2A
	ret
00126$:
	C$main.c$94$1$1 ==.
;	main.c:94: else if((col == 2) && (row == 4))
	mov	a,r5
	jz	00122$
	cjne	r3,#0x04,00122$
	C$main.c$95$1$1 ==.
;	main.c:95: return 0;
	mov	dpl,#0x00
	ret
00122$:
	C$main.c$96$1$1 ==.
;	main.c:96: else if((col == 3) && (row == 4))    //Char # (ASCII 35)
	mov	a,r6
	jz	00118$
	cjne	r3,#0x04,00118$
	C$main.c$97$1$1 ==.
;	main.c:97: return 35;
	mov	dpl,#0x23
	ret
00118$:
	C$main.c$98$1$1 ==.
;	main.c:98: else if((col == 4) && (row == 4))    //Letter D
	mov	a,r2
	jz	00114$
	cjne	r3,#0x04,00114$
	C$main.c$99$1$1 ==.
;	main.c:99: return 13;
	mov	dpl,#0x0D
	C$main.c$101$1$1 ==.
;	main.c:101: return 255;    //error code :)
	C$main.c$102$1$1 ==.
	XG$GetNumberFromMatrixKeypad$0$0 ==.
	ret
00114$:
	mov	dpl,#0xFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_segment'
;------------------------------------------------------------
;value                     Allocated with name '_write_segment_PARM_2'
;segment_number            Allocated to registers r2 
;------------------------------------------------------------
	G$write_segment$0$0 ==.
	C$main.c$112$1$1 ==.
;	main.c:112: void write_segment(unsigned char segment_number, unsigned char value) {
;	-----------------------------------------
;	 function write_segment
;	-----------------------------------------
_write_segment:
	mov	r2,dpl
	C$main.c$114$1$1 ==.
;	main.c:114: reset_display();
	push	ar2
	lcall	_reset_display
	pop	ar2
	C$main.c$117$1$1 ==.
;	main.c:117: P2 = NUMBERS[value];
	mov	a,_write_segment_PARM_2
	add	a,#_NUMBERS
	mov	r0,a
	mov	_P2,@r0
	C$main.c$120$1$1 ==.
;	main.c:120: switch (segment_number) {
	mov	a,r2
	add	a,#0xff - 0x03
	jc	00106$
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00110$
	jmp	@a+dptr
00110$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	C$main.c$121$2$2 ==.
;	main.c:121: case 0:
00101$:
	C$main.c$122$2$2 ==.
;	main.c:122: P3_1 = 1;
	setb	_P3_1
	C$main.c$123$2$2 ==.
;	main.c:123: P3_2 = 1;
	setb	_P3_2
	C$main.c$124$2$2 ==.
;	main.c:124: P3_3 = 1;
	setb	_P3_3
	C$main.c$125$2$2 ==.
;	main.c:125: P3_0 = 0;
	clr	_P3_0
	C$main.c$126$2$2 ==.
;	main.c:126: break;
	C$main.c$127$2$2 ==.
;	main.c:127: case 1:
	ret
00102$:
	C$main.c$128$2$2 ==.
;	main.c:128: P3_0 = 1;
	setb	_P3_0
	C$main.c$129$2$2 ==.
;	main.c:129: P3_2 = 1;
	setb	_P3_2
	C$main.c$130$2$2 ==.
;	main.c:130: P3_3 = 1;
	setb	_P3_3
	C$main.c$131$2$2 ==.
;	main.c:131: P3_1 = 0;
	clr	_P3_1
	C$main.c$132$2$2 ==.
;	main.c:132: break;
	C$main.c$133$2$2 ==.
;	main.c:133: case 2:
	ret
00103$:
	C$main.c$134$2$2 ==.
;	main.c:134: P3_3 = 1;
	setb	_P3_3
	C$main.c$135$2$2 ==.
;	main.c:135: P3_1 = 1;
	setb	_P3_1
	C$main.c$136$2$2 ==.
;	main.c:136: P3_0 = 1;
	setb	_P3_0
	C$main.c$137$2$2 ==.
;	main.c:137: P3_2 = 0;
	clr	_P3_2
	C$main.c$138$2$2 ==.
;	main.c:138: break;
	C$main.c$139$2$2 ==.
;	main.c:139: case 3:
	ret
00104$:
	C$main.c$140$2$2 ==.
;	main.c:140: P3_0 = 1;
	setb	_P3_0
	C$main.c$141$2$2 ==.
;	main.c:141: P3_1 = 1;
	setb	_P3_1
	C$main.c$142$2$2 ==.
;	main.c:142: P3_2 = 1;
	setb	_P3_2
	C$main.c$143$2$2 ==.
;	main.c:143: P3_3 = 0;
	clr	_P3_3
	C$main.c$144$1$1 ==.
;	main.c:144: }
00106$:
	C$main.c$145$1$1 ==.
	XG$write_segment$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_digit'
;------------------------------------------------------------
;place                     Allocated with name '_get_digit_PARM_2'
;value                     Allocated to registers r2 r3 
;powers                    Allocated with name '_get_digit_powers_1_1'
;------------------------------------------------------------
	G$get_digit$0$0 ==.
	C$main.c$154$1$1 ==.
;	main.c:154: unsigned short int get_digit(unsigned int value, unsigned char place) {
;	-----------------------------------------
;	 function get_digit
;	-----------------------------------------
_get_digit:
	mov	r2,dpl
	mov	r3,dph
	C$main.c$157$1$1 ==.
;	main.c:157: unsigned int powers [] = {1, 10, 100, 1000};
	mov	_get_digit_powers_1_1,#0x01
	mov	(_get_digit_powers_1_1 + 1),#0x00
	mov	(_get_digit_powers_1_1 + 0x0002),#0x0A
	mov	((_get_digit_powers_1_1 + 0x0002) + 1),#0x00
	mov	(_get_digit_powers_1_1 + 0x0004),#0x64
	mov	((_get_digit_powers_1_1 + 0x0004) + 1),#0x00
	mov	(_get_digit_powers_1_1 + 0x0006),#0xE8
	mov	((_get_digit_powers_1_1 + 0x0006) + 1),#0x03
	C$main.c$160$1$1 ==.
;	main.c:160: if (value < 10 && place > 1) {
	clr	c
	mov	a,r2
	subb	a,#0x0A
	mov	a,r3
	subb	a,#0x00
	jnc	00109$
	mov	a,_get_digit_PARM_2
	add	a,#0xff - 0x01
	jnc	00109$
	C$main.c$161$2$2 ==.
;	main.c:161: return 0;
	mov	dptr,#0x0000
	ret
00109$:
	C$main.c$162$1$1 ==.
;	main.c:162: } else if (value < 100 && place > 2) {
	clr	c
	mov	a,r2
	subb	a,#0x64
	mov	a,r3
	subb	a,#0x00
	jnc	00105$
	mov	a,_get_digit_PARM_2
	add	a,#0xff - 0x02
	jnc	00105$
	C$main.c$163$2$3 ==.
;	main.c:163: return 0;
	mov	dptr,#0x0000
	ret
00105$:
	C$main.c$164$1$1 ==.
;	main.c:164: } else if (value < 1000 && place > 3) {
	clr	c
	mov	a,r2
	subb	a,#0xE8
	mov	a,r3
	subb	a,#0x03
	jnc	00110$
	mov	a,_get_digit_PARM_2
	add	a,#0xff - 0x03
	jnc	00110$
	C$main.c$165$2$4 ==.
;	main.c:165: return 0;
	mov	dptr,#0x0000
	ret
00110$:
	C$main.c$168$1$1 ==.
;	main.c:168: return (unsigned short int)(value / powers[place]) % 10;
	mov	a,_get_digit_PARM_2
	add	a,_get_digit_PARM_2
	add	a,#_get_digit_powers_1_1
	mov	r0,a
	mov	__divuint_PARM_2,@r0
	inc	r0
	mov	(__divuint_PARM_2 + 1),@r0
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	mov	__moduint_PARM_2,#0x0A
	clr	a
	mov	(__moduint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	C$main.c$169$1$1 ==.
	XG$get_digit$0$0 ==.
	ljmp	__moduint
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;value                     Allocated to registers r2 r3 
;i                         Allocated to registers r4 
;------------------------------------------------------------
	G$display$0$0 ==.
	C$main.c$176$1$1 ==.
;	main.c:176: void display(unsigned short int value) { // todo: should be unsigned short int
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r2,dpl
	mov	r3,dph
	C$main.c$181$1$1 ==.
;	main.c:181: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
	mov	r4,#0x00
00101$:
	clr	c
	mov	a,r4
	subb	a,_NUMBER_OF_DIGITS
	jnc	00105$
	C$main.c$182$2$2 ==.
;	main.c:182: write_segment(i, get_digit(value, i));
	mov	_get_digit_PARM_2,r4
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	lcall	_get_digit
	mov	r5,dpl
	pop	ar4
	mov	_write_segment_PARM_2,r5
	mov	dpl,r4
	push	ar4
	lcall	_write_segment
	pop	ar4
	pop	ar3
	pop	ar2
	C$main.c$181$1$1 ==.
;	main.c:181: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
	inc	r4
	sjmp	00101$
00105$:
	C$main.c$184$1$1 ==.
	XG$display$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_display'
;------------------------------------------------------------
;------------------------------------------------------------
	G$reset_display$0$0 ==.
	C$main.c$189$1$1 ==.
;	main.c:189: void reset_display() {
;	-----------------------------------------
;	 function reset_display
;	-----------------------------------------
_reset_display:
	C$main.c$190$1$1 ==.
;	main.c:190: P3_0 = 1;
	setb	_P3_0
	C$main.c$191$1$1 ==.
;	main.c:191: P3_1 = 1;
	setb	_P3_1
	C$main.c$192$1$1 ==.
;	main.c:192: P3_2 = 1;
	setb	_P3_2
	C$main.c$193$1$1 ==.
;	main.c:193: P3_3 = 1;
	setb	_P3_3
	C$main.c$194$1$1 ==.
	XG$reset_display$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bounce_delay'
;------------------------------------------------------------
;------------------------------------------------------------
	G$bounce_delay$0$0 ==.
	C$main.c$199$1$1 ==.
;	main.c:199: void bounce_delay() {
;	-----------------------------------------
;	 function bounce_delay
;	-----------------------------------------
_bounce_delay:
	C$main.c$200$1$1 ==.
;	main.c:200: for (cycle_delay = 0; cycle_delay < 10; cycle_delay++);
	mov	_cycle_delay,#0x0A
	clr	a
	mov	(_cycle_delay + 1),a
	mov	(_cycle_delay + 2),a
	mov	(_cycle_delay + 3),a
00103$:
	dec	_cycle_delay
	mov	a,#0xff
	cjne	a,_cycle_delay,00108$
	dec	(_cycle_delay + 1)
	cjne	a,(_cycle_delay + 1),00108$
	dec	(_cycle_delay + 2)
	cjne	a,(_cycle_delay + 2),00108$
	dec	(_cycle_delay + 3)
00108$:
	mov	a,_cycle_delay
	orl	a,(_cycle_delay + 1)
	orl	a,(_cycle_delay + 2)
	orl	a,(_cycle_delay + 3)
	jnz	00103$
	mov	_cycle_delay,#0x0A
	clr	a
	mov	(_cycle_delay + 1),a
	mov	(_cycle_delay + 2),a
	mov	(_cycle_delay + 3),a
	C$main.c$201$1$1 ==.
	XG$bounce_delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_start_press'
;------------------------------------------------------------
;------------------------------------------------------------
	G$check_start_press$0$0 ==.
	C$main.c$208$1$1 ==.
;	main.c:208: void check_start_press(){
;	-----------------------------------------
;	 function check_start_press
;	-----------------------------------------
_check_start_press:
	C$main.c$210$1$1 ==.
;	main.c:210: if (P1_3 && P1_6) {
	jnb	_P1_3,00105$
	jnb	_P1_6,00105$
	C$main.c$212$2$2 ==.
;	main.c:212: bounce_delay();
	lcall	_bounce_delay
	C$main.c$213$2$2 ==.
;	main.c:213: if (P1_3 && P1_6 == 1) {
	jnb	_P1_3,00112$
	jnb	_P1_6,00112$
	C$main.c$214$3$3 ==.
;	main.c:214: display(1111); // for testing if btn was pressed
	mov	dptr,#0x0457
	lcall	_display
	C$main.c$221$3$3 ==.
;	main.c:221: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
	clr	a
	mov	_cycle_delay,a
	mov	(_cycle_delay + 1),a
	mov	(_cycle_delay + 2),a
	mov	(_cycle_delay + 3),a
00108$:
	clr	c
	mov	a,_cycle_delay
	subb	a,_cycle_duration
	mov	a,(_cycle_delay + 1)
	subb	a,(_cycle_duration + 1)
	mov	a,(_cycle_delay + 2)
	subb	a,(_cycle_duration + 2)
	mov	a,(_cycle_delay + 3)
	subb	a,(_cycle_duration + 3)
	jnc	00112$
	inc	_cycle_delay
	clr	a
	cjne	a,_cycle_delay,00108$
	inc	(_cycle_delay + 1)
	cjne	a,(_cycle_delay + 1),00108$
	inc	(_cycle_delay + 2)
	cjne	a,(_cycle_delay + 2),00108$
	inc	(_cycle_delay + 3)
	sjmp	00108$
00105$:
	C$main.c$225$2$4 ==.
;	main.c:225: reset_display();
	C$main.c$227$1$1 ==.
	XG$check_start_press$0$0 ==.
	ljmp	_reset_display
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$init$0$0 ==.
	C$main.c$231$1$1 ==.
;	main.c:231: void init(void) {
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
	C$main.c$232$1$1 ==.
;	main.c:232: KEYPAD_PORT = 1; // Define as input
	mov	_P1,#0x01
	C$main.c$234$1$1 ==.
;	main.c:234: cycle_duration = 1; // The artificial time delay is X cycles long
	mov	_cycle_duration,#0x01
	clr	a
	mov	(_cycle_duration + 1),a
	mov	(_cycle_duration + 2),a
	mov	(_cycle_duration + 3),a
	C$main.c$235$1$1 ==.
	XG$init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$239$1$1 ==.
;	main.c:239: void main (void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$240$1$1 ==.
;	main.c:240: init(); // Initialize
	lcall	_init
	C$main.c$242$1$1 ==.
;	main.c:242: while (!RUNNING) {
00101$:
	mov	a,_RUNNING
	jnz	00104$
	C$main.c$243$2$2 ==.
;	main.c:243: display(GetNumberFromMatrixKeypad());
	lcall	_GetNumberFromMatrixKeypad
	mov	r3,#0x00
	mov	dph,r3
	lcall	_display
	sjmp	00101$
00104$:
	C$main.c$245$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
