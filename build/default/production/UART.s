	.file "C:\\SourceCode\\dsPicProg\\UART.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.nbss,bss,near
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
	.type	_IsUartRcMsg,@object
	.global	_IsUartRcMsg
_IsUartRcMsg:	.space	1
	.section	.isr.text,code
	.align	2
	.global	__U1RXInterrupt	; export
	.type	__U1RXInterrupt,@function
__U1RXInterrupt:
.LFB0:
.LSM0:
	.set ___PA___,1
	push	_RCOUNT
	mov.d	w0,[w15++]
	mov.d	w2,[w15++]
	mov.d	w4,[w15++]
	mov.d	w6,[w15++]
	lnk	#2
.LSM1:
	bclr.b	_IFS0bits+1,#3
.LSM2:
	bra	.L2
.L6:
.LBB2:
.LSM3:
	mov	#_RcFifo+128,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	mov.b	w4,w0
	bclr.b	w0,#7
	mov.b	w0,[w14]
.LSM4:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	sub.b	w4,[w14],[w15]
	.set ___BP___,0
	bra	nz,.L3
.LSM5:
	rcall	_ReportFifoRxOverflow
.LSM6:
	bra	.L1
.L3:
.LSM7:
	mov	_U1RXREG,w4
	mov.b	w4,[w14+1]
.LSM8:
	mov	#_RcFifo+128,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_RcFifo,w4
	add	w5,w4,w4
	mov.b	[w14+1],w5
	mov.b	w5,[w4]
.LSM9:
	mov.b	[w14],w0
	mov.b	WREG,_RcFifo+128
.LSM10:
	mov.b	[w14+1],w5
	mov.b	#-85,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L5
.LSM11:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_IsUartRcMsg
	exch	w0,w4
.L5:
.LSM12:
	mov	_U1STAbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L2
.LSM13:
	bclr.b	_U1STAbits,#1
.LSM14:
	rcall	_ReportFifoRxOverflow
.L2:
.LBE2:
.LSM15:
	mov	_U1STAbits,w4
	and	w4,#1,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L6
.L1:
.LSM16:
	ulnk	
	mov.d	[--w15],w6
	mov.d	[--w15],w4
	mov.d	[--w15],w2
	mov.d	[--w15],w0
	pop	_RCOUNT
	retfie	
	.set ___PA___,0
.LFE0:
	.align	2
	.global	__U1TXInterrupt	; export
	.type	__U1TXInterrupt,@function
__U1TXInterrupt:
.LFB1:
.LSM17:
	.set ___PA___,1
	mov	w0,[w15++]
	mov.d	w4,[w15++]
	lnk	#0
.LSM18:
	mov	#_TxFifo+129,w5
	mov.b	[w5],w5
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L8
.LSM19:
	bclr.b	_IEC0bits+1,#4
.LSM20:
	bra	.L7
.L8:
.LSM21:
	mov	#_TxFifo+129,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_TxFifo,w4
	add	w5,w4,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,_U1TXREG
.LSM22:
	mov	#_TxFifo+129,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	bclr.b	w4,#7
	mov	w4,w0
	mov.b	WREG,_TxFifo+129
.L7:
.LSM23:
	ulnk	
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
	.set ___PA___,0
.LFE1:
	.align	2
	.global	_UartStartTx	; export
	.type	_UartStartTx,@function
_UartStartTx:
.LFB2:
.LSM24:
	.set ___PA___,1
	lnk	#4
.LSM25:
	clr.b	w4
	mov.b	w4,[w14]
.LSM26:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	bclr.b	w4,#7
	mov.b	w4,[w14+1]
.LSM27:
	mov	#_TxFifo+129,w5
	mov.b	[w5],w5
	mov.b	[w14+1],w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L22
.L11:
.LSM28:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_TxFifo,w4
	add	w5,w4,w5
	mov.b	#-86,w4
	mov.b	w4,[w5]
.LSM29:
	mov.b	[w14+1],w0
	mov.b	WREG,_TxFifo+128
.L18:
.LSM30:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	bclr.b	w4,#7
	mov.b	w4,[w14+1]
.LSM31:
	mov	#_TxFifo+129,w5
	mov.b	[w5],w5
	mov.b	[w14+1],w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L23
.L13:
.LSM32:
	mov.b	[w14],w4
	ze	w4,w5
	mov	#_TxBuf,w4
	add	w5,w4,w4
	mov.b	[w4],w5
	mov.b	w5,[w14+2]
.LSM33:
	mov	#_WasTxShift.7385,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L14
.LSM34:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	ze	w4,w6
	mov.b	[w14+2],w4
	add.b	#86,w4
	mov	#_TxFifo,w5
	add	w6,w5,w5
	mov.b	w4,[w5]
.LSM35:
	inc.b	[w14],[w14]
.LSM36:
	clr.b	w4
	exch	w0,w4
	mov.b	WREG,_WasTxShift.7385
	exch	w0,w4
	bra	.L15
.L14:
.LSM37:
	mov.b	[w14+2],w5
	mov.b	#-86,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L16
	mov.b	[w14+2],w5
	mov.b	#-84,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L16
	mov.b	[w14+2],w5
	mov.b	#-85,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L17
.L16:
.LSM38:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_TxFifo,w4
	add	w5,w4,w5
	mov.b	#-84,w4
	mov.b	w4,[w5]
.LSM39:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_WasTxShift.7385
	exch	w0,w4
	bra	.L15
.L17:
.LSM40:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_TxFifo,w4
	add	w5,w4,w4
	mov.b	[w14+2],w0
	mov.b	w0,[w4]
.LSM41:
	inc.b	[w14],[w14]
.L15:
.LSM42:
	mov.b	[w14+1],w0
	mov.b	WREG,_TxFifo+128
.LSM43:
	mov.b	[w14],w4
	ze	w4,w5
	mov	_TxBuf+20,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L18
.LSM44:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	bclr.b	w4,#7
	mov.b	w4,[w14+1]
.LSM45:
	mov	#_TxFifo+129,w5
	mov.b	[w5],w5
	mov.b	[w14+1],w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L24
.L19:
.LSM46:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_TxFifo,w4
	add	w5,w4,w5
	mov.b	#-85,w4
	mov.b	w4,[w5]
.LSM47:
	mov.b	[w14+1],w0
	mov.b	WREG,_TxFifo+128
.LSM48:
	mov	_IEC0bits,w5
	mov	#4096,w4
	and	w5,w4,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L25
.L20:
.LSM49:
	mov	_IFS0bits,w5
	mov	#4096,w4
	and	w5,w4,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L21
.LSM50:
	mov	#170,w4
	mov	w4,_U1TXREG
.LSM51:
	mov	#_TxFifo+129,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	bclr.b	w4,#7
	exch	w0,w4
	mov.b	WREG,_TxFifo+129
	exch	w0,w4
.L21:
.LSM52:
	bset.b	_IEC0bits+1,#4
	bra	.L10
.L22:
.LSM53:
	nop	
	bra	.L10
.L23:
.LSM54:
	nop	
	bra	.L10
.L24:
.LSM55:
	nop	
	bra	.L10
.L25:
.LSM56:
	nop	
.L10:
.LSM57:
	ulnk	
	return	
	.set ___PA___,0
.LFE2:
	.align	2
	.global	_ExtractRcMessage	; export
	.type	_ExtractRcMessage,@function
_ExtractRcMessage:
.LFB3:
.LSM58:
	.set ___PA___,1
	lnk	#2
.LSM59:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_RcFifo,w4
	add	w5,w4,w4
	mov.b	[w4],[w14]
.LSM60:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	bclr.b	w4,#7
	exch	w0,w4
	mov.b	WREG,_RcFifo+129
	exch	w0,w4
.LSM61:
	mov.b	#-86,w4
	mov.b	[w14],w5
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L27
.LSM62:
	rcall	_ReportRcProtocolError
.LSM63:
	rcall	_WindRcFifo
.LSM64:
	clr	w4
	bra	.L28
.L27:
.LSM65:
	clr	w4
	mov	w4,_RcBuf+20
.L36:
.LSM66:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_RcFifo,w4
	add	w5,w4,w4
	mov.b	[w4],[w14]
.LSM67:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	bclr.b	w4,#7
	exch	w0,w4
	mov.b	WREG,_RcFifo+129
	exch	w0,w4
.LSM68:
	mov.b	#-84,w4
	mov.b	[w14],w5
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L29
.LSM69:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_WasRxShift.7391
	exch	w0,w4
.LSM70:
	bra	.L36
.L29:
.LSM71:
	mov.b	#-86,w4
	mov.b	[w14],w5
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L31
.LSM72:
	rcall	_ReportRcProtocolError
.LSM73:
	rcall	_WindRcFifo
.LSM74:
	clr	w4
	bra	.L28
.L31:
.LSM75:
	mov.b	#-85,w4
	mov.b	[w14],w5
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L32
.LSM76:
	mov	_RcBuf+20,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L33
.LSM77:
	rcall	_ReportRcProtocolError
.LSM78:
	clr	w4
	bra	.L28
.L33:
.LSM79:
	mov	#1,w4
	bra	.L28
.L32:
.LSM80:
	mov	_RcBuf+20,w4
	sub	w4,#20,[w15]
	.set ___BP___,0
	bra	nz,.L34
.LSM81:
	rcall	_ReportRcProtocolError
.LSM82:
	clr	w4
	bra	.L28
.L34:
.LSM83:
	mov	#_WasRxShift.7391,w4
	mov.b	[w4],w4
	btg.b	w4,#0
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L35
.LSM84:
	mov	_RcBuf+20,w5
	mov	#_RcBuf,w4
	add	w5,w4,w4
	mov.b	[w14],[w4]
.LSM85:
	mov	_RcBuf+20,w4
	inc	w4,w4
	mov	w4,_RcBuf+20
.LSM86:
	bra	.L36
.L35:
.LSM87:
	mov	_RcBuf+20,w6
	mov.b	#-86,w4
	add.b	w4,[w14],w4
	mov	#_RcBuf,w5
	add	w6,w5,w5
	mov.b	w4,[w5]
.LSM88:
	clr.b	w4
	exch	w0,w4
	mov.b	WREG,_WasRxShift.7391
	exch	w0,w4
.LSM89:
	mov	_RcBuf+20,w4
	inc	w4,w4
	mov	w4,_RcBuf+20
.LSM90:
	bra	.L36
.L28:
.LSM91:
	mov	w4,w0
	ulnk	
	return	
	.set ___PA___,0
.LFE3:
	.align	2
	.global	_WindRcFifo	; export
	.type	_WindRcFifo,@function
_WindRcFifo:
.LFB4:
.LSM92:
	.set ___PA___,1
	lnk	#2
.L40:
.LSM93:
	mov	#_RcFifo+129,w5
	mov.b	[w5],w5
	mov	#_RcFifo+128,w4
	mov.b	[w4],w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L41
.L38:
.LSM94:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_RcFifo,w4
	add	w5,w4,w4
	mov.b	[w4],[w14]
.LSM95:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	bclr.b	w4,#7
	exch	w0,w4
	mov.b	WREG,_RcFifo+129
	exch	w0,w4
.LSM96:
	mov.b	#-85,w4
	mov.b	[w14],w5
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L40
	bra	.L37
.L41:
.LSM97:
	nop	
.L37:
.LSM98:
	ulnk	
	return	
	.set ___PA___,0
.LFE4:
	.pushsection	.nbss,bss,near
_WasRxShift.7391:	.space	1
	.popsection
	.pushsection	.nbss,bss,near
_WasTxShift.7385:	.space	1
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
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	4
.LEFDE8:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x87b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.22) (A) Build date: Aug 19 2014"
	.byte	0x1
	.asciz	"UART.c"
	.asciz	"C:\\\\SourceCode\\\\dsPicProg"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.asciz	"UINT"
	.byte	0x2
	.byte	0x4
	.4byte	0x86
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.asciz	"BYTE"
	.byte	0x2
	.byte	0x5
	.4byte	0xa2
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
	.4byte	0x104
	.uleb128 0x5
	.asciz	"Data"
	.byte	0x3
	.byte	0xe
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"Length"
	.byte	0x3
	.byte	0xf
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x6
	.4byte	0x96
	.4byte	0x114
	.uleb128 0x7
	.4byte	0x86
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.asciz	"MessageBuffer"
	.byte	0x3
	.byte	0x10
	.4byte	0xdb
	.uleb128 0x4
	.byte	0x82
	.byte	0x3
	.byte	0x13
	.4byte	0x162
	.uleb128 0x5
	.asciz	"Buffer"
	.byte	0x3
	.byte	0x15
	.4byte	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"NIn"
	.byte	0x3
	.byte	0x16
	.4byte	0x96
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x5
	.asciz	"NOut"
	.byte	0x3
	.byte	0x17
	.4byte	0x96
	.byte	0x3
	.byte	0x23
	.uleb128 0x81
	.byte	0x0
	.uleb128 0x6
	.4byte	0x96
	.4byte	0x172
	.uleb128 0x7
	.4byte	0x86
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2
	.asciz	"FIFO"
	.byte	0x3
	.byte	0x19
	.4byte	0x129
	.uleb128 0x8
	.asciz	"tagIFS0BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x16e
	.4byte	0x2c5
	.uleb128 0x9
	.asciz	"INT0IF"
	.byte	0x4
	.2byte	0x16f
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x17e
	.uleb128 0x8
	.asciz	"tagIEC0BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x1cf
	.4byte	0x41d
	.uleb128 0x9
	.asciz	"INT0IE"
	.byte	0x4
	.2byte	0x1d0
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x2d6
	.uleb128 0xb
	.byte	0x2
	.byte	0x4
	.2byte	0x87f
	.4byte	0x556
	.uleb128 0x9
	.asciz	"URXDA"
	.byte	0x4
	.2byte	0x880
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x58e
	.uleb128 0x9
	.asciz	"URXISEL0"
	.byte	0x4
	.2byte	0x892
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x5a2
	.uleb128 0xd
	.4byte	0x42e
	.uleb128 0xd
	.4byte	0x556
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagU1STABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x87d
	.4byte	0x5c1
	.uleb128 0xe
	.4byte	0x58e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"U1STABITS"
	.byte	0x4
	.2byte	0x896
	.4byte	0x5a2
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
	.4byte	0x61c
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x10
	.4byte	0x96
	.byte	0x2
	.byte	0x7e
	.sleb128 1
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x10
	.4byte	0x96
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
	.4byte	0x69a
	.uleb128 0x13
	.asciz	"i"
	.byte	0x1
	.byte	0x37
	.4byte	0x96
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x38
	.4byte	0x96
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x38
	.4byte	0x96
	.byte	0x2
	.byte	0x7e
	.sleb128 1
	.uleb128 0x13
	.asciz	"WasTxShift"
	.byte	0x1
	.byte	0x39
	.4byte	0x69a
	.byte	0x5
	.byte	0x3
	.4byte	_WasTxShift.7385
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
	.4byte	0x7a
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5e
	.4byte	0x6f2
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x72
	.4byte	0x96
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x13
	.asciz	"WasRxShift"
	.byte	0x1
	.byte	0x73
	.4byte	0x69a
	.byte	0x5
	.byte	0x3
	.4byte	_WasRxShift.7391
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
	.4byte	0x71f
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0xb7
	.4byte	0x96
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF2
	.byte	0x3
	.byte	0x1c
	.4byte	0x72c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x69a
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x17f
	.4byte	0x73f
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x2c5
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x1e0
	.4byte	0x752
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x41d
	.uleb128 0x17
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x897
	.4byte	0x765
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x5c1
	.uleb128 0x18
	.asciz	"U1TXREG"
	.byte	0x4
	.2byte	0x89a
	.4byte	0x77c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x86
	.uleb128 0x18
	.asciz	"U1RXREG"
	.byte	0x4
	.2byte	0x8a9
	.4byte	0x77c
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"TxFifo"
	.byte	0x5
	.byte	0x30
	.4byte	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"RcFifo"
	.byte	0x5
	.byte	0x31
	.4byte	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x5
	.4byte	0x114
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x114
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF2
	.byte	0x1
	.byte	0x7
	.4byte	0x72c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_IsUartRcMsg
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x17f
	.4byte	0x73f
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x1e0
	.4byte	0x752
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x897
	.4byte	0x765
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.asciz	"U1TXREG"
	.byte	0x4
	.2byte	0x89a
	.4byte	0x77c
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.asciz	"U1RXREG"
	.byte	0x4
	.2byte	0x8a9
	.4byte	0x77c
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"TxFifo"
	.byte	0x1
	.byte	0x4
	.4byte	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.asciz	"RcFifo"
	.byte	0x1
	.byte	0x3
	.4byte	0x172
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_RcFifo
	.uleb128 0x1b
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x5
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_RcBuf
	.uleb128 0x1b
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x114
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
	.4byte	0x87f
	.4byte	0x5d3
	.asciz	"_U1RXInterrupt"
	.4byte	0x61c
	.asciz	"_U1TXInterrupt"
	.4byte	0x63a
	.asciz	"UartStartTx"
	.4byte	0x6a3
	.asciz	"ExtractRcMessage"
	.4byte	0x6f2
	.asciz	"WindRcFifo"
	.4byte	0x7d1
	.asciz	"IsUartRcMsg"
	.4byte	0x841
	.asciz	"RcFifo"
	.4byte	0x856
	.asciz	"RcBuf"
	.4byte	0x86a
	.asciz	"TxBuf"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x87f
	.4byte	0x7a
	.asciz	"UINT"
	.4byte	0x96
	.asciz	"BYTE"
	.4byte	0x114
	.asciz	"MessageBuffer"
	.4byte	0x172
	.asciz	"FIFO"
	.4byte	0x17e
	.asciz	"tagIFS0BITS"
	.4byte	0x2c5
	.asciz	"IFS0BITS"
	.4byte	0x2d6
	.asciz	"tagIEC0BITS"
	.4byte	0x41d
	.asciz	"IEC0BITS"
	.4byte	0x5a2
	.asciz	"tagU1STABITS"
	.4byte	0x5c1
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
	.asciz	"UART.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"Main.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"UART.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"p33FJ64MC804.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"ProcessUartMsg.h"
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
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x16
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x15
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
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM16
	.byte	0x28
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
	.4byte	.LSM17
	.byte	0x3a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM19
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM20
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM21
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM22
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM23
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
	.4byte	.LSM24
	.byte	0x49
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM26
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM28
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM29
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM30
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM31
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM32
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM39
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM41
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM42
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM43
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM44
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM45
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM46
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM47
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM48
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM49
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM50
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM51
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM52
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x3
	.sleb128 -46
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM54
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM55
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM56
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM57
	.byte	0x20
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
	.4byte	.LSM58
	.byte	0x84
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM59
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM61
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM62
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM63
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM64
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM65
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM66
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM67
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM68
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM69
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM70
	.byte	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM71
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM72
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM73
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM74
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM75
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM76
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM77
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM78
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM79
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM81
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM82
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM83
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM84
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM85
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM86
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM89
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM90
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM91
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM92
	.byte	0xc9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM93
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM94
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM95
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM96
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM97
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM98
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
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
