	.file "C:\\SourceCode\\dsPicProg\\Math.c"
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
	.global	_linterp	; export
	.type	_linterp,@function
_linterp:
.LFB0:
.LSM0:
	.set ___PA___,1
	lnk	#14
	mov	w0,[w14+4]
	mov	w1,[w14+6]
	mov	w2,[w14+8]
	mov	w3,[w14+10]
	mov	w4,[w14+12]
.LSM1:
	clr.b	w4
	mov.b	w4,[w14]
	bra	.L2
.L5:
.LSM2:
	mov	[w14+6],w5
	mov	[w14+8],w4
	add	w5,w4,w4
	asr	w4,w4
	mov	w4,[w14+2]
.LSM3:
	mov	[w14+4],w5
	mov	[w14+2],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	ge,.L3
.LSM4:
	mov	[w14+2],w4
	mov	w4,[w14+8]
.LSM5:
	mov	[w14+10],w5
	mov	[w14+12],w4
	add	w5,w4,w4
	asr	w4,w4
	mov	w4,[w14+12]
	bra	.L4
.L3:
.LSM6:
	mov	[w14+2],w4
	mov	w4,[w14+6]
.LSM7:
	mov	[w14+10],w5
	mov	[w14+12],w4
	add	w5,w4,w4
	asr	w4,w4
	mov	w4,[w14+10]
.L4:
.LSM8:
	inc.b	[w14],[w14]
.L2:
	mov.b	[w14],w4
	sub.b	w4,#8,[w15]
	.set ___BP___,0
	bra	leu,.L5
.LSM9:
	mov	[w14+10],w4
.LSM10:
	mov	w4,w0
	ulnk	
	return	
	.set ___PA___,0
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
	.4byte	0x157
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.22) (A) Build date: Aug 19 2014"
	.byte	0x1
	.asciz	"Math.c"
	.asciz	"C:\\\\SourceCode\\\\dsPicProg"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"BYTE"
	.byte	0x2
	.byte	0x8
	.4byte	0x96
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
	.uleb128 0x4
	.byte	0x1
	.asciz	"linterp"
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.uleb128 0x5
	.asciz	"A"
	.byte	0x1
	.byte	0x8
	.4byte	0xbc
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0x5
	.asciz	"ALeft"
	.byte	0x1
	.byte	0x8
	.4byte	0xbc
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.uleb128 0x5
	.asciz	"ARight"
	.byte	0x1
	.byte	0x8
	.4byte	0xbc
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.uleb128 0x5
	.asciz	"BLeft"
	.byte	0x1
	.byte	0x8
	.4byte	0xbc
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0x5
	.asciz	"BRight"
	.byte	0x1
	.byte	0x8
	.4byte	0xbc
	.byte	0x2
	.byte	0x7e
	.sleb128 12
	.uleb128 0x6
	.asciz	"Count"
	.byte	0x1
	.byte	0xa
	.4byte	0x8a
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x6
	.asciz	"NewVal"
	.byte	0x1
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.byte	0x0
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x1a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x15b
	.4byte	0xcf
	.asciz	"linterp"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x17
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x15b
	.4byte	0x8a
	.asciz	"BYTE"
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
	.asciz	"Math.c"
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
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x15
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
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM9
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
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
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
