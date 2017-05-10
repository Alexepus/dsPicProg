	.file "D:\\Projects\\Programming\\CatalysisTFS\\Catalysis\\dsPicProg\\UART.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.bss,bss
	.type	_RcFifo,@object
	.global	_RcFifo
	.align	2
_RcFifo:	.space	130
	.type	_RcBuf,@object
	.global	_RcBuf
	.align	2
_RcBuf:	.space	22
	.type	_TxBuf,@object
	.global	_TxBuf
	.align	2
_TxBuf:	.space	22
	.section	.nbss,bss,near
	.type	_IsUartRcMsg,@object
	.global	_IsUartRcMsg
_IsUartRcMsg:	.space	1
	.section	.isr.text,code
	.align	2
	.global	__U1RXInterrupt	; export
	.type	__U1RXInterrupt,@function
__U1RXInterrupt:
.LFB0:
	.file 1 "UART.c"
	.loc 1 12 0
	.set ___PA___,1
	push	_RCOUNT
.LCFI0:
	mov.d	w0,[w15++]
.LCFI1:
	mov.d	w2,[w15++]
.LCFI2:
	mov.d	w4,[w15++]
.LCFI3:
	mov.d	w6,[w15++]
.LCFI4:
	lnk	#2
.LCFI5:
	.loc 1 13 0
	bclr.b	_IFS0bits+1,#3
	.loc 1 14 0
	bra	.L2
.L6:
.LBB2:
	.loc 1 17 0
	mov	#_RcFifo+128,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	mov.b	w0,w1
	bclr.b	w1,#7
	mov.b	w1,[w14]
	.loc 1 18 0
	mov	#_RcFifo+129,w0
	mov.b	[w0],w0
	sub.b	w0,[w14],[w15]
	.set ___BP___,0
	bra	nz,.L3
	.loc 1 20 0
	rcall	_ReportFifoRxOverflow
	.loc 1 21 0
	bra	.L1
.L3:
	.loc 1 23 0
	mov	_U1RXREG,w0
	mov.b	w0,[w14+1]
	.loc 1 24 0
	mov	#_RcFifo+128,w0
	mov.b	[w0],w0
	ze	w0,w1
	mov	#_RcFifo,w0
	add	w1,w0,w0
	mov.b	[w14+1],w1
	mov.b	w1,[w0]
	.loc 1 25 0
	mov	#_RcFifo+128,w0
	mov.b	[w14],[w0]
	.loc 1 26 0
	mov.b	[w14+1],w1
	mov.b	#-85,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L5
	.loc 1 27 0
	mov.b	#1,w0
	mov.b	WREG,_IsUartRcMsg
.L5:
	.loc 1 28 0
	mov	_U1STAbits,w0
	and	w0,#2,w0
	cp0	w0
	.set ___BP___,0
	bra	z,.L2
	.loc 1 30 0
	bclr.b	_U1STAbits,#1
	.loc 1 31 0
	rcall	_ReportFifoRxOverflow
.L2:
.LBE2:
	.loc 1 14 0
	mov	_U1STAbits,w0
	and	w0,#1,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L6
.L1:
	.loc 1 34 0
	ulnk	
	mov.d	[--w15],w6
	mov.d	[--w15],w4
	mov.d	[--w15],w2
	mov.d	[--w15],w0
	pop	_RCOUNT
	retfie	
	.set ___PA___,0
.LFE0:
	.size	__U1RXInterrupt, .-__U1RXInterrupt
	.align	2
	.global	__U1TXInterrupt	; export
	.type	__U1TXInterrupt,@function
__U1TXInterrupt:
.LFB1:
	.loc 1 39 0
	.set ___PA___,1
	mov.d	w0,[w15++]
.LCFI6:
	lnk	#0
.LCFI7:
	.loc 1 40 0
	mov	#_TxFifo+129,w0
	mov.b	[w0],w1
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L8
	.loc 1 42 0
	bclr.b	_IEC0bits+1,#4
	.loc 1 43 0
	bra	.L7
.L8:
	.loc 1 45 0
	mov	#_TxFifo+129,w0
	mov.b	[w0],w0
	ze	w0,w0
	mov	#_TxFifo,w1
	mov.b	[w1+w0],w0
	ze	w0,w0
	mov	w0,_U1TXREG
	.loc 1 46 0
	mov	#_TxFifo+129,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	mov.b	w0,w1
	bclr.b	w1,#7
	mov	#_TxFifo+129,w0
	mov.b	w1,[w0]
.L7:
	.loc 1 47 0
	ulnk	
	mov.d	[--w15],w0
	retfie	
	.set ___PA___,0
.LFE1:
	.size	__U1TXInterrupt, .-__U1TXInterrupt
	.align	2
	.global	_UartStartTx	; export
	.type	_UartStartTx,@function
_UartStartTx:
.LFB2:
	.loc 1 54 0
	.set ___PA___,1
	lnk	#4
.LCFI8:
	.loc 1 55 0
	clr.b	w0
	mov.b	w0,[w14]
	.loc 1 58 0
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	bclr.b	w0,#7
	mov.b	w0,[w14+1]
	.loc 1 59 0
	mov	#_TxFifo+129,w0
	mov.b	[w0],w1
	mov.b	[w14+1],w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	z,.L22
.L11:
	.loc 1 61 0
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	ze	w0,w0
	mov	#_TxFifo,w1
	mov.b	#-86,w2
	mov.b	w2,[w1+w0]
	.loc 1 62 0
	mov	#_TxFifo+128,w0
	mov.b	[w14+1],w1
	mov.b	w1,[w0]
.L18:
	.loc 1 66 0
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	bclr.b	w0,#7
	mov.b	w0,[w14+1]
	.loc 1 67 0
	mov	#_TxFifo+129,w0
	mov.b	[w0],w1
	mov.b	[w14+1],w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	z,.L23
.L13:
	.loc 1 69 0
	ze	[w14],w1
	mov	#_TxBuf,w0
	add	w1,w0,w0
	mov.b	[w0],w2
	mov.b	w2,[w14+2]
	.loc 1 70 0
	mov.b	_WasTxShift.7397,WREG
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L14
	.loc 1 72 0
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	ze	w0,w0
	mov.b	[w14+2],w1
	mov.b	#86,w3
	add.b	w1,w3,w2
	mov	#_TxFifo,w1
	mov.b	w2,[w1+w0]
	.loc 1 73 0
	inc.b	[w14],[w14]
	.loc 1 74 0
	clr.b	_WasTxShift.7397
	bra	.L15
.L14:
	.loc 1 76 0
	mov.b	[w14+2],w1
	mov.b	#-86,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	z,.L16
	mov.b	[w14+2],w1
	mov.b	#-84,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	z,.L16
	mov.b	[w14+2],w1
	mov.b	#-85,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L17
.L16:
	.loc 1 78 0
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	ze	w0,w0
	mov	#_TxFifo,w1
	mov.b	#-84,w2
	mov.b	w2,[w1+w0]
	.loc 1 79 0
	mov.b	#1,w0
	mov.b	WREG,_WasTxShift.7397
	bra	.L15
.L17:
	.loc 1 83 0
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	ze	w0,w0
	mov	#_TxFifo,w1
	mov.b	[w14+2],w2
	mov.b	w2,[w1+w0]
	.loc 1 84 0
	inc.b	[w14],[w14]
.L15:
	.loc 1 86 0
	mov	#_TxFifo+128,w0
	mov.b	[w14+1],w3
	mov.b	w3,[w0]
	.loc 1 87 0
	ze	[w14],w1
	mov	_TxBuf+20,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L18
	.loc 1 88 0
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	bclr.b	w0,#7
	mov.b	w0,[w14+1]
	.loc 1 89 0
	mov	#_TxFifo+129,w0
	mov.b	[w0],w1
	mov.b	[w14+1],w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	z,.L24
.L19:
	.loc 1 91 0
	mov	#_TxFifo+128,w0
	mov.b	[w0],w0
	ze	w0,w0
	mov	#_TxFifo,w1
	mov.b	#-85,w2
	mov.b	w2,[w1+w0]
	.loc 1 92 0
	mov	#_TxFifo+128,w0
	mov.b	[w14+1],w1
	mov.b	w1,[w0]
	.loc 1 94 0
	mov	_IEC0bits,w1
	mov	#4096,w0
	and	w1,w0,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L25
.L20:
	.loc 1 101 0
	mov	_IFS0bits,w1
	mov	#4096,w0
	and	w1,w0,w0
	cp0	w0
	.set ___BP___,0
	bra	z,.L21
	.loc 1 103 0
	mov	#170,w0
	mov	w0,_U1TXREG
	.loc 1 104 0
	mov	#_TxFifo+129,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	mov.b	w0,w1
	bclr.b	w1,#7
	mov	#_TxFifo+129,w0
	mov.b	w1,[w0]
.L21:
	.loc 1 106 0
	bset.b	_IEC0bits+1,#4
	bra	.L10
.L22:
	.loc 1 60 0
	nop	
	bra	.L10
.L23:
	.loc 1 68 0
	nop	
	bra	.L10
.L24:
	.loc 1 90 0
	nop	
	bra	.L10
.L25:
	.loc 1 95 0
	nop	
.L10:
	.loc 1 107 0
	ulnk	
	return	
	.set ___PA___,0
.LFE2:
	.size	_UartStartTx, .-_UartStartTx
	.align	2
	.global	_ExtractRcMessage	; export
	.type	_ExtractRcMessage,@function
_ExtractRcMessage:
.LFB3:
	.loc 1 113 0
	.set ___PA___,1
	lnk	#2
.LCFI9:
	.loc 1 116 0
	mov	#_RcFifo+129,w0
	mov.b	[w0],w0
	ze	w0,w1
	mov	#_RcFifo,w0
	add	w1,w0,w0
	mov.b	[w0],[w14]
	.loc 1 117 0
	mov	#_RcFifo+129,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	mov.b	w0,w1
	bclr.b	w1,#7
	mov	#_RcFifo+129,w0
	mov.b	w1,[w0]
	.loc 1 118 0
	mov.b	#-86,w0
	mov.b	[w14],w1
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	z,.L27
	.loc 1 120 0
	rcall	_ReportRcProtocolError
	.loc 1 121 0
	rcall	_WindRcFifo
	.loc 1 122 0
	clr	w0
	bra	.L28
.L27:
	.loc 1 124 0
	clr	w0
	mov	w0,_RcBuf+20
.L36:
	.loc 1 127 0
	mov	#_RcFifo+129,w0
	mov.b	[w0],w0
	ze	w0,w1
	mov	#_RcFifo,w0
	add	w1,w0,w0
	mov.b	[w0],[w14]
	.loc 1 128 0
	mov	#_RcFifo+129,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	mov.b	w0,w1
	bclr.b	w1,#7
	mov	#_RcFifo+129,w0
	mov.b	w1,[w0]
	.loc 1 130 0
	mov.b	#-84,w0
	mov.b	[w14],w1
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L29
	.loc 1 132 0
	mov.b	#1,w0
	mov.b	WREG,_WasRxShift.7403
	.loc 1 175 0
	bra	.L36
.L29:
	.loc 1 134 0
	mov.b	#-86,w0
	mov.b	[w14],w1
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L31
	.loc 1 136 0
	rcall	_ReportRcProtocolError
	.loc 1 137 0
	rcall	_WindRcFifo
	.loc 1 138 0
	clr	w0
	bra	.L28
.L31:
	.loc 1 140 0
	mov.b	#-85,w0
	mov.b	[w14],w1
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L32
	.loc 1 142 0
	mov	_RcBuf+20,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L33
	.loc 1 144 0
	rcall	_ReportRcProtocolError
	.loc 1 145 0
	clr	w0
	bra	.L28
.L33:
	.loc 1 147 0
	mov	#1,w0
	bra	.L28
.L32:
	.loc 1 157 0
	mov	_RcBuf+20,w0
	sub	w0,#20,[w15]
	.set ___BP___,0
	bra	nz,.L34
	.loc 1 159 0
	rcall	_ReportRcProtocolError
	.loc 1 160 0
	clr	w0
	bra	.L28
.L34:
	.loc 1 163 0
	mov.b	_WasRxShift.7403,WREG
	btg.b	w0,#0
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L35
	.loc 1 165 0
	mov	_RcBuf+20,w1
	mov	#_RcBuf,w0
	add	w1,w0,w0
	mov.b	[w14],[w0]
	.loc 1 166 0
	mov	_RcBuf+20,w0
	inc	w0,w0
	mov	w0,_RcBuf+20
	.loc 1 175 0
	bra	.L36
.L35:
	.loc 1 170 0
	mov	_RcBuf+20,w2
	mov.b	#-86,w0
	add.b	w0,[w14],w1
	mov	#_RcBuf,w0
	add	w2,w0,w0
	mov.b	w1,[w0]
	.loc 1 171 0
	clr.b	_WasRxShift.7403
	.loc 1 172 0
	mov	_RcBuf+20,w0
	inc	w0,w0
	mov	w0,_RcBuf+20
	.loc 1 175 0
	bra	.L36
.L28:
	.loc 1 177 0
	ulnk	
	return	
	.set ___PA___,0
.LFE3:
	.size	_ExtractRcMessage, .-_ExtractRcMessage
	.align	2
	.global	_WindRcFifo	; export
	.type	_WindRcFifo,@function
_WindRcFifo:
.LFB4:
	.loc 1 182 0
	.set ___PA___,1
	lnk	#2
.LCFI10:
.L40:
	.loc 1 186 0
	mov	#_RcFifo+129,w0
	mov.b	[w0],w1
	mov	#_RcFifo+128,w0
	mov.b	[w0],w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	z,.L41
.L38:
	.loc 1 188 0
	mov	#_RcFifo+129,w0
	mov.b	[w0],w0
	ze	w0,w1
	mov	#_RcFifo,w0
	add	w1,w0,w0
	mov.b	[w0],[w14]
	.loc 1 189 0
	mov	#_RcFifo+129,w0
	mov.b	[w0],w0
	inc.b	w0,w0
	mov.b	w0,w1
	bclr.b	w1,#7
	mov	#_RcFifo+129,w0
	mov.b	w1,[w0]
	.loc 1 190 0
	mov.b	#-85,w0
	mov.b	[w14],w1
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L40
	bra	.L37
.L41:
	.loc 1 187 0
	nop	
.L37:
	.loc 1 191 0
	ulnk	
	return	
	.set ___PA___,0
.LFE4:
	.size	_WindRcFifo, .-_WindRcFifo
	.section	.nbss,bss,near
	.type	_WasRxShift.7403,@object
	.size	_WasRxShift.7403, 1
_WasRxShift.7403:
	.skip	1
	.type	_WasTxShift.7397,@object
	.size	_WasTxShift.7397, 1
_WasTxShift.7397:
	.skip	1
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
	.4byte	.LCFI1-.LFB0
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x13
	.sleb128 -9
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -11
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x13
	.sleb128 -12
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0xb
	.byte	0x86
	.uleb128 0x9
	.byte	0x84
	.uleb128 0x7
	.byte	0x82
	.uleb128 0x5
	.byte	0x80
	.uleb128 0x3
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI6-.LFB1
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x13
	.sleb128 -5
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x4
	.byte	0x80
	.uleb128 0x2
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI8-.LFB2
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI9-.LFB3
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI10-.LFB4
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE8:
	.section	.text,code
.Letext0:
	.file 2 "Main.h"
	.file 3 "UART.h"
	.file 4 "p33FJ64MC804.h"
	.file 5 "ProcessUartMsg.h"
	.section	.debug_info,info
	.4byte	0x89f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.30) (A) Build date: Nov 22 2016"
	.byte	0x1
	.asciz	"UART.c"
	.ascii	"D:\\\\Projects\\\\Programming\\\\CatalysisTFS\\\\Catalysis\\\\dsPicP"
	.asciz	"rog"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.asciz	"UINT"
	.byte	0x2
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.asciz	"BYTE"
	.byte	0x2
	.byte	0x5
	.4byte	0xc6
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
	.byte	0x16
	.byte	0x3
	.byte	0xc
	.4byte	0x128
	.uleb128 0x5
	.asciz	"Data"
	.byte	0x3
	.byte	0xe
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"Length"
	.byte	0x3
	.byte	0xf
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x6
	.4byte	0xba
	.4byte	0x138
	.uleb128 0x7
	.4byte	0xaa
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.asciz	"MessageBuffer"
	.byte	0x3
	.byte	0x10
	.4byte	0xff
	.uleb128 0x4
	.byte	0x82
	.byte	0x3
	.byte	0x13
	.4byte	0x186
	.uleb128 0x5
	.asciz	"Buffer"
	.byte	0x3
	.byte	0x15
	.4byte	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"NIn"
	.byte	0x3
	.byte	0x16
	.4byte	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x5
	.asciz	"NOut"
	.byte	0x3
	.byte	0x17
	.4byte	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x81
	.byte	0x0
	.uleb128 0x6
	.4byte	0xba
	.4byte	0x196
	.uleb128 0x7
	.4byte	0xaa
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2
	.asciz	"FIFO"
	.byte	0x3
	.byte	0x19
	.4byte	0x14d
	.uleb128 0x8
	.asciz	"tagIFS0BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x16e
	.4byte	0x2e9
	.uleb128 0x9
	.asciz	"INT0IF"
	.byte	0x4
	.2byte	0x16f
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"IC1IF"
	.byte	0x4
	.2byte	0x170
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"OC1IF"
	.byte	0x4
	.2byte	0x171
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"T1IF"
	.byte	0x4
	.2byte	0x172
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"DMA0IF"
	.byte	0x4
	.2byte	0x173
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"IC2IF"
	.byte	0x4
	.2byte	0x174
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"OC2IF"
	.byte	0x4
	.2byte	0x175
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"T2IF"
	.byte	0x4
	.2byte	0x176
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"T3IF"
	.byte	0x4
	.2byte	0x177
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"SPI1EIF"
	.byte	0x4
	.2byte	0x178
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"SPI1IF"
	.byte	0x4
	.2byte	0x179
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"U1RXIF"
	.byte	0x4
	.2byte	0x17a
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"U1TXIF"
	.byte	0x4
	.2byte	0x17b
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"AD1IF"
	.byte	0x4
	.2byte	0x17c
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"DMA1IF"
	.byte	0x4
	.2byte	0x17d
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"IFS0BITS"
	.byte	0x4
	.2byte	0x17e
	.4byte	0x1a2
	.uleb128 0x8
	.asciz	"tagIEC0BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x1cf
	.4byte	0x441
	.uleb128 0x9
	.asciz	"INT0IE"
	.byte	0x4
	.2byte	0x1d0
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"IC1IE"
	.byte	0x4
	.2byte	0x1d1
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"OC1IE"
	.byte	0x4
	.2byte	0x1d2
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"T1IE"
	.byte	0x4
	.2byte	0x1d3
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"DMA0IE"
	.byte	0x4
	.2byte	0x1d4
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"IC2IE"
	.byte	0x4
	.2byte	0x1d5
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"OC2IE"
	.byte	0x4
	.2byte	0x1d6
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"T2IE"
	.byte	0x4
	.2byte	0x1d7
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"T3IE"
	.byte	0x4
	.2byte	0x1d8
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"SPI1EIE"
	.byte	0x4
	.2byte	0x1d9
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"SPI1IE"
	.byte	0x4
	.2byte	0x1da
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"U1RXIE"
	.byte	0x4
	.2byte	0x1db
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"U1TXIE"
	.byte	0x4
	.2byte	0x1dc
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"AD1IE"
	.byte	0x4
	.2byte	0x1dd
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"DMA1IE"
	.byte	0x4
	.2byte	0x1de
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"IEC0BITS"
	.byte	0x4
	.2byte	0x1df
	.4byte	0x2fa
	.uleb128 0xb
	.byte	0x2
	.byte	0x4
	.2byte	0x87f
	.4byte	0x57a
	.uleb128 0x9
	.asciz	"URXDA"
	.byte	0x4
	.2byte	0x880
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"OERR"
	.byte	0x4
	.2byte	0x881
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"FERR"
	.byte	0x4
	.2byte	0x882
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"PERR"
	.byte	0x4
	.2byte	0x883
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"RIDLE"
	.byte	0x4
	.2byte	0x884
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"ADDEN"
	.byte	0x4
	.2byte	0x885
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"URXISEL"
	.byte	0x4
	.2byte	0x886
	.4byte	0xaa
	.byte	0x2
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"TRMT"
	.byte	0x4
	.2byte	0x887
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"UTXBF"
	.byte	0x4
	.2byte	0x888
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"UTXEN"
	.byte	0x4
	.2byte	0x889
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"UTXBRK"
	.byte	0x4
	.2byte	0x88a
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"UTXISEL0"
	.byte	0x4
	.2byte	0x88c
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"UTXINV"
	.byte	0x4
	.2byte	0x88d
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"UTXISEL1"
	.byte	0x4
	.2byte	0x88e
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xb
	.byte	0x2
	.byte	0x4
	.2byte	0x890
	.4byte	0x5b2
	.uleb128 0x9
	.asciz	"URXISEL0"
	.byte	0x4
	.2byte	0x892
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.asciz	"URXISEL1"
	.byte	0x4
	.2byte	0x893
	.4byte	0xaa
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x2
	.byte	0x4
	.2byte	0x87e
	.4byte	0x5c6
	.uleb128 0xd
	.4byte	0x452
	.uleb128 0xd
	.4byte	0x57a
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagU1STABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x87d
	.4byte	0x5e5
	.uleb128 0xe
	.4byte	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"U1STABITS"
	.byte	0x4
	.2byte	0x896
	.4byte	0x5c6
	.uleb128 0xf
	.byte	0x1
	.asciz	"_U1RXInterrupt"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.4byte	0x640
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x10
	.4byte	0xba
	.byte	0x2
	.byte	0x7e
	.sleb128 1
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x10
	.4byte	0xba
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.asciz	"_U1TXInterrupt"
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5e
	.uleb128 0xf
	.byte	0x1
	.asciz	"UartStartTx"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5e
	.4byte	0x6be
	.uleb128 0x13
	.asciz	"i"
	.byte	0x1
	.byte	0x37
	.4byte	0xba
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x38
	.4byte	0xba
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x38
	.4byte	0xba
	.byte	0x2
	.byte	0x7e
	.sleb128 1
	.uleb128 0x13
	.asciz	"WasTxShift"
	.byte	0x1
	.byte	0x39
	.4byte	0x6be
	.byte	0x5
	.byte	0x3
	.4byte	_WasTxShift.7397
	.byte	0x0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x14
	.byte	0x1
	.asciz	"ExtractRcMessage"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	0x9e
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5e
	.4byte	0x716
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x72
	.4byte	0xba
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x13
	.asciz	"WasRxShift"
	.byte	0x1
	.byte	0x73
	.4byte	0x6be
	.byte	0x5
	.byte	0x3
	.4byte	_WasRxShift.7403
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.asciz	"WindRcFifo"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5e
	.4byte	0x743
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0xb7
	.4byte	0xba
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF2
	.byte	0x3
	.byte	0x1c
	.4byte	0x750
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x6be
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x17f
	.4byte	0x763
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x2e9
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x1e0
	.4byte	0x776
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x441
	.uleb128 0x17
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x897
	.4byte	0x789
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x5e5
	.uleb128 0x18
	.asciz	"U1TXREG"
	.byte	0x4
	.2byte	0x89a
	.4byte	0x7a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0xaa
	.uleb128 0x18
	.asciz	"U1RXREG"
	.byte	0x4
	.2byte	0x8a9
	.4byte	0x7a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"TxFifo"
	.byte	0x5
	.byte	0x30
	.4byte	0x196
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"RcFifo"
	.byte	0x5
	.byte	0x31
	.4byte	0x196
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x5
	.4byte	0x138
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x138
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF2
	.byte	0x1
	.byte	0x7
	.4byte	0x750
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_IsUartRcMsg
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x17f
	.4byte	0x763
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x1e0
	.4byte	0x776
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x897
	.4byte	0x789
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.asciz	"U1TXREG"
	.byte	0x4
	.2byte	0x89a
	.4byte	0x7a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.asciz	"U1RXREG"
	.byte	0x4
	.2byte	0x8a9
	.4byte	0x7a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"TxFifo"
	.byte	0x1
	.byte	0x4
	.4byte	0x196
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.asciz	"RcFifo"
	.byte	0x1
	.byte	0x3
	.4byte	0x196
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_RcFifo
	.uleb128 0x1b
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x5
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_RcBuf
	.uleb128 0x1b
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TxBuf
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x97
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x8a3
	.4byte	0x5f7
	.asciz	"_U1RXInterrupt"
	.4byte	0x640
	.asciz	"_U1TXInterrupt"
	.4byte	0x65e
	.asciz	"UartStartTx"
	.4byte	0x6c7
	.asciz	"ExtractRcMessage"
	.4byte	0x716
	.asciz	"WindRcFifo"
	.4byte	0x7f5
	.asciz	"IsUartRcMsg"
	.4byte	0x865
	.asciz	"RcFifo"
	.4byte	0x87a
	.asciz	"RcBuf"
	.4byte	0x88e
	.asciz	"TxBuf"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x8a3
	.4byte	0x9e
	.asciz	"UINT"
	.4byte	0xba
	.asciz	"BYTE"
	.4byte	0x138
	.asciz	"MessageBuffer"
	.4byte	0x196
	.asciz	"FIFO"
	.4byte	0x1a2
	.asciz	"tagIFS0BITS"
	.4byte	0x2e9
	.asciz	"IFS0BITS"
	.4byte	0x2fa
	.asciz	"tagIEC0BITS"
	.4byte	0x441
	.asciz	"IEC0BITS"
	.4byte	0x5c6
	.asciz	"tagU1STABITS"
	.4byte	0x5e5
	.asciz	"U1STABITS"
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
	.asciz	"DataByte"
.LASF1:
	.asciz	"NewIndex"
.LASF5:
	.asciz	"U1STAbits"
.LASF3:
	.asciz	"IFS0bits"
.LASF2:
	.asciz	"IsUartRcMsg"
.LASF4:
	.asciz	"IEC0bits"
	.section	.text,code



	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
