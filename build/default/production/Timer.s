	.file "C:\\SourceCode\\dsPicProg\\Timer.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.isr.text,code
	.align	2
	.global	__T1Interrupt	; export
	.type	__T1Interrupt,@function
__T1Interrupt:
.LFB0:
.LSM0:
	.set ___PA___,1
	mov	w0,[w15++]
	mov.d	w4,[w15++]
.LSM1:
	bclr.b	_IFS0bits,#3
.LSM2:
	mov	_SchedullerCount,w4
	mov	#0,w5
	sub	w4,#3,[w15]
	subb	w5,#0,[w15]
	.set ___BP___,50
	bra	leu,.L10
.LSM3:
	mov.b	#1,w4
	mov	w4,w0
	mov.b	WREG,_SchedulledTask4
.LSM4:
	clr	w4
.LSM5:
	mov	w4,_SchedullerCount
.LSM6:
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
.L11:
	.set ___PA___,0
.L10:
.LSM7:
	bra	w4
	.align	2
	.set	___PA___,0
.L7:
	bra	.L3
	bra	.L4
	bra	.L5
	bra	.L6
	.set	___PA___,1
.L5:
.LSM8:
	mov.b	#1,w4
	mov	w4,w0
	mov.b	WREG,_SchedulledTask2
.LSM9:
	mov	#3,w4
.LSM10:
	mov	w4,_SchedullerCount
.LSM11:
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
	bra	.L11
.L4:
.LSM12:
	mov.b	#1,w4
	mov	w4,w0
	mov.b	WREG,_SchedulledTask1
.LSM13:
	mov	#2,w4
.LSM14:
	mov	w4,_SchedullerCount
.LSM15:
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
	bra	.L11
.L3:
.LSM16:
	mov.b	#1,w4
	mov	w4,w0
	mov.b	WREG,_SchedulledTask0
.LSM17:
	mov	#1,w4
.LSM18:
	mov	w4,_SchedullerCount
.LSM19:
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
	bra	.L11
.L6:
.LSM20:
	mov.b	#1,w4
	mov	w4,w0
	mov.b	WREG,_SchedulledTask3
.LSM21:
	mov	#4,w4
.LSM22:
	mov	w4,_SchedullerCount
.LSM23:
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
	bra	.L11
.LFE0:
	.global	_SchedulledTask0	; export
	.section	.nbss,bss,near
	.type	_SchedulledTask0,@object
_SchedulledTask0:
	.skip	1
	.global	_SchedulledTask1	; export
	.type	_SchedulledTask1,@object
_SchedulledTask1:
	.skip	1
	.global	_SchedulledTask2	; export
	.type	_SchedulledTask2,@object
_SchedulledTask2:
	.skip	1
	.global	_SchedulledTask3	; export
	.type	_SchedulledTask3,@object
_SchedulledTask3:
	.skip	1
	.global	_SchedulledTask4	; export
	.type	_SchedulledTask4,@object
_SchedulledTask4:
	.skip	1
	.pushsection	.nbss,bss,near
	.align	2
_SchedullerCount:	.space	2
	.popsection
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.sleb128 2
	.byte	0x25
	.byte	0x12
	.uleb128 0xf
	.sleb128 -2
	.byte	0x9
	.uleb128 0x25
	.uleb128 0xf
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	4
.LEFDE0:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x328
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.22) (A) Build date: Aug 19 2014"
	.byte	0x1
	.asciz	"Timer.c"
	.asciz	"C:\\\\SourceCode\\\\dsPicProg"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x3
	.asciz	"UINT"
	.byte	0x3
	.byte	0xa
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x4
	.asciz	"tagIFS0BITS"
	.byte	0x2
	.byte	0x2
	.2byte	0x16e
	.4byte	0x217
	.uleb128 0x5
	.asciz	"INT0IF"
	.byte	0x2
	.2byte	0x16f
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC1IF"
	.byte	0x2
	.2byte	0x170
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC1IF"
	.byte	0x2
	.2byte	0x171
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T1IF"
	.byte	0x2
	.2byte	0x172
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"DMA0IF"
	.byte	0x2
	.2byte	0x173
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC2IF"
	.byte	0x2
	.2byte	0x174
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC2IF"
	.byte	0x2
	.2byte	0x175
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T2IF"
	.byte	0x2
	.2byte	0x176
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3IF"
	.byte	0x2
	.2byte	0x177
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPI1EIF"
	.byte	0x2
	.2byte	0x178
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPI1IF"
	.byte	0x2
	.2byte	0x179
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U1RXIF"
	.byte	0x2
	.2byte	0x17a
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U1TXIF"
	.byte	0x2
	.2byte	0x17b
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"AD1IF"
	.byte	0x2
	.2byte	0x17c
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"DMA1IF"
	.byte	0x2
	.2byte	0x17d
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"IFS0BITS"
	.byte	0x2
	.2byte	0x17e
	.4byte	0xd0
	.uleb128 0x7
	.byte	0x1
	.asciz	"_T1Interrupt"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x17f
	.4byte	0x252
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x217
	.uleb128 0xa
	.asciz	"SchedullerCount"
	.byte	0x1
	.byte	0x3
	.4byte	0x90
	.byte	0x5
	.byte	0x3
	.4byte	_SchedullerCount
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x1
	.byte	0x4
	.4byte	0x281
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x286
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0xb
	.4byte	.LASF2
	.byte	0x1
	.byte	0x5
	.4byte	0x281
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF3
	.byte	0x1
	.byte	0x6
	.4byte	0x281
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF4
	.byte	0x1
	.byte	0x7
	.4byte	0x281
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF5
	.byte	0x1
	.byte	0x8
	.4byte	0x281
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x17f
	.4byte	0x252
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF1
	.byte	0x1
	.byte	0x4
	.4byte	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask0
	.uleb128 0xc
	.4byte	.LASF2
	.byte	0x1
	.byte	0x5
	.4byte	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask1
	.uleb128 0xc
	.4byte	.LASF3
	.byte	0x1
	.byte	0x6
	.4byte	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask2
	.uleb128 0xc
	.4byte	.LASF4
	.byte	0x1
	.byte	0x7
	.4byte	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask3
	.uleb128 0xc
	.4byte	.LASF5
	.byte	0x1
	.byte	0x8
	.4byte	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask4
	.byte	0x0
	.section	.debug_abbrev,info
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x83
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x32c
	.4byte	0x228
	.asciz	"_T1Interrupt"
	.4byte	0x2d1
	.asciz	"SchedulledTask0"
	.4byte	0x2e3
	.asciz	"SchedulledTask1"
	.4byte	0x2f5
	.asciz	"SchedulledTask2"
	.4byte	0x307
	.asciz	"SchedulledTask3"
	.4byte	0x319
	.asciz	"SchedulledTask4"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x32c
	.4byte	0x90
	.asciz	"UINT"
	.4byte	0xd0
	.asciz	"tagIFS0BITS"
	.4byte	0x217
	.asciz	"IFS0BITS"
	.4byte	0x0
	.section	.debug_aranges,info
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_line,info
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.asciz	"Timer.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"p33FJ64MC804.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"Main.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM0
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM12
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM13
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM14
	.byte	0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM15
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM16
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM18
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM19
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM20
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM21
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM22
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF0:
	.asciz	"IFS0bits"
.LASF1:
	.asciz	"SchedulledTask0"
.LASF2:
	.asciz	"SchedulledTask1"
.LASF3:
	.asciz	"SchedulledTask2"
.LASF4:
	.asciz	"SchedulledTask3"
.LASF5:
	.asciz	"SchedulledTask4"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
