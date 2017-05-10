	.file "D:\\Projects\\Programming\\CatalysisTFS\\Catalysis\\dsPicProg\\Math.c"
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
	.file 1 "Math.c"
	.loc 1 9 0
	.set ___PA___,1
	lnk	#14
.LCFI0:
	mov	w0,[w14+4]
	mov	w1,[w14+6]
	mov	w2,[w14+8]
	mov	w3,[w14+10]
	mov	w4,[w14+12]
	.loc 1 12 0
	clr.b	w0
	mov.b	w0,[w14]
	bra	.L2
.L5:
	.loc 1 14 0
	mov	[w14+6],w1
	mov	[w14+8],w0
	add	w1,w0,w0
	asr	w0,w0
	mov	w0,[w14+2]
	.loc 1 15 0
	mov	[w14+4],w1
	mov	[w14+2],w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	ge,.L3
	.loc 1 17 0
	mov	[w14+2],w1
	mov	w1,[w14+8]
	.loc 1 18 0
	mov	[w14+10],w1
	mov	[w14+12],w0
	add	w1,w0,w0
	asr	w0,w0
	mov	w0,[w14+12]
	bra	.L4
.L3:
	.loc 1 22 0
	mov	[w14+2],w1
	mov	w1,[w14+6]
	.loc 1 23 0
	mov	[w14+10],w1
	mov	[w14+12],w0
	add	w1,w0,w0
	asr	w0,w0
	mov	w0,[w14+10]
.L4:
	.loc 1 12 0
	inc.b	[w14],[w14]
.L2:
	mov.b	[w14],w0
	sub.b	w0,#8,[w15]
	.set ___BP___,0
	bra	leu,.L5
	.loc 1 26 0
	mov	[w14+10],w0
	.loc 1 27 0
	ulnk	
	return	
	.set ___PA___,0
.LFE0:
	.size	_linterp, .-_linterp
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
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE0:
	.section	.text,code
.Letext0:
	.file 2 "Main.h"
	.section	.debug_info,info
	.4byte	0x17b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.30) (A) Build date: Nov 22 2016"
	.byte	0x1
	.asciz	"Math.c"
	.ascii	"D:\\\\Projects\\\\Programming\\\\CatalysisTFS\\\\Catalysis\\\\dsPicP"
	.asciz	"rog"
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
	.byte	0x5
	.4byte	0xba
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
	.4byte	0xe0
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.uleb128 0x5
	.asciz	"A"
	.byte	0x1
	.byte	0x8
	.4byte	0xe0
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0x5
	.asciz	"ALeft"
	.byte	0x1
	.byte	0x8
	.4byte	0xe0
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.uleb128 0x5
	.asciz	"ARight"
	.byte	0x1
	.byte	0x8
	.4byte	0xe0
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.uleb128 0x5
	.asciz	"BLeft"
	.byte	0x1
	.byte	0x8
	.4byte	0xe0
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0x5
	.asciz	"BRight"
	.byte	0x1
	.byte	0x8
	.4byte	0xe0
	.byte	0x2
	.byte	0x7e
	.sleb128 12
	.uleb128 0x6
	.asciz	"Count"
	.byte	0x1
	.byte	0xa
	.4byte	0xae
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x6
	.asciz	"NewVal"
	.byte	0x1
	.byte	0xb
	.4byte	0xe0
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
	.4byte	0x17f
	.4byte	0xf3
	.asciz	"linterp"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x17
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x17f
	.4byte	0xae
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
	.section	.debug_str,info
	.section	.text,code



	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
