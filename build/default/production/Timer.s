	.file "C:\\SourceCode\\dsPicProg\\Timer.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.pushsection	.nbss,bss,near
	.align	2
_SchedullerCount:	.space	2
	.popsection
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
	.section	.text,code
	.align	2
	.global	_SleepOps	; export
	.type	_SleepOps,@function
_SleepOps:
.LFB0:
.LSM0:
	.set ___PA___,1
	lnk	#4
	mov	w0,[w14+2]
.LSM1:
	clr	w4
	mov	w4,[w14]
	bra	.L2
.L3:
	inc	[w14],[w14]
.L2:
	mov	[w14+2],w4
	mov	[w14],w5
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	ltu,.L3
.LSM2:
	ulnk	
	return	
	.set ___PA___,0
.LFE0:
	.align	2
	.global	__T1Interrupt	; export
	.type	__T1Interrupt,@function
__T1Interrupt:
.LFB1:
.LSM3:
	.set ___PA___,1
	mov	w0,[w15++]
	mov.d	w4,[w15++]
	mov.d	w6,[w15++]
	lnk	#0
.LSM4:
	mov	_SchedullerCount,w4
	mov	#0,w5
	mov	#3,w6
	mov	#0,w7
	sub	w4,w6,[w15]
	subb	w5,w7,[w15]
	.set ___BP___,0
	bra	gtu,.L5
	bra	w4
	.align	2
	.set	___PA___,0
.L10:
	bra	.L6
	bra	.L7
	bra	.L8
	bra	.L9
	.set	___PA___,1
.L6:
.LSM5:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_SchedulledTask0
	exch	w0,w4
.LSM6:
	bra	.L11
.L7:
.LSM7:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_SchedulledTask1
	exch	w0,w4
.LSM8:
	bra	.L11
.L8:
.LSM9:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_SchedulledTask2
	exch	w0,w4
.LSM10:
	bra	.L11
.L9:
.LSM11:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_SchedulledTask3
	exch	w0,w4
.LSM12:
	bra	.L11
.L5:
.LSM13:
	mov.b	#1,w4
	mov	w4,w0
	mov.b	WREG,_SchedulledTask4
.LSM14:
	setm	w4
	mov	w4,_SchedullerCount
.LSM15:
	nop	
.L11:
.LSM16:
	mov	_SchedullerCount,w4
	inc	w4,w4
	mov	w4,_SchedullerCount
.LSM17:
	ulnk	
	mov.d	[--w15],w6
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
	.set ___PA___,0
.LFE1:
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	4
.LEFDE2:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x1e6
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
	.asciz	"UINT"
	.byte	0x2
	.byte	0x7
	.4byte	0x87
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x4
	.byte	0x1
	.asciz	"SleepOps"
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.4byte	0x107
	.uleb128 0x5
	.asciz	"ops"
	.byte	0x1
	.byte	0xa
	.4byte	0x7b
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x6
	.asciz	"i"
	.byte	0x1
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.asciz	"_T1Interrupt"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5e
	.uleb128 0x6
	.asciz	"SchedullerCount"
	.byte	0x1
	.byte	0x3
	.4byte	0x7b
	.byte	0x5
	.byte	0x3
	.4byte	_SchedullerCount
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4
	.4byte	0x14d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x152
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x8
	.4byte	.LASF1
	.byte	0x1
	.byte	0x5
	.4byte	0x14d
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF2
	.byte	0x1
	.byte	0x6
	.4byte	0x14d
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF3
	.byte	0x1
	.byte	0x7
	.4byte	0x14d
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.4byte	0x14d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4
	.4byte	0x14d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask0
	.uleb128 0xa
	.4byte	.LASF1
	.byte	0x1
	.byte	0x5
	.4byte	0x14d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask1
	.uleb128 0xa
	.4byte	.LASF2
	.byte	0x1
	.byte	0x6
	.4byte	0x14d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask2
	.uleb128 0xa
	.4byte	.LASF3
	.byte	0x1
	.byte	0x7
	.4byte	0x14d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_SchedulledTask3
	.uleb128 0xa
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.4byte	0x14d
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xb
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
	.4byte	0x90
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1ea
	.4byte	0xd0
	.asciz	"SleepOps"
	.4byte	0x107
	.asciz	"_T1Interrupt"
	.4byte	0x18f
	.asciz	"SchedulledTask0"
	.4byte	0x1a1
	.asciz	"SchedulledTask1"
	.4byte	0x1b3
	.asciz	"SchedulledTask2"
	.4byte	0x1c5
	.asciz	"SchedulledTask3"
	.4byte	0x1d7
	.asciz	"SchedulledTask4"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x17
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1ea
	.4byte	0x7b
	.asciz	"UINT"
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
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x15
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM9
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM11
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM12
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM13
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM15
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM16
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE1
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF0:
	.asciz	"SchedulledTask0"
.LASF1:
	.asciz	"SchedulledTask1"
.LASF2:
	.asciz	"SchedulledTask2"
.LASF3:
	.asciz	"SchedulledTask3"
.LASF4:
	.asciz	"SchedulledTask4"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
