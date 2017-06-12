	.file "C:\\SourceCode\\dsPicProg\\Spi.c"
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
	.global	_SpiConfig	; export
	.type	_SpiConfig,@function
_SpiConfig:
.LFB0:
.LSM0:
	.set ___PA___,1
	lnk	#0
.LSM1:
	ulnk	
	return	
	.set ___PA___,0
.LFE0:
	.align	2
	.global	_SpiSend	; export
	.type	_SpiSend,@function
_SpiSend:
.LFB1:
.LSM2:
	.set ___PA___,1
	lnk	#2
	mov.b	w0,[w14]
.LSM3:
	nop	
.L3:
	mov	_SPI1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L3
.LSM4:
	mov.b	[w14],w5
	ze	w5,w4
	mov	w4,_SPI1BUF
.LSM5:
	ulnk	
	return	
	.set ___PA___,0
.LFE1:
	.align	2
	.global	_SpiReceive	; export
	.type	_SpiReceive,@function
_SpiReceive:
.LFB2:
.LSM6:
	.set ___PA___,1
	lnk	#0
.LSM7:
	nop	
.L5:
	mov	_SPI1STATbits,w4
	and	w4,#1,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L5
.LSM8:
	mov	_SPI1BUF,w4
	mov.b	w4,w4
.LSM9:
	mov.b	w4,w0
	ulnk	
	return	
	.set ___PA___,0
.LFE2:
	.align	2
	.global	_SpiWaitTransmitEnd	; export
	.type	_SpiWaitTransmitEnd,@function
_SpiWaitTransmitEnd:
.LFB3:
.LSM10:
	.set ___PA___,1
	lnk	#0
.LSM11:
	nop	
.L7:
	mov	_SPI1STATbits,w4
	and	w4,#1,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L7
.LSM12:
	ulnk	
	return	
	.set ___PA___,0
.LFE3:
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	4
.LEFDE6:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x22d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.22) (A) Build date: Aug 19 2014"
	.byte	0x1
	.asciz	"Spi.c"
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
	.byte	0x3
	.byte	0x8
	.4byte	0x95
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
	.asciz	"tagSPI1STATBITS"
	.byte	0x2
	.byte	0x2
	.2byte	0x92c
	.4byte	0x151
	.uleb128 0x5
	.asciz	"SPIRBF"
	.byte	0x2
	.2byte	0x92d
	.4byte	0x79
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPITBF"
	.byte	0x2
	.2byte	0x92e
	.4byte	0x79
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPIROV"
	.byte	0x2
	.2byte	0x930
	.4byte	0x79
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPISIDL"
	.byte	0x2
	.2byte	0x932
	.4byte	0x79
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPIEN"
	.byte	0x2
	.2byte	0x934
	.4byte	0x79
	.byte	0x2
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"SPI1STATBITS"
	.byte	0x2
	.2byte	0x935
	.4byte	0xce
	.uleb128 0x7
	.byte	0x1
	.asciz	"SpiConfig"
	.byte	0x1
	.byte	0x9
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.uleb128 0x8
	.byte	0x1
	.asciz	"SpiSend"
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5e
	.4byte	0x1a8
	.uleb128 0x9
	.asciz	"val"
	.byte	0x1
	.byte	0xe
	.4byte	0x89
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.asciz	"SpiReceive"
	.byte	0x1
	.byte	0x15
	.4byte	0x89
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5e
	.uleb128 0x7
	.byte	0x1
	.asciz	"SpiWaitTransmitEnd"
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5e
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x936
	.4byte	0x1f4
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x151
	.uleb128 0xd
	.asciz	"SPI1BUF"
	.byte	0x2
	.2byte	0x960
	.4byte	0x20b
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x79
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x936
	.4byte	0x1f4
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.asciz	"SPI1BUF"
	.byte	0x2
	.2byte	0x960
	.4byte	0x20b
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x4e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x231
	.4byte	0x166
	.asciz	"SpiConfig"
	.4byte	0x17e
	.asciz	"SpiSend"
	.4byte	0x1a8
	.asciz	"SpiReceive"
	.4byte	0x1c5
	.asciz	"SpiWaitTransmitEnd"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x231
	.4byte	0x89
	.asciz	"BYTE"
	.4byte	0xce
	.asciz	"tagSPI1STATBITS"
	.4byte	0x151
	.asciz	"SPI1STATBITS"
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
	.asciz	"Spi.c"
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
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x16
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
	.4byte	.LSM2
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE1
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM6
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE2
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM12
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF0:
	.asciz	"SPI1STATbits"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
