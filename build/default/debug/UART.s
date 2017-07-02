	.file "C:\\SourceCode\\dsPicProg\\UART.c"
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
	mov.d	w8,[w15++]
.LSM1:
	bclr.b	_IFS0bits+1,#3
.LBB2:
.LSM2:
	mov.b	#-85,w8
.LSM3:
	mov.b	#1,w9
.LSM4:
	mov.b	_RcFifo+129,WREG
	mov	#_RcFifo+128,w5
	mov.b	[w5],w5
.L6:
.LBE2:
.LSM5:
	btst	_U1STAbits,#0
	.set ___BP___,3
	bra	z,.L10
.L7:
.LBB3:
.LSM6:
	inc.b	w5,w4
	bclr.b	w4,#7
.LSM7:
	sub.b	w0,w4,[w15]
	.set ___BP___,3
	bra	z,.L11
.LSM8:
	mov	_U1RXREG,w6
.LSM9:
	ze	w5,w5
	mov	#_RcFifo,w7
	mov.b	w6,[w7+w5]
.LSM10:
	sub.b	w8,w6,[w15]
	.set ___BP___,28
	bra	z,.L12
.LSM11:
	btst	_U1STAbits,#1
	.set ___BP___,3
	bra	nz,.L13
.L8:
.LSM12:
	mov.b	w4,w5
.LBE3:
.LSM13:
	btst	_U1STAbits,#0
	.set ___BP___,97
	bra	nz,.L7
.L10:
	mov	w5,w0
	mov.b	WREG,_RcFifo+128
.LSM14:
	mov.d	[--w15],w8
	mov.d	[--w15],w6
	mov.d	[--w15],w4
	mov.d	[--w15],w2
	mov.d	[--w15],w0
	pop	_RCOUNT
	retfie	
.L14:
	.set ___PA___,0
.L12:
.LBB4:
.LSM15:
	exch	w0,w9
	mov.b	WREG,_IsUartRcMsg
	exch	w0,w9
.LSM16:
	btst	_U1STAbits,#1
	.set ___BP___,97
	bra	z,.L8
.L13:
	exch	w0,w4
	mov.b	WREG,_RcFifo+128
	exch	w0,w4
.LSM17:
	bclr.b	_U1STAbits,#1
.LSM18:
	rcall	_ReportFifoRxOverflow
.LSM19:
	mov.b	_RcFifo+129,WREG
	mov	#_RcFifo+128,w5
	mov.b	[w5],w5
	bra	.L6
.L11:
	exch	w0,w5
	mov.b	WREG,_RcFifo+128
	exch	w0,w5
.LSM20:
	rcall	_ReportFifoRxOverflow
.LBE4:
.LSM21:
	mov.d	[--w15],w8
	mov.d	[--w15],w6
	mov.d	[--w15],w4
	mov.d	[--w15],w2
	mov.d	[--w15],w0
	pop	_RCOUNT
	retfie	
	bra	.L14
.LFE0:
	.align	2
	.global	__U1TXInterrupt	; export
	.type	__U1TXInterrupt,@function
__U1TXInterrupt:
.LFB1:
.LSM22:
	.set ___PA___,1
	mov	w0,[w15++]
	mov.d	w4,[w15++]
	mov	w6,[w15++]
.LSM23:
	mov	#_TxFifo+129,w4
	mov.b	[w4],w4
	mov	#_TxFifo+128,w5
	mov.b	[w5],w5
	sub.b	w4,w5,[w15]
	.set ___BP___,19
	bra	z,.L20
.LSM24:
	ze	w4,w5
	mov	#_TxFifo,w6
	mov.b	[w6+w5],w5
	ze	w5,w5
	mov	w5,_U1TXREG
.LSM25:
	inc.b	w4,w4
	bclr.b	w4,#7
	mov	w4,w0
	mov.b	WREG,_TxFifo+129
.LSM26:
	mov	[--w15],w6
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
.L21:
	.set ___PA___,0
.L20:
.LSM27:
	bclr.b	_IEC0bits+1,#4
.LSM28:
	mov	[--w15],w6
	mov.d	[--w15],w4
	mov	[--w15],w0
	retfie	
	bra	.L21
.LFE1:
	.align	2
	.global	_UartStartTx	; export
	.type	_UartStartTx,@function
_UartStartTx:
.LFB2:
.LSM29:
	.set ___PA___,1
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov	w12,[w15++]
.LSM30:
	mov	#_TxFifo+128,w4
	mov.b	[w4],w4
	inc.b	w4,w5
	bclr.b	w5,#7
.LSM31:
	mov	#_TxFifo+129,w1
	mov.b	[w1],w1
	sub.b	w1,w5,[w15]
	.set ___BP___,19
	bra	z,.L23
.LSM32:
	ze	w4,w4
	mov	#_TxFifo,w3
	mov.b	#-86,w11
	mov.b	w11,[w3+w4]
.LSM33:
	mov	_TxBuf+20,w8
	mov	#_WasTxShift.7450,w2
	mov.b	[w2],w2
	mov.b	w5,w7
.LSM34:
	clr.b	w6
.LSM35:
	mov.b	#-84,w10
.LSM36:
	mov.b	#-85,w12
.LSM37:
	mov.b	w1,w9
.LSM38:
	inc.b	w7,w4
	bclr.b	w4,#7
.LSM39:
	sub.b	w4,w1,[w15]
	.set ___BP___,4
	bra	z,.L34
.L25:
.LSM40:
	ze	w6,w5
	mov	#_TxBuf,w0
	mov.b	[w0+w5],w0
.LSM41:
	sub.b	w2,#0,[w15]
	.set ___BP___,50
	bra	z,.L26
.LSM42:
	ze	w7,w7
	add.b	#86,w0
	mov.b	w0,[w3+w7]
.LSM43:
	inc.b	w6,w6
.LSM44:
	clr.b	w2
	ze	w6,w5
.L27:
.LSM45:
	sub	w5,w8,[w15]
	.set ___BP___,4
	bra	z,.L35
.L32:
.LSM46:
	mov.b	w4,w5
.LSM47:
	mov.b	w9,w1
	mov.b	w5,w7
.LSM48:
	inc.b	w7,w4
	bclr.b	w4,#7
.LSM49:
	sub.b	w4,w1,[w15]
	.set ___BP___,95
	bra	nz,.L25
.L34:
	mov	w2,w0
	mov.b	WREG,_WasTxShift.7450
	mov	w5,w0
	mov.b	WREG,_TxFifo+128
.L23:
.LSM50:
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
.L36:
	.set ___PA___,0
.L26:
.LSM51:
	sub.b	w0,w11,[w15]
	.set ___BP___,28
	bra	z,.L28
	sub.b	w0,w10,[w15]
	.set ___BP___,28
	bra	z,.L28
	sub.b	w0,w12,[w15]
	.set ___BP___,28
	bra	z,.L28
.LSM52:
	ze	w7,w7
	mov.b	w0,[w3+w7]
.LSM53:
	inc.b	w6,w6
	ze	w6,w5
.LSM54:
	sub	w5,w8,[w15]
	.set ___BP___,95
	bra	nz,.L32
.L35:
	exch	w0,w2
	mov.b	WREG,_WasTxShift.7450
	exch	w0,w2
	exch	w0,w4
	mov.b	WREG,_TxFifo+128
	exch	w0,w4
.LSM55:
	inc.b	w4,w5
	bclr.b	w5,#7
.LSM56:
	sub.b	w5,w1,[w15]
	.set ___BP___,19
	bra	z,.L23
.LSM57:
	ze	w4,w4
	mov.b	#-85,w6
	mov.b	w6,[w3+w4]
.LSM58:
	exch	w0,w5
	mov.b	WREG,_TxFifo+128
	exch	w0,w5
.LSM59:
	mov	#4096,w4
	mov	_IEC0bits,w6
	and	w4,w6,w5
	sub	w5,#0,[w15]
	.set ___BP___,39
	bra	nz,.L23
.LSM60:
	mov	_IFS0bits,w5
	and	w4,w5,w4
	sub	w4,#0,[w15]
	.set ___BP___,50
	bra	z,.L31
.LSM61:
	mov	#170,w4
	mov	w4,_U1TXREG
.LSM62:
	inc.b	w1,w1
	bclr.b	w1,#7
	mov	w1,w0
	mov.b	WREG,_TxFifo+129
.L31:
.LSM63:
	bset.b	_IEC0bits+1,#4
.LSM64:
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	bra	.L36
.L28:
.LSM65:
	ze	w7,w7
	mov.b	w10,[w3+w7]
.LSM66:
	mov.b	#1,w2
	bra	.L27
.LFE2:
	.align	2
	.global	_ExtractRcMessage	; export
	.type	_ExtractRcMessage,@function
_ExtractRcMessage:
.LFB3:
.LSM67:
	.set ___PA___,1
	mov.d	w8,[w15++]
.LSM68:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_RcFifo,w9
	mov.b	[w9+w5],w7
.LSM69:
	inc.b	w4,w4
	bclr.b	w4,#7
	exch	w0,w4
	mov.b	WREG,_RcFifo+129
	exch	w0,w4
.LSM70:
	mov.b	#-86,w5
	sub.b	w7,w5,[w15]
	.set ___BP___,40
	bra	nz,.L57
.LSM71:
	mov	#_WasRxShift.7456,w6
	mov.b	[w6],w6
	clr	w8
.LSM72:
	mov.b	#-84,w0
.LSM73:
	mov.b	#-85,w1
.L55:
.LSM74:
	ze	w4,w5
	mov.b	[w9+w5],w5
.LSM75:
	inc.b	w4,w4
	bclr.b	w4,#7
.LSM76:
	sub.b	w5,w0,[w15]
	.set ___BP___,28
	bra	z,.L52
.L61:
.LSM77:
	sub.b	w5,w7,[w15]
	.set ___BP___,3
	bra	z,.L58
.LSM78:
	sub.b	w5,w1,[w15]
	.set ___BP___,3
	bra	z,.L59
.LSM79:
	sub	w8,#20,[w15]
	.set ___BP___,3
	bra	z,.L60
.LSM80:
	sub.b	w6,#0,[w15]
	.set ___BP___,50
	bra	nz,.L50
.LSM81:
	mov	#_RcBuf,w2
	mov.b	w5,[w2+w8]
.LSM82:
	inc	w8,w8
.LSM83:
	ze	w4,w5
	mov.b	[w9+w5],w5
.LSM84:
	inc.b	w4,w4
	bclr.b	w4,#7
.LSM85:
	sub.b	w5,w0,[w15]
	.set ___BP___,72
	bra	nz,.L61
.L52:
.LSM86:
	mov.b	#1,w6
	bra	.L55
.L50:
.LSM87:
	add.b	w5,w7,w5
	mov	#_RcBuf,w6
	mov.b	w5,[w6+w8]
.LSM88:
	inc	w8,w8
.LSM89:
	clr.b	w6
	bra	.L55
.L57:
.LSM90:
	rcall	_ReportRcProtocolError
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	mov	#_RcFifo+128,w6
	mov.b	[w6],w6
	mov.b	w4,w5
.LBB9:
.LBB10:
.LSM91:
	mov.b	#-85,w7
.LSM92:
	sub.b	w4,w6,[w15]
	.set ___BP___,4
	bra	z,.L40
.L62:
.LSM93:
	inc.b	w4,w4
	bclr.b	w4,#7
.LSM94:
	ze	w5,w5
.LSM95:
	mov.b	[w9+w5],w5
	sub.b	w5,w7,[w15]
	.set ___BP___,14
	bra	z,.L40
	mov.b	w4,w5
.LSM96:
	sub.b	w4,w6,[w15]
	.set ___BP___,95
	bra	nz,.L62
.L40:
.LBE10:
.LBE9:
.LSM97:
	mov	w4,w0
	mov.b	WREG,_RcFifo+129
.LBB12:
.LBB11:
.LSM98:
	clr	w0
.L42:
.LBE11:
.LBE12:
.LSM99:
	mov.d	[--w15],w8
	return	
.L63:
	.set ___PA___,0
.L58:
.LSM100:
	exch	w0,w4
	mov.b	WREG,_RcFifo+129
	exch	w0,w4
	exch	w0,w6
	mov.b	WREG,_WasRxShift.7456
	exch	w0,w6
	mov	w8,_RcBuf+20
.LSM101:
	rcall	_ReportRcProtocolError
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	mov	#_RcFifo+128,w6
	mov.b	[w6],w6
	mov.b	w4,w5
.LBB13:
.LBB14:
.LSM102:
	mov.b	#-85,w7
.L47:
.LSM103:
	sub.b	w4,w6,[w15]
	.set ___BP___,4
	bra	z,.L40
.LSM104:
	inc.b	w4,w4
	bclr.b	w4,#7
.LSM105:
	ze	w5,w5
.LSM106:
	mov.b	[w9+w5],w5
	sub.b	w5,w7,[w15]
	.set ___BP___,14
	bra	z,.L40
	mov.b	w4,w5
	bra	.L47
.L59:
.LBE14:
.LBE13:
.LSM107:
	mov	w4,w0
	mov.b	WREG,_RcFifo+129
	mov	w6,w0
	mov.b	WREG,_WasRxShift.7456
	mov	w8,_RcBuf+20
.LSM108:
	mov	#1,w0
.LSM109:
	sub	w8,#0,[w15]
	.set ___BP___,71
	bra	nz,.L42
.LSM110:
	rcall	_ReportRcProtocolError
.LSM111:
	mov	w8,w0
.LSM112:
	mov.d	[--w15],w8
	return	
	bra	.L63
.L60:
.LSM113:
	exch	w0,w4
	mov.b	WREG,_RcFifo+129
	exch	w0,w4
	exch	w0,w6
	mov.b	WREG,_WasRxShift.7456
	exch	w0,w6
	mov	w8,_RcBuf+20
.LSM114:
	rcall	_ReportRcProtocolError
.LSM115:
	clr	w0
.LSM116:
	mov.d	[--w15],w8
	return	
	bra	.L63
.LFE3:
	.align	2
	.global	_WindRcFifo	; export
	.type	_WindRcFifo,@function
_WindRcFifo:
.LFB4:
.LSM117:
	.set ___PA___,1
.LSM118:
	mov	#_RcFifo+129,w4
	mov.b	[w4],w4
	mov	#_RcFifo+128,w7
	mov.b	[w7],w7
.LSM119:
	mov.b	#-85,w0
.L67:
.LSM120:
	sub.b	w4,w7,[w15]
	.set ___BP___,4
	bra	z,.L66
.LSM121:
	ze	w4,w5
	mov	#_RcFifo,w6
	mov.b	[w6+w5],w5
.LSM122:
	inc.b	w4,w4
	bclr.b	w4,#7
.LSM123:
	sub.b	w5,w0,[w15]
	.set ___BP___,86
	bra	nz,.L67
.L66:
	exch	w0,w4
	mov.b	WREG,_RcFifo+129
	exch	w0,w4
	return	
.LFE4:
	.section	.nbss,bss,near
	.type	_IsUartRcMsg,@object
	.global	_IsUartRcMsg
_IsUartRcMsg:	.space	1
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
	.pushsection	.nbss,bss,near
_WasRxShift.7456:	.space	1
	.popsection
	.pushsection	.nbss,bss,near
_WasTxShift.7450:	.space	1
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
	.4byte	0x8ba
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
	.byte	0x9
	.4byte	0x86
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.asciz	"BYTE"
	.byte	0x2
	.byte	0xa
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
	.byte	0x5f
	.4byte	0x616
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x10
	.4byte	0x96
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x10
	.4byte	0x96
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
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"UartStartTx"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.4byte	0x68f
	.uleb128 0x13
	.asciz	"i"
	.byte	0x1
	.byte	0x37
	.4byte	0x96
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF0
	.byte	0x1
	.byte	0x38
	.4byte	0x96
	.byte	0x1
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x38
	.4byte	0x96
	.uleb128 0x13
	.asciz	"WasTxShift"
	.byte	0x1
	.byte	0x39
	.4byte	0x68f
	.byte	0x5
	.byte	0x3
	.4byte	_WasTxShift.7450
	.byte	0x0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x15
	.byte	0x1
	.asciz	"WindRcFifo"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.byte	0x1
	.4byte	0x6b9
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0xb7
	.4byte	0x96
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.asciz	"ExtractRcMessage"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.4byte	0x743
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x72
	.4byte	0x96
	.uleb128 0x13
	.asciz	"WasRxShift"
	.byte	0x1
	.byte	0x73
	.4byte	0x68f
	.byte	0x5
	.byte	0x3
	.4byte	_WasRxShift.7456
	.uleb128 0x17
	.4byte	0x698
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0x725
	.uleb128 0x10
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0x18
	.4byte	0x6ad
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	0x698
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x10
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x18
	.4byte	0x6ad
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x698
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.4byte	0x75e
	.uleb128 0x1b
	.4byte	0x6ad
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF2
	.byte	0x3
	.byte	0x1c
	.4byte	0x76b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x68f
	.uleb128 0x1e
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x17f
	.4byte	0x77e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x2c5
	.uleb128 0x1e
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x1e0
	.4byte	0x791
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x41d
	.uleb128 0x1e
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x897
	.4byte	0x7a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x5c1
	.uleb128 0x1f
	.asciz	"U1TXREG"
	.byte	0x4
	.2byte	0x89a
	.4byte	0x7bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x86
	.uleb128 0x1f
	.asciz	"U1RXREG"
	.byte	0x4
	.2byte	0x8a9
	.4byte	0x7bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"TxFifo"
	.byte	0x5
	.byte	0x30
	.4byte	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"RcFifo"
	.byte	0x5
	.byte	0x31
	.4byte	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x5
	.4byte	0x114
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x114
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF2
	.byte	0x1
	.byte	0x7
	.4byte	0x76b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_IsUartRcMsg
	.uleb128 0x1e
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x17f
	.4byte	0x77e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x1e0
	.4byte	0x791
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x897
	.4byte	0x7a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.asciz	"U1TXREG"
	.byte	0x4
	.2byte	0x89a
	.4byte	0x7bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.asciz	"U1RXREG"
	.byte	0x4
	.2byte	0x8a9
	.4byte	0x7bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"TxFifo"
	.byte	0x1
	.byte	0x4
	.4byte	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.asciz	"RcFifo"
	.byte	0x1
	.byte	0x3
	.4byte	0x172
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_RcFifo
	.uleb128 0x22
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x5
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_RcBuf
	.uleb128 0x22
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
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	0x8be
	.4byte	0x5d3
	.asciz	"_U1RXInterrupt"
	.4byte	0x616
	.asciz	"_U1TXInterrupt"
	.4byte	0x634
	.asciz	"UartStartTx"
	.4byte	0x6b9
	.asciz	"ExtractRcMessage"
	.4byte	0x743
	.asciz	"WindRcFifo"
	.4byte	0x810
	.asciz	"IsUartRcMsg"
	.4byte	0x880
	.asciz	"RcFifo"
	.4byte	0x895
	.asciz	"RcBuf"
	.4byte	0x8a9
	.asciz	"TxBuf"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x8be
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
	.byte	0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM6
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM11
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM12
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM13
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM14
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM15
	.byte	0xd
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM16
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM17
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM19
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM20
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM21
	.byte	0x22
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
	.4byte	.LSM22
	.byte	0x3a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM24
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM27
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM28
	.byte	0x19
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
	.4byte	.LSM29
	.byte	0x49
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
	.byte	0x2e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM39
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x16
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
	.byte	0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM46
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM47
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM48
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM49
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM50
	.byte	0x3c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM51
	.byte	0x3
	.sleb128 -31
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM52
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM54
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM55
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM56
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM57
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM58
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM59
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM61
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM62
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM63
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM64
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM65
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM66
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
	.4byte	.LSM67
	.byte	0x84
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM68
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM69
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM70
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM71
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM72
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM73
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM74
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM75
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM76
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM77
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM78
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM79
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x1a
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
	.byte	0x3
	.sleb128 -39
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM84
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM85
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM86
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0x3a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM88
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM89
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM90
	.byte	0x3
	.sleb128 -51
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM91
	.byte	0x5a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM92
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM93
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM94
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM95
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM96
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM97
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM98
	.byte	0x3
	.sleb128 -50
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM99
	.byte	0x4b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM100
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM101
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM102
	.byte	0x4a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM103
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM104
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM105
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM106
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM107
	.byte	0x3
	.sleb128 -50
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM108
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM109
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM110
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM111
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM112
	.byte	0x34
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM113
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM114
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM115
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM116
	.byte	0x25
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
	.4byte	.LSM117
	.byte	0xc9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM118
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM120
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM121
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM122
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM123
	.byte	0x15
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
