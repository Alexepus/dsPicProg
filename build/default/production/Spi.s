	.file "D:\\Projects\\Programming\\CatalysisTFS\\Catalysis\\dsPicProg\\Spi.c"
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
.LFB5:
	.file 1 "Spi.c"
	.loc 1 10 0
	.set ___PA___,1
	lnk	#0
.LCFI0:
	.loc 1 12 0
	ulnk	
	return	
	.set ___PA___,0
.LFE5:
	.size	_SpiConfig, .-_SpiConfig
	.align	2
	.global	_SpiSend	; export
	.type	_SpiSend,@function
_SpiSend:
.LFB6:
	.loc 1 15 0
	.set ___PA___,1
	lnk	#2
.LCFI1:
	mov.b	w0,[w14]
	.loc 1 16 0
	nop	
.L3:
	mov	_SPI1STATbits,w0
	and	w0,#2,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L3
	.loc 1 17 0
	ze	[w14],w0
	mov	w0,_SPI1BUF
	.loc 1 18 0
	ulnk	
	return	
	.set ___PA___,0
.LFE6:
	.size	_SpiSend, .-_SpiSend
	.align	2
	.global	_SpiReceive	; export
	.type	_SpiReceive,@function
_SpiReceive:
.LFB7:
	.loc 1 22 0
	.set ___PA___,1
	lnk	#0
.LCFI2:
	.loc 1 23 0
	nop	
.L5:
	mov	_SPI1STATbits,w0
	and	w0,#1,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L5
	.loc 1 24 0
	mov	_SPI1BUF,w0
	mov.b	w0,w0
	.loc 1 25 0
	ulnk	
	return	
	.set ___PA___,0
.LFE7:
	.size	_SpiReceive, .-_SpiReceive
	.align	2
	.global	_SpiWaitTransmitEnd	; export
	.type	_SpiWaitTransmitEnd,@function
_SpiWaitTransmitEnd:
.LFB8:
	.loc 1 29 0
	.set ___PA___,1
	lnk	#0
.LCFI3:
	.loc 1 30 0
	nop	
.L7:
	mov	_SPI1STATbits,w0
	and	w0,#1,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L7
	.loc 1 31 0
	ulnk	
	return	
	.set ___PA___,0
.LFE8:
	.size	_SpiWaitTransmitEnd, .-_SpiWaitTransmitEnd
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE6:
	.section	.text,code
.Letext0:
	.file 2 "p33FJ64MC804.h"
	.file 3 "Main.h"
	.section	.debug_info,info
	.4byte	0x259
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.30) (A) Build date: Nov 22 2016"
	.byte	0x1
	.asciz	"Spi.c"
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
	.byte	0x3
	.byte	0x5
	.4byte	0xb9
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
	.4byte	0x175
	.uleb128 0x5
	.asciz	"SPIRBF"
	.byte	0x2
	.2byte	0x92d
	.4byte	0x9d
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
	.4byte	0x9d
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
	.4byte	0x9d
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
	.4byte	0x9d
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
	.4byte	0x9d
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
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"char"
	.uleb128 0x7
	.byte	0x1
	.asciz	"SpiConfig"
	.byte	0x1
	.byte	0x9
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5e
	.uleb128 0x8
	.byte	0x1
	.asciz	"SpiSend"
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5e
	.4byte	0x1d4
	.uleb128 0x9
	.asciz	"val"
	.byte	0x1
	.byte	0xe
	.4byte	0xad
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.asciz	"SpiReceive"
	.byte	0x1
	.byte	0x15
	.4byte	0xad
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x7
	.byte	0x1
	.asciz	"SpiWaitTransmitEnd"
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5e
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x936
	.4byte	0x220
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x175
	.uleb128 0xd
	.asciz	"SPI1BUF"
	.byte	0x2
	.2byte	0x960
	.4byte	0x237
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x9d
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x936
	.4byte	0x220
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.asciz	"SPI1BUF"
	.byte	0x2
	.2byte	0x960
	.4byte	0x237
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
	.4byte	0x25d
	.4byte	0x192
	.asciz	"SpiConfig"
	.4byte	0x1aa
	.asciz	"SpiSend"
	.4byte	0x1d4
	.asciz	"SpiReceive"
	.4byte	0x1f1
	.asciz	"SpiWaitTransmitEnd"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x25d
	.4byte	0xad
	.asciz	"BYTE"
	.4byte	0xf2
	.asciz	"tagSPI1STATBITS"
	.4byte	0x175
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
