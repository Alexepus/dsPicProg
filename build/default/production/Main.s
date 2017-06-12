	.file "C:\\SourceCode\\dsPicProg\\Main.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.text,code
	.align	2
	.global	_main	; export
	.type	_main,@function
_main:
.LFB0:
.LSM0:
	.set ___PA___,1
	lnk	#0
.LSM1:
	rcall	_HardwareInit
	bra	.L6
.L7:
.LSM2:
	nop	
.L6:
.LSM3:
	mov	#_IsUartRcMsg,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L2
.LSM4:
	clr.b	w4
	exch	w0,w4
	mov.b	WREG,_IsUartRcMsg
	exch	w0,w4
.LSM5:
	rcall	_ProcessUart1Msg
.L2:
.LSM6:
	mov	#_SchedulledTask0,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L3
.LSM7:
	clr.b	w4
	exch	w0,w4
	mov.b	WREG,_SchedulledTask0
	exch	w0,w4
.LSM8:
	rcall	_ReadWriteAnalogAll
.L3:
.LSM9:
	mov	#_SchedulledTask1,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L4
.LSM10:
	clr.b	w4
	exch	w0,w4
	mov.b	WREG,_SchedulledTask1
	exch	w0,w4
.LSM11:
	rcall	_task_HeaterPid_body
.L4:
.LSM12:
	mov	#_SchedulledTask2,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L7
.LSM13:
	clr.b	w4
	exch	w0,w4
	mov.b	WREG,_SchedulledTask2
	exch	w0,w4
.LSM14:
	rcall	_task_LeakerPid_body
.LSM15:
	bra	.L6
.LFE0:
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
	.4byte	0x14e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.22) (A) Build date: Aug 19 2014"
	.byte	0x1
	.asciz	"Main.c"
	.asciz	"C:\\\\SourceCode\\\\dsPicProg"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x3
	.byte	0x1
	.asciz	"main"
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.4byte	0xb0
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1c
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.4byte	0xed
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x4
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x1
	.byte	0x5
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1c
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x4
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x1
	.byte	0x5
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x17
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x152
	.4byte	0xc3
	.asciz	"main"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0xe
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x152
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
	.asciz	"Main.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"UART.h"
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
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
	.byte	0x2f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x3
	.sleb128 -23
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM6
	.byte	0x17
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
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM12
	.byte	0x17
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
	.byte	0x16
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
	.asciz	"IsUartRcMsg"
.LASF2:
	.asciz	"SchedulledTask1"
.LASF1:
	.asciz	"SchedulledTask0"
.LASF3:
	.asciz	"SchedulledTask2"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
