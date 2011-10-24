;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Mon Oct 24 22:44:38 2011
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _check_incoming
	.globl _check_outgoing
	.globl _display
	.globl _get_digit
	.globl _write_segment
	.globl _init
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
	.globl _MAX_SLOTS
	.globl _free_slots
	.globl _NUMBER_OF_DIGITS
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
G$NUMBER_OF_DIGITS$0$0==.
_NUMBER_OF_DIGITS::
	.ds 1
G$free_slots$0$0==.
_free_slots::
	.ds 1
G$MAX_SLOTS$0$0==.
_MAX_SLOTS::
	.ds 2
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
	C$main.c$28$1$1 ==.
;	main.c:28: unsigned char NUMBER_OF_DIGITS = 3;
	mov	_NUMBER_OF_DIGITS,#0x03
	G$main$0$0 ==.
	C$main.c$36$1$1 ==.
;	main.c:36: unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
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
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$init$0$0 ==.
	C$main.c$44$0$0 ==.
;	main.c:44: void init(void) {
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$main.c$45$1$1 ==.
;	main.c:45: MAX_SLOTS = 9; // We have this many free slots, max
	mov	_MAX_SLOTS,#0x09
	clr	a
	mov	(_MAX_SLOTS + 1),a
	C$main.c$47$1$1 ==.
;	main.c:47: free_slots = MAX_SLOTS; // All slots are empty in the beginning
	mov	_free_slots,#0x09
	C$main.c$49$1$1 ==.
;	main.c:49: BUTTON_ENTER = 1; // Define as input
	setb	_P1_0
	C$main.c$50$1$1 ==.
;	main.c:50: BUTTON_EXIT = 1; // Define as input
	setb	_P1_1
	C$main.c$52$1$1 ==.
;	main.c:52: cycle_duration = 1; // The artificial time delay is X cycles long
	mov	_cycle_duration,#0x01
	clr	a
	mov	(_cycle_duration + 1),a
	mov	(_cycle_duration + 2),a
	mov	(_cycle_duration + 3),a
	C$main.c$53$1$1 ==.
	XG$init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_segment'
;------------------------------------------------------------
;value                     Allocated with name '_write_segment_PARM_2'
;segment_number            Allocated to registers r2 
;------------------------------------------------------------
	G$write_segment$0$0 ==.
	C$main.c$61$1$1 ==.
;	main.c:61: void write_segment(unsigned char segment_number, unsigned char value) {
;	-----------------------------------------
;	 function write_segment
;	-----------------------------------------
_write_segment:
	mov	r2,dpl
	C$main.c$63$1$1 ==.
;	main.c:63: P3_0 = 1; // Reset P3 to avoid flickers
	setb	_P3_0
	C$main.c$64$1$1 ==.
;	main.c:64: P3_1 = 1;
	setb	_P3_1
	C$main.c$65$1$1 ==.
;	main.c:65: P3_2 = 1;
	setb	_P3_2
	C$main.c$68$1$1 ==.
;	main.c:68: P2 = NUMBERS[value];
	mov	a,_write_segment_PARM_2
	add	a,#_NUMBERS
	mov	r0,a
	mov	_P2,@r0
	C$main.c$71$1$1 ==.
;	main.c:71: switch (segment_number) {
	cjne	r2,#0x00,00110$
	sjmp	00101$
00110$:
	cjne	r2,#0x01,00111$
	sjmp	00102$
00111$:
	C$main.c$72$2$2 ==.
;	main.c:72: case 0:
	cjne	r2,#0x02,00105$
	sjmp	00103$
00101$:
	C$main.c$73$2$2 ==.
;	main.c:73: P3_1 = 1;
	setb	_P3_1
	C$main.c$74$2$2 ==.
;	main.c:74: P3_2 = 1;
	setb	_P3_2
	C$main.c$75$2$2 ==.
;	main.c:75: P3_0 = 0;
	clr	_P3_0
	C$main.c$76$2$2 ==.
;	main.c:76: break;
	C$main.c$77$2$2 ==.
;	main.c:77: case 1:
	ret
00102$:
	C$main.c$78$2$2 ==.
;	main.c:78: P3_0 = 1;
	setb	_P3_0
	C$main.c$79$2$2 ==.
;	main.c:79: P3_2 = 1;
	setb	_P3_2
	C$main.c$80$2$2 ==.
;	main.c:80: P3_1 = 0;
	clr	_P3_1
	C$main.c$81$2$2 ==.
;	main.c:81: break;
	C$main.c$82$2$2 ==.
;	main.c:82: case 2:
	ret
00103$:
	C$main.c$83$2$2 ==.
;	main.c:83: P3_3 = 1;
	setb	_P3_3
	C$main.c$84$2$2 ==.
;	main.c:84: P3_1 = 1;
	setb	_P3_1
	C$main.c$85$2$2 ==.
;	main.c:85: P3_2 = 0;
	clr	_P3_2
	C$main.c$87$1$1 ==.
;	main.c:87: }
00105$:
	C$main.c$88$1$1 ==.
	XG$write_segment$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_digit'
;------------------------------------------------------------
;place                     Allocated with name '_get_digit_PARM_2'
;value                     Allocated to registers r2 r3 
;------------------------------------------------------------
	G$get_digit$0$0 ==.
	C$main.c$94$1$1 ==.
;	main.c:94: unsigned char get_digit(unsigned int value, unsigned char place) {
;	-----------------------------------------
;	 function get_digit
;	-----------------------------------------
_get_digit:
	mov	r2,dpl
	mov	r3,dph
	C$main.c$96$1$1 ==.
;	main.c:96: if (place == 0) {
	mov	a,_get_digit_PARM_2
	jnz	00104$
	C$main.c$97$2$2 ==.
;	main.c:97: return (unsigned char)value % 10;
	mov	ar4,r2
	mov	b,#0x0A
	mov	a,r4
	div	ab
	mov	dpl,b
	ret
00104$:
	C$main.c$98$1$1 ==.
;	main.c:98: } else if (place == 1) {
	mov	a,#0x01
	cjne	a,_get_digit_PARM_2,00105$
	C$main.c$99$1$1 ==.
;	main.c:99: return (unsigned char)(value / 10) % 10;
	mov	__divuint_PARM_2,#0x0A
	clr	a
	mov	(__divuint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	r4,dpl
	mov	b,#0x0A
	mov	a,r4
	div	ab
	mov	dpl,b
	ret
00105$:
	C$main.c$101$1$1 ==.
;	main.c:101: return (unsigned char)(value / 100);
	mov	__divuint_PARM_2,#0x64
	clr	a
	mov	(__divuint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	C$main.c$113$1$1 ==.
	XG$get_digit$0$0 ==.
	ljmp	__divuint
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;value                     Allocated to registers r2 r3 
;i                         Allocated to registers r4 
;------------------------------------------------------------
	G$display$0$0 ==.
	C$main.c$120$1$1 ==.
;	main.c:120: void display(unsigned int value) {
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r2,dpl
	mov	r3,dph
	C$main.c$125$1$1 ==.
;	main.c:125: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
	mov	r4,#0x00
00101$:
	clr	c
	mov	a,r4
	subb	a,_NUMBER_OF_DIGITS
	jnc	00105$
	C$main.c$126$2$2 ==.
;	main.c:126: write_segment(i, get_digit(value, i+1));
	mov	a,r4
	inc	a
	mov	r5,a
	mov	_get_digit_PARM_2,r5
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_digit
	mov	_write_segment_PARM_2,dpl
	pop	ar5
	pop	ar4
	mov	dpl,r4
	push	ar5
	lcall	_write_segment
	pop	ar5
	pop	ar3
	pop	ar2
	C$main.c$125$1$1 ==.
;	main.c:125: for (i = 0; i < NUMBER_OF_DIGITS; i++) {
	mov	ar4,r5
	sjmp	00101$
00105$:
	C$main.c$128$1$1 ==.
	XG$display$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_outgoing'
;------------------------------------------------------------
;------------------------------------------------------------
	G$check_outgoing$0$0 ==.
	C$main.c$134$1$1 ==.
;	main.c:134: void check_outgoing(){
;	-----------------------------------------
;	 function check_outgoing
;	-----------------------------------------
_check_outgoing:
	C$main.c$136$1$1 ==.
;	main.c:136: if (BUTTON_EXIT == 1) {
	jnb	_P1_1,00105$
	C$main.c$139$2$2 ==.
;	main.c:139: if (free_slots < MAX_SLOTS) {
	mov	r2,_free_slots
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,_MAX_SLOTS
	mov	a,r3
	subb	a,(_MAX_SLOTS + 1)
	jnc	00105$
	C$main.c$140$3$3 ==.
;	main.c:140: free_slots++;
	inc	_free_slots
00105$:
	C$main.c$143$1$1 ==.
	XG$check_outgoing$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_incoming'
;------------------------------------------------------------
;------------------------------------------------------------
	G$check_incoming$0$0 ==.
	C$main.c$148$1$1 ==.
;	main.c:148: void check_incoming() {
;	-----------------------------------------
;	 function check_incoming
;	-----------------------------------------
_check_incoming:
	C$main.c$149$1$1 ==.
;	main.c:149: if (BUTTON_ENTER == 1) {
	jnb	_P1_0,00105$
	C$main.c$151$2$2 ==.
;	main.c:151: if (free_slots > 0) {    
	mov	a,_free_slots
	jz	00105$
	C$main.c$152$3$3 ==.
;	main.c:152: free_slots--;
	dec	_free_slots
00105$:
	C$main.c$155$1$1 ==.
	XG$check_incoming$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$158$1$1 ==.
;	main.c:158: void main (void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$159$1$1 ==.
;	main.c:159: init(); // Initialize
	lcall	_init
	C$main.c$161$1$1 ==.
;	main.c:161: while (1) {
00102$:
	C$main.c$163$2$2 ==.
;	main.c:163: check_incoming(); // Car enters
	lcall	_check_incoming
	C$main.c$165$2$2 ==.
;	main.c:165: check_outgoing(); // Car leaves
	lcall	_check_outgoing
	C$main.c$172$2$2 ==.
;	main.c:172: for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);
	clr	a
	mov	_cycle_delay,a
	mov	(_cycle_delay + 1),a
	mov	(_cycle_delay + 2),a
	mov	(_cycle_delay + 3),a
00104$:
	clr	c
	mov	a,_cycle_delay
	subb	a,_cycle_duration
	mov	a,(_cycle_delay + 1)
	subb	a,(_cycle_duration + 1)
	mov	a,(_cycle_delay + 2)
	subb	a,(_cycle_duration + 2)
	mov	a,(_cycle_delay + 3)
	subb	a,(_cycle_duration + 3)
	jnc	00107$
	inc	_cycle_delay
	clr	a
	cjne	a,_cycle_delay,00104$
	inc	(_cycle_delay + 1)
	cjne	a,(_cycle_delay + 1),00104$
	inc	(_cycle_delay + 2)
	cjne	a,(_cycle_delay + 2),00104$
	inc	(_cycle_delay + 3)
	sjmp	00104$
00107$:
	C$main.c$174$2$2 ==.
;	main.c:174: display(free_slots); // Output the number of free slots
	mov	r2,_free_slots
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r3
	lcall	_display
	C$main.c$176$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
