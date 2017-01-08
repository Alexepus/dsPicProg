	.file "D:\\Projects\\Programming\\CatalysisTFS\\Catalysis\\dsPicProg\\ProcessUartMsg.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.bss,bss
	.type	_TxFifo,@object
	.global	_TxFifo
	.align	2
_TxFifo:	.space	130
	.section	.text,code
	.align	2
	.global	_ProcessUart1Msg	; export
	.type	_ProcessUart1Msg,@function
_ProcessUart1Msg:
.LFB5:
	.file 1 "ProcessUartMsg.c"
	.loc 1 11 0
	.set ___PA___,0
	lnk	#44
.LCFI0:
	mov	w0,[w14+42]
.L48:
	.loc 1 15 0
	setm	w2
	setm	w3
	mov	#_UartRcMsgSem,w0
	rcall	_tn_sem_wait
	.loc 1 16 0
	rcall	_ExtractRcMessage
	cp0	w0
	.set ___BP___,0
	bra	nz,.L2
	.loc 1 17 0
	bra	.L3
.L2:
	.loc 1 18 0
	mov	#_RcBuf,w0
	mov.b	[w0],w0
	mov.b	WREG,_Cmd.7954
	.loc 1 20 0
	mov.b	_Cmd.7954,WREG
	ze	w0,w0
	sub	w0,#10,[w15]
	.set ___BP___,0
	bra	z,.L15
	sub	w0,#10,[w15]
	.set ___BP___,0
	bra	gt,.L27
	sub	w0,#4,[w15]
	.set ___BP___,0
	bra	z,.L9
	sub	w0,#4,[w15]
	.set ___BP___,0
	bra	gt,.L28
	sub	w0,#1,[w15]
	.set ___BP___,0
	bra	z,.L6
	sub	w0,#1,[w15]
	.set ___BP___,0
	bra	gt,.L29
	cp0	w0
	.set ___BP___,0
	bra	z,.L5
	bra	.L4
.L29:
	sub	w0,#2,[w15]
	.set ___BP___,0
	bra	z,.L7
	sub	w0,#3,[w15]
	.set ___BP___,0
	bra	z,.L8
	bra	.L4
.L28:
	sub	w0,#7,[w15]
	.set ___BP___,0
	bra	z,.L12
	sub	w0,#7,[w15]
	.set ___BP___,0
	bra	gt,.L30
	sub	w0,#5,[w15]
	.set ___BP___,0
	bra	z,.L10
	sub	w0,#6,[w15]
	.set ___BP___,0
	bra	z,.L11
	bra	.L4
.L30:
	sub	w0,#8,[w15]
	.set ___BP___,0
	bra	z,.L13
	sub	w0,#9,[w15]
	.set ___BP___,0
	bra	z,.L14
	bra	.L4
.L27:
	sub	w0,#16,[w15]
	.set ___BP___,0
	bra	z,.L21
	sub	w0,#16,[w15]
	.set ___BP___,0
	bra	gt,.L31
	sub	w0,#13,[w15]
	.set ___BP___,0
	bra	z,.L18
	sub	w0,#13,[w15]
	.set ___BP___,0
	bra	gt,.L32
	sub	w0,#11,[w15]
	.set ___BP___,0
	bra	z,.L16
	sub	w0,#12,[w15]
	.set ___BP___,0
	bra	z,.L17
	bra	.L4
.L32:
	sub	w0,#14,[w15]
	.set ___BP___,0
	bra	z,.L19
	sub	w0,#15,[w15]
	.set ___BP___,0
	bra	z,.L20
	bra	.L4
.L31:
	mov	#241,w1
	sub	w0,w1,[w15]
	.set ___BP___,0
	bra	z,.L24
	mov	#241,w1
	sub	w0,w1,[w15]
	.set ___BP___,0
	bra	gt,.L33
	sub	w0,#17,[w15]
	.set ___BP___,0
	bra	z,.L22
	mov	#240,w1
	sub	w0,w1,[w15]
	.set ___BP___,0
	bra	z,.L23
	bra	.L4
.L33:
	mov	#253,w1
	sub	w0,w1,[w15]
	.set ___BP___,0
	bra	z,.L25
	mov	#254,w1
	sub	w0,w1,[w15]
	.set ___BP___,0
	bra	z,.L26
	bra	.L4
.L5:
.LBB2:
	.loc 1 26 0
	mov	#_TxBuf,w0
	mov	w0,[w14]
	.loc 1 27 0
	mov	#_ADC8x14Data,w1
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	ze	w0,w0
	add	w0,w0,w0
	add	w1,w0,w0
	mov	w0,[w14+2]
	.loc 1 28 0
	mov	[w14],w0
	clr.b	w1
	mov.b	w1,[w0]
	inc	[w14],[w14]
	.loc 1 29 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w1
	mov	[w14],w0
	mov.b	w1,[w0]
	inc	[w14],[w14]
	.loc 1 30 0
	mov	[w14+2],w0
	mov.b	[w0],w1
	mov	[w14],w0
	mov.b	w1,[w0]
	inc	[w14],[w14]
	mov	[w14+2],w0
	inc	w0,w0
	mov	w0,[w14+2]
	.loc 1 31 0
	mov	[w14+2],w0
	mov.b	[w0],w1
	mov	[w14],w0
	mov.b	w1,[w0]
	.loc 1 32 0
	mov	#4,w0
	mov	w0,_TxBuf+20
	.loc 1 33 0
	rcall	_UartStartTx
	.loc 1 34 0
	bra	.L3
.L6:
.LBE2:
.LBB3:
	.loc 1 39 0
	mov	#_RcBuf+1,w0
	mov	w0,[w14+4]
	.loc 1 40 0
	mov	#_DacData,w1
	mov	[w14+4],w0
	mov.b	[w0],w0
	ze	w0,w0
	add	w0,w0,w0
	add	w1,w0,w0
	mov	w0,[w14+6]
	mov	[w14+4],w0
	inc	w0,w0
	mov	w0,[w14+4]
	.loc 1 41 0
	mov	[w14+4],w0
	mov.b	[w0],w1
	mov	[w14+6],w0
	mov.b	w1,[w0]
	mov	[w14+6],w0
	inc	w0,w0
	mov	w0,[w14+6]
	mov	[w14+4],w0
	inc	w0,w0
	mov	w0,[w14+4]
	.loc 1 42 0
	mov	[w14+4],w0
	mov.b	[w0],w1
	mov	[w14+6],w0
	mov.b	w1,[w0]
	mov	[w14+6],w0
	dec	w0,w0
	mov	w0,[w14+6]
	.loc 1 43 0
	mov	[w14+6],w0
	mov	[w0],w1
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	rcall	_LoadDac
	.loc 1 44 0
	mov	#_TxBuf,w0
	mov.b	#1,w1
	mov.b	w1,[w0]
	.loc 1 45 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 46 0
	rcall	_UartStartTx
	.loc 1 47 0
	bra	.L3
.L12:
.LBE3:
.LBB4:
	.loc 1 51 0
	mov	#_ADC8x14DataAveraged,w1
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	ze	w0,w0
	add	w0,w0,w0
	add	w1,w0,w0
	mov	w0,[w14+8]
	.loc 1 52 0
	mov	#_TxBuf,w0
	mov.b	#7,w1
	mov.b	w1,[w0]
	.loc 1 53 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w1
	mov	#_TxBuf+1,w0
	mov.b	w1,[w0]
	.loc 1 54 0
	mov	[w14+8],w0
	mov.b	[w0],w1
	mov	#_TxBuf+2,w0
	mov.b	w1,[w0]
	mov	[w14+8],w0
	inc	w0,w0
	mov	w0,[w14+8]
	.loc 1 55 0
	mov	[w14+8],w0
	mov.b	[w0],w1
	mov	#_TxBuf+3,w0
	mov.b	w1,[w0]
	.loc 1 56 0
	mov	#4,w0
	mov	w0,_TxBuf+20
	.loc 1 57 0
	rcall	_UartStartTx
	.loc 1 58 0
	bra	.L3
.L7:
.LBE4:
.LBB5:
	.loc 1 63 0
	mov	#_RcBuf+1,w0
	mov	w0,[w14+10]
	.loc 1 64 0
	mov	#_Kp,w0
	mov	w0,[w14+12]
	.loc 1 65 0
	mov	[w14+10],w0
	mov.b	[w0],w1
	mov	[w14+12],w0
	mov.b	w1,[w0]
	mov	[w14+12],w0
	inc	w0,w0
	mov	w0,[w14+12]
	mov	[w14+10],w0
	inc	w0,w0
	mov	w0,[w14+10]
	.loc 1 66 0
	mov	[w14+10],w0
	mov.b	[w0],w1
	mov	[w14+12],w0
	mov.b	w1,[w0]
	mov	[w14+10],w0
	inc	w0,w0
	mov	w0,[w14+10]
	.loc 1 67 0
	mov	#_Ki,w0
	mov	w0,[w14+12]
	.loc 1 68 0
	mov	[w14+10],w0
	mov.b	[w0],w1
	mov	[w14+12],w0
	mov.b	w1,[w0]
	mov	[w14+12],w0
	inc	w0,w0
	mov	w0,[w14+12]
	mov	[w14+10],w0
	inc	w0,w0
	mov	w0,[w14+10]
	.loc 1 69 0
	mov	[w14+10],w0
	mov.b	[w0],w1
	mov	[w14+12],w0
	mov.b	w1,[w0]
	mov	[w14+10],w0
	inc	w0,w0
	mov	w0,[w14+10]
	.loc 1 70 0
	mov	#_Kd,w0
	mov	w0,[w14+12]
	.loc 1 71 0
	mov	[w14+10],w0
	mov.b	[w0],w1
	mov	[w14+12],w0
	mov.b	w1,[w0]
	mov	[w14+12],w0
	inc	w0,w0
	mov	w0,[w14+12]
	mov	[w14+10],w0
	inc	w0,w0
	mov	w0,[w14+10]
	.loc 1 72 0
	mov	[w14+10],w0
	mov.b	[w0],w1
	mov	[w14+12],w0
	mov.b	w1,[w0]
	mov	[w14+12],w0
	inc	w0,w0
	mov	w0,[w14+12]
	mov	[w14+10],w0
	inc	w0,w0
	mov	w0,[w14+10]
	.loc 1 73 0
	mov	#_Kff,w0
	mov	w0,[w14+12]
	.loc 1 74 0
	mov	[w14+10],w0
	mov.b	[w0],w1
	mov	[w14+12],w0
	mov.b	w1,[w0]
	mov	[w14+12],w0
	inc	w0,w0
	mov	w0,[w14+12]
	mov	[w14+10],w0
	inc	w0,w0
	mov	w0,[w14+10]
	.loc 1 75 0
	mov	[w14+10],w0
	mov.b	[w0],w1
	mov	[w14+12],w0
	mov.b	w1,[w0]
	.loc 1 76 0
	mov	#_TxBuf,w0
	mov.b	#2,w1
	mov.b	w1,[w0]
	.loc 1 77 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 78 0
	rcall	_UartStartTx
	.loc 1 79 0
	bra	.L3
.L8:
.LBE5:
.LBB6:
	.loc 1 84 0
	mov	#_TxBuf,w0
	mov	w0,[w14+14]
	.loc 1 85 0
	mov	[w14+14],w0
	mov.b	#3,w1
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 86 0
	mov	#_Vp,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 87 0
	mov	#_Vp,w0
	inc	w0,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 88 0
	mov	#_Vi,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 89 0
	mov	#_Vi,w0
	inc	w0,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 90 0
	mov	#_Vd,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 91 0
	mov	#_Vd,w0
	inc	w0,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 92 0
	mov	#_PidOut,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 93 0
	mov	#_PidOut,w0
	inc	w0,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 94 0
	mov	#_Vff,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 95 0
	mov	#_Vff,w0
	inc	w0,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 96 0
	mov	#_Vout,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	mov	[w14+14],w0
	inc	w0,w0
	mov	w0,[w14+14]
	.loc 1 97 0
	mov	#_Vout,w0
	inc	w0,w0
	mov.b	[w0],w1
	mov	[w14+14],w0
	mov.b	w1,[w0]
	.loc 1 98 0
	mov	#13,w0
	mov	w0,_TxBuf+20
	.loc 1 99 0
	rcall	_UartStartTx
	.loc 1 100 0
	bra	.L3
.L9:
.LBE6:
	.loc 1 104 0
	mov	#_RcBuf+2,w1
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	ze	w0,w0
	sl	w0,#4,w0
	mov	w0,w2
	mov	#_TableV,w0
	add	w2,w0,w0
	mov	#16,w2
	rcall	_memmove
	.loc 1 106 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	sub.b	w0,#3,[w15]
	.set ___BP___,0
	bra	nz,.L34
	.loc 1 108 0
	rcall	_FillTableInvDV
	.loc 1 109 0
	mov.b	#1,w0
	mov.b	WREG,_TableVLoaded
.L34:
	.loc 1 111 0
	mov	#_TxBuf,w0
	mov.b	#4,w1
	mov.b	w1,[w0]
	.loc 1 112 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 113 0
	rcall	_UartStartTx
	.loc 1 114 0
	bra	.L3
.L10:
.LBB7:
	.loc 1 119 0
	mov	#_RcBuf+1,w0
	mov	w0,[w14+16]
	.loc 1 120 0
	mov	#_TableT,w0
	mov	w0,[w14+18]
	.loc 1 121 0
	mov	[w14+16],w0
	mov.b	[w0],w1
	mov	[w14+18],w0
	mov.b	w1,[w0]
	mov	[w14+18],w0
	inc	w0,w0
	mov	w0,[w14+18]
	mov	[w14+16],w0
	inc	w0,w0
	mov	w0,[w14+16]
	.loc 1 122 0
	mov	[w14+16],w0
	mov.b	[w0],w1
	mov	[w14+18],w0
	mov.b	w1,[w0]
	mov	[w14+16],w0
	inc	w0,w0
	mov	w0,[w14+16]
	.loc 1 123 0
	mov	#_TableDT,w0
	mov	w0,[w14+18]
	.loc 1 124 0
	mov	[w14+16],w0
	mov.b	[w0],w1
	mov	[w14+18],w0
	mov.b	w1,[w0]
	.loc 1 125 0
	rcall	_FillTableT
	.loc 1 126 0
	mov.b	#1,w0
	mov.b	WREG,_TdTLoaded
	.loc 1 127 0
	mov	#_TxBuf,w0
	mov.b	#5,w1
	mov.b	w1,[w0]
	.loc 1 128 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 129 0
	rcall	_UartStartTx
	.loc 1 130 0
	bra	.L3
.L11:
.LBE7:
.LBB8:
	.loc 1 137 0
	mov	#_TxBuf,w0
	mov.b	#6,w1
	mov.b	w1,[w0]
	.loc 1 138 0
	mov	#_RcBuf+1,w0
	mov	w0,[w14+20]
	.loc 1 139 0
	mov	#38,w0
	add	w0,w14,w0
	mov	w0,[w14+22]
	.loc 1 140 0
	mov	[w14+20],w0
	mov.b	[w0],w1
	mov	[w14+22],w0
	mov.b	w1,[w0]
	mov	[w14+22],w0
	inc	w0,w0
	mov	w0,[w14+22]
	mov	[w14+20],w0
	inc	w0,w0
	mov	w0,[w14+20]
	.loc 1 141 0
	mov	[w14+20],w0
	mov.b	[w0],w1
	mov	[w14+22],w0
	mov.b	w1,[w0]
	.loc 1 143 0
	mov	[w14+38],w0
	rcall	_CalcTByV
	mov	w0,[w14+40]
	.loc 1 144 0
	mov	#40,w0
	add	w0,w14,w0
	mov	w0,[w14+20]
	.loc 1 145 0
	mov	#_TxBuf+1,w0
	mov	w0,[w14+22]
	.loc 1 146 0
	mov	[w14+20],w0
	mov.b	[w0],w1
	mov	[w14+22],w0
	mov.b	w1,[w0]
	mov	[w14+22],w0
	inc	w0,w0
	mov	w0,[w14+22]
	mov	[w14+20],w0
	inc	w0,w0
	mov	w0,[w14+20]
	.loc 1 147 0
	mov	[w14+20],w0
	mov.b	[w0],w1
	mov	[w14+22],w0
	mov.b	w1,[w0]
	.loc 1 148 0
	mov	#3,w0
	mov	w0,_TxBuf+20
	.loc 1 149 0
	rcall	_UartStartTx
	.loc 1 150 0
	bra	.L3
.L13:
.LBE8:
.LBB9:
	.loc 1 154 0
	mov	#_TxBuf,w0
	mov	w0,[w14+24]
	.loc 1 155 0
	mov	[w14+24],w0
	mov.b	#8,w1
	mov.b	w1,[w0]
	mov	[w14+24],w0
	inc	w0,w0
	mov	w0,[w14+24]
	.loc 1 156 0
	mov	#_ADC8x14DataAveraged,w0
	mov.b	[w0],w1
	mov	[w14+24],w0
	mov.b	w1,[w0]
	mov	[w14+24],w0
	inc	w0,w0
	mov	w0,[w14+24]
	.loc 1 157 0
	mov	#_ADC8x14DataAveraged,w0
	inc	w0,w0
	mov.b	[w0],w1
	mov	[w14+24],w0
	mov.b	w1,[w0]
	mov	[w14+24],w0
	inc	w0,w0
	mov	w0,[w14+24]
	.loc 1 158 0
	mov	#_ADC8x14DataAveraged,w0
	inc2	w0,w0
	mov.b	[w0],w1
	mov	[w14+24],w0
	mov.b	w1,[w0]
	mov	[w14+24],w0
	inc	w0,w0
	mov	w0,[w14+24]
	.loc 1 159 0
	mov	#_ADC8x14DataAveraged,w0
	add	w0,#3,w0
	mov.b	[w0],w1
	mov	[w14+24],w0
	mov.b	w1,[w0]
	mov	[w14+24],w0
	inc	w0,w0
	mov	w0,[w14+24]
	.loc 1 160 0
	mov	#_ADC8x14DataAveraged,w0
	add	w0,#4,w0
	mov.b	[w0],w1
	mov	[w14+24],w0
	mov.b	w1,[w0]
	mov	[w14+24],w0
	inc	w0,w0
	mov	w0,[w14+24]
	.loc 1 161 0
	mov	#_ADC8x14DataAveraged,w0
	add	w0,#5,w0
	mov.b	[w0],w1
	mov	[w14+24],w0
	mov.b	w1,[w0]
	mov	[w14+24],w0
	inc	w0,w0
	mov	w0,[w14+24]
	.loc 1 162 0
	mov	#_TRef,w0
	mov.b	[w0],w1
	mov	[w14+24],w0
	mov.b	w1,[w0]
	mov	[w14+24],w0
	inc	w0,w0
	mov	w0,[w14+24]
	.loc 1 163 0
	mov	#_TRef,w0
	inc	w0,w0
	mov.b	[w0],w1
	mov	[w14+24],w0
	mov.b	w1,[w0]
	.loc 1 164 0
	mov	#9,w0
	mov	w0,_TxBuf+20
	.loc 1 165 0
	rcall	_UartStartTx
	.loc 1 166 0
	bra	.L3
.L14:
.LBE9:
.LBB10:
	.loc 1 171 0
	mov	#_RcBuf+1,w0
	mov	w0,[w14+26]
	.loc 1 172 0
	mov	#_TEnd,w0
	mov	[w14+26],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+26],w0
	inc	w0,w0
	mov	w0,[w14+26]
	.loc 1 173 0
	mov	#_TEnd,w0
	inc	w0,w0
	mov	[w14+26],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+26],w0
	inc	w0,w0
	mov	w0,[w14+26]
	.loc 1 174 0
	mov	#_DeltaT,w0
	mov	[w14+26],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+26],w0
	inc	w0,w0
	mov	w0,[w14+26]
	.loc 1 175 0
	mov	#_DeltaT,w0
	inc	w0,w0
	mov	[w14+26],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+26],w0
	inc	w0,w0
	mov	w0,[w14+26]
	.loc 1 176 0
	mov	#_DeltaT,w0
	inc2	w0,w0
	mov	[w14+26],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+26],w0
	inc	w0,w0
	mov	w0,[w14+26]
	.loc 1 177 0
	mov	#_DeltaT,w0
	add	w0,#3,w0
	mov	[w14+26],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 178 0
	clr.b	_FlagMainOff
	.loc 1 179 0
	mov	#_TxBuf,w0
	mov.b	#9,w1
	mov.b	w1,[w0]
	.loc 1 180 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 181 0
	rcall	_UartStartTx
	.loc 1 182 0
	bra	.L3
.L15:
.LBE10:
.LBB11:
	.loc 1 187 0
	mov	#_RcBuf+1,w0
	mov	w0,[w14+28]
	.loc 1 188 0
	mov	[w14+28],w0
	mov.b	[w0],w0
	mov.b	WREG,_DifShift
	mov	[w14+28],w0
	inc	w0,w0
	mov	w0,[w14+28]
	.loc 1 189 0
	mov	[w14+28],w0
	mov.b	[w0],w0
	mov.b	WREG,_IDec
	mov	[w14+28],w0
	inc	w0,w0
	mov	w0,[w14+28]
	.loc 1 190 0
	mov	#_ViMax,w0
	mov	[w14+28],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+28],w0
	inc	w0,w0
	mov	w0,[w14+28]
	.loc 1 191 0
	mov	#_ViMax,w0
	inc	w0,w0
	mov	[w14+28],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+28],w0
	inc	w0,w0
	mov	w0,[w14+28]
	.loc 1 192 0
	mov	#_ViOff,w0
	mov	[w14+28],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+28],w0
	inc	w0,w0
	mov	w0,[w14+28]
	.loc 1 193 0
	mov	#_ViOff,w0
	inc	w0,w0
	mov	[w14+28],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 194 0
	mov	#_TxBuf,w0
	mov.b	#10,w1
	mov.b	w1,[w0]
	.loc 1 195 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 196 0
	rcall	_UartStartTx
	.loc 1 197 0
	bra	.L3
.L16:
.LBE11:
	.loc 1 201 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	cp0.b	w0
	.set ___BP___,0
	bra	nz,.L35
	.loc 1 203 0
	mov.b	#1,w0
	mov.b	WREG,_FlagWait
	bra	.L36
.L35:
	.loc 1 205 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,0
	bra	nz,.L37
	.loc 1 207 0
	clr.b	_FlagWait
	bra	.L36
.L37:
	.loc 1 209 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	sub.b	w0,#2,[w15]
	.set ___BP___,0
	bra	nz,.L36
	.loc 1 211 0
	mov.b	#1,w0
	mov.b	WREG,_FlagMainOff
	.loc 1 212 0
	clr	_TRef
	.loc 1 213 0
	mov	#_TAccumulator,w0
	inc2	w0,w0
	clr	w1
	mov	w1,[w0]
.L36:
	.loc 1 216 0
	mov	#_TxBuf,w0
	mov.b	#11,w1
	mov.b	w1,[w0]
	.loc 1 217 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 218 0
	rcall	_UartStartTx
	.loc 1 219 0
	clr.b	_ManualHeaterControl
	.loc 1 220 0
	bra	.L3
.L17:
.LBB12:
	.loc 1 225 0
	mov	#_RcBuf+1,w0
	mov	w0,[w14+30]
	.loc 1 226 0
	mov	#_FFTableTemp,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 227 0
	mov	#_FFTableTemp,w0
	inc	w0,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 228 0
	mov	#_FFTableTemp,w0
	inc2	w0,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 229 0
	mov	#_FFTableTemp,w0
	add	w0,#3,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 230 0
	mov	#_FFTableTemp,w0
	add	w0,#4,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 231 0
	mov	#_FFTableTemp,w0
	add	w0,#5,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 232 0
	mov	#_FFTableTemp,w0
	add	w0,#6,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 233 0
	mov	#_FFTableTemp,w0
	add	w0,#7,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 234 0
	mov	#_FFTableOut,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 235 0
	mov	#_FFTableOut,w0
	inc	w0,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 236 0
	mov	#_FFTableOut,w0
	inc2	w0,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 237 0
	mov	#_FFTableOut,w0
	add	w0,#3,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 238 0
	mov	#_FFTableOut,w0
	add	w0,#4,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 239 0
	mov	#_FFTableOut,w0
	add	w0,#5,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 240 0
	mov	#_FFTableOut,w0
	add	w0,#6,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	[w14+30],w0
	inc	w0,w0
	mov	w0,[w14+30]
	.loc 1 241 0
	mov	#_FFTableOut,w0
	add	w0,#7,w0
	mov	[w14+30],w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 242 0
	mov	#_TxBuf,w0
	mov.b	#12,w1
	mov.b	w1,[w0]
	.loc 1 243 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 244 0
	rcall	_UartStartTx
	.loc 1 245 0
	bra	.L3
.L18:
.LBE12:
	.loc 1 249 0
	mov	#_TxBuf,w0
	mov.b	#13,w1
	mov.b	w1,[w0]
	.loc 1 250 0
	mov	#_ADC8x14DataAveraged,w0
	add	w0,#6,w0
	mov.b	[w0],w1
	mov	#_TxBuf+1,w0
	mov.b	w1,[w0]
	.loc 1 251 0
	mov	#_ADC8x14DataAveraged,w0
	add	w0,#7,w0
	mov.b	[w0],w1
	mov	#_TxBuf+2,w0
	mov.b	w1,[w0]
	.loc 1 252 0
	mov	#3,w0
	mov	w0,_TxBuf+20
	.loc 1 253 0
	rcall	_UartStartTx
	.loc 1 254 0
	bra	.L3
.L19:
.LBB13:
	.loc 1 258 0
	mov	#_DacData,w1
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	ze	w0,w0
	add	w0,w0,w0
	add	w1,w0,w0
	mov	w0,[w14+32]
	.loc 1 259 0
	mov	#_TxBuf,w0
	mov.b	#14,w1
	mov.b	w1,[w0]
	.loc 1 260 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w1
	mov	#_TxBuf+1,w0
	mov.b	w1,[w0]
	.loc 1 261 0
	mov	[w14+32],w0
	mov.b	[w0],w1
	mov	#_TxBuf+2,w0
	mov.b	w1,[w0]
	mov	[w14+32],w0
	inc	w0,w0
	mov	w0,[w14+32]
	.loc 1 262 0
	mov	[w14+32],w0
	mov.b	[w0],w1
	mov	#_TxBuf+3,w0
	mov.b	w1,[w0]
	.loc 1 263 0
	mov	#4,w0
	mov	w0,_TxBuf+20
	.loc 1 264 0
	rcall	_UartStartTx
	.loc 1 265 0
	bra	.L3
.L20:
.LBE13:
	.loc 1 269 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	cp0.b	w0
	.set ___BP___,0
	bra	nz,.L38
	.loc 1 270 0
	clr.b	_ManualHeaterControl
	bra	.L39
.L38:
	.loc 1 272 0
	mov.b	#1,w0
	mov.b	WREG,_ManualHeaterControl
.L39:
	.loc 1 273 0
	mov	#_TxBuf,w0
	mov.b	#15,w1
	mov.b	w1,[w0]
	.loc 1 274 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 275 0
	rcall	_UartStartTx
	.loc 1 276 0
	bra	.L3
.L21:
	.loc 1 280 0
	mov	#_MaxHeaterI,w0
	mov	#_RcBuf+1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 281 0
	mov	#_MaxHeaterI,w0
	inc	w0,w0
	mov	#_RcBuf+2,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 282 0
	mov	#_MaxHeaterU,w0
	mov	#_RcBuf+3,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 283 0
	mov	#_MaxHeaterU,w0
	inc	w0,w0
	mov	#_RcBuf+4,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 284 0
	mov	#_MaxHeaterP,w0
	mov	#_RcBuf+5,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 285 0
	mov	#_MaxHeaterP,w0
	inc	w0,w0
	mov	#_RcBuf+6,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 286 0
	mov	#_MaxHeaterISoft,w0
	mov	#_RcBuf+7,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 287 0
	mov	#_MaxHeaterISoft,w0
	inc	w0,w0
	mov	#_RcBuf+8,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 288 0
	mov	#_TxBuf,w0
	mov.b	#16,w1
	mov.b	w1,[w0]
	.loc 1 289 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 290 0
	rcall	_UartStartTx
	.loc 1 291 0
	bra	.L3
.L22:
	.loc 1 295 0
	clr.b	_MaxHeaterIGuard
	.loc 1 296 0
	clr.b	_MaxHeaterUGuard
	.loc 1 297 0
	clr.b	_MaxHeaterPGuard
	.loc 1 298 0
	mov	#_TxBuf,w0
	mov.b	#17,w1
	mov.b	w1,[w0]
	.loc 1 299 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 300 0
	rcall	_UartStartTx
	.loc 1 301 0
	bra	.L3
.L23:
	.loc 1 305 0
	mov	_RcBuf+20,w0
	sub	w0,#3,[w15]
	.set ___BP___,0
	bra	nz,.L40
.LBB14:
	.loc 1 307 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	ze	w0,w0
	sl	w0,#8,w1
	mov	#_RcBuf+2,w0
	mov.b	[w0],w0
	ze	w0,w0
	add	w1,w0,w0
	mov	w0,[w14+34]
	.loc 1 308 0
	mov	#_TxBuf,w0
	mov.b	#-16,w1
	mov.b	w1,[w0]
	.loc 1 309 0
	mov	[w14+34],w0
	mov.b	[w0],w1
	mov	#_TxBuf+1,w0
	mov.b	w1,[w0]
	.loc 1 310 0
	mov	#2,w0
	mov	w0,_TxBuf+20
	.loc 1 311 0
	rcall	_UartStartTx
	bra	.L41
.L40:
.LBE14:
	.loc 1 314 0
	mov	#_TxBuf,w0
	mov.b	#-31,w1
	mov.b	w1,[w0]
	mov	#1,w0
	mov	w0,_TxBuf+20
	rcall	_UartStartTx
.L41:
	.loc 1 315 0
	bra	.L3
.L24:
	.loc 1 319 0
	mov	_RcBuf+20,w0
	sub	w0,#4,[w15]
	.set ___BP___,0
	bra	nz,.L42
.LBB15:
	.loc 1 321 0
	mov	#_RcBuf+1,w0
	mov.b	[w0],w0
	ze	w0,w0
	sl	w0,#8,w1
	mov	#_RcBuf+2,w0
	mov.b	[w0],w0
	ze	w0,w0
	add	w1,w0,w0
	mov	w0,[w14+36]
	.loc 1 322 0
	mov	#_RcBuf+3,w0
	mov.b	[w0],w1
	mov	[w14+36],w0
	mov.b	w1,[w0]
	.loc 1 323 0
	mov	#_TxBuf,w0
	mov.b	#-15,w1
	mov.b	w1,[w0]
	.loc 1 324 0
	mov	#_TxBuf+1,w0
	mov.b	#-96,w1
	mov.b	w1,[w0]
	.loc 1 325 0
	mov	#2,w0
	mov	w0,_TxBuf+20
	.loc 1 326 0
	rcall	_UartStartTx
	bra	.L43
.L42:
.LBE15:
	.loc 1 329 0
	mov	#_TxBuf,w0
	mov.b	#-31,w1
	mov.b	w1,[w0]
	mov	#1,w0
	mov	w0,_TxBuf+20
	rcall	_UartStartTx
.L43:
	.loc 1 330 0
	bra	.L3
.L25:
	.loc 1 334 0
	mov	_RcBuf+20,w0
	sub	w0,#2,[w15]
	.set ___BP___,0
	bra	nz,.L44
	mov	#_RcBuf+1,w0
	mov.b	[w0],w1
	mov.b	#85,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L44
	.loc 1 336 0
; 336 "ProcessUartMsg.c" 1
	RESET
	bra	.L45
.L44:
	.loc 1 339 0
	mov	#_TxBuf,w0
	mov.b	#-31,w1
	mov.b	w1,[w0]
	mov	#1,w0
	mov	w0,_TxBuf+20
	rcall	_UartStartTx
.L45:
	.loc 1 340 0
	bra	.L3
.L26:
	.loc 1 344 0
	mov	#_TxBuf,w0
	mov.b	#-2,w1
	mov.b	w1,[w0]
	.loc 1 345 0
	mov.b	_TableVLoaded,WREG
	ze	w0,w1
	mov.b	_TdTLoaded,WREG
	ze	w0,w0
	and	w1,w0,w0
	btsc	w0,#15
	neg	w0,w0
	neg	w0,w0
	lsr	w0,#15,w0
	mov.b	w0,w1
	mov	#_TxBuf+1,w0
	mov.b	w1,[w0]
	.loc 1 346 0
	mov.b	_FlagWait,WREG
	mov.b	w0,w1
	mov.b	_FlagMainOff,WREG
	ze	w0,w0
	add	w0,w0,w0
	mov.b	w0,w0
	ior.b	w1,w0,w1
	mov.b	_FlagRefTempAchived,WREG
	ze	w0,w0
	sl	w0,#2,w0
	mov.b	w0,w0
	ior.b	w1,w0,w0
	mov.b	w0,w1
	mov	#_TxBuf+2,w0
	mov.b	w1,[w0]
	.loc 1 347 0
	mov.b	_MaxHeaterUGuard,WREG
	ze	w0,w0
	add	w0,w0,w0
	mov.b	w0,w1
	mov.b	_MaxHeaterIGuard,WREG
	ior.b	w1,w0,w1
	mov.b	_MaxHeaterPGuard,WREG
	ze	w0,w0
	sl	w0,#2,w0
	mov.b	w0,w0
	ior.b	w1,w0,w1
	mov.b	_MaxHeaterISoftCount,WREG
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L46
	mov.b	#8,w0
	bra	.L47
.L46:
	clr.b	w0
.L47:
	ior.b	w1,w0,w0
	mov.b	w0,w1
	mov	#_TxBuf+3,w0
	mov.b	w1,[w0]
	.loc 1 348 0
	mov	#4,w0
	mov	w0,_TxBuf+20
	.loc 1 349 0
	rcall	_UartStartTx
	.loc 1 350 0
	bra	.L3
.L4:
	.loc 1 354 0
	mov	#_TxBuf,w0
	mov.b	#-32,w1
	mov.b	w1,[w0]
	.loc 1 355 0
	mov	#_RcBuf,w0
	mov.b	[w0],w1
	mov	#_TxBuf+1,w0
	mov.b	w1,[w0]
	.loc 1 356 0
	mov	#2,w0
	mov	w0,_TxBuf+20
	.loc 1 357 0
	rcall	_UartStartTx
	.loc 1 360 0
	bra	.L48
.L3:
	bra	.L48
.LFE5:
	.size	_ProcessUart1Msg, .-_ProcessUart1Msg
	.align	2
	.global	_ReportFifoRxOverflow	; export
	.type	_ReportFifoRxOverflow,@function
_ReportFifoRxOverflow:
.LFB6:
	.loc 1 365 0
	.set ___PA___,1
	lnk	#0
.LCFI1:
	.loc 1 366 0
	mov	#_TxBuf,w0
	mov.b	#-30,w1
	mov.b	w1,[w0]
	.loc 1 367 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 368 0
	rcall	_UartStartTx
	.loc 1 369 0
	ulnk	
	return	
	.set ___PA___,0
.LFE6:
	.size	_ReportFifoRxOverflow, .-_ReportFifoRxOverflow
	.align	2
	.global	_ReportFifoTxOverflow	; export
	.type	_ReportFifoTxOverflow,@function
_ReportFifoTxOverflow:
.LFB7:
	.loc 1 373 0
	.set ___PA___,1
	lnk	#0
.LCFI2:
	.loc 1 374 0
	mov	#_TxBuf,w0
	mov.b	#-29,w1
	mov.b	w1,[w0]
	.loc 1 375 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 376 0
	rcall	_UartStartTx
	.loc 1 377 0
	ulnk	
	return	
	.set ___PA___,0
.LFE7:
	.size	_ReportFifoTxOverflow, .-_ReportFifoTxOverflow
	.align	2
	.global	_ReportRcProtocolError	; export
	.type	_ReportRcProtocolError,@function
_ReportRcProtocolError:
.LFB8:
	.loc 1 381 0
	.set ___PA___,1
	lnk	#0
.LCFI3:
	.loc 1 382 0
	mov	#_TxBuf,w0
	mov.b	#-28,w1
	mov.b	w1,[w0]
	.loc 1 383 0
	mov	#1,w0
	mov	w0,_TxBuf+20
	.loc 1 384 0
	rcall	_UartStartTx
	.loc 1 385 0
	ulnk	
	return	
	.set ___PA___,0
.LFE8:
	.size	_ReportRcProtocolError, .-_ReportRcProtocolError
	.align	2
	.global	_ReportStartUp	; export
	.type	_ReportStartUp,@function
_ReportStartUp:
.LFB9:
	.loc 1 390 0
	.set ___PA___,1
	lnk	#0
.LCFI4:
	.loc 1 391 0
	mov	#_TxBuf,w0
	setm.b	w1
	mov.b	w1,[w0]
	.loc 1 405 0
	mov	#_TxBuf+1,w0
	mov.b	#7,w1
	mov.b	w1,[w0]
	.loc 1 407 0
	mov	#_TxBuf+2,w0
	mov.b	#-96,w1
	mov.b	w1,[w0]
	.loc 1 408 0
	mov	#3,w0
	mov	w0,_TxBuf+20
	.loc 1 409 0
	rcall	_UartStartTx
	.loc 1 414 0
	ulnk	
	return	
	.set ___PA___,0
.LFE9:
	.size	_ReportStartUp, .-_ReportStartUp
	.section	.nbss,bss,near
	.type	_Cmd.7954,@object
	.size	_Cmd.7954, 1
_Cmd.7954:
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
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
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
	.file 4 "TNeo/src/core/tn_list.h"
	.file 5 "TNeo/src/core/../arch/../core/tn_common.h"
	.file 6 "TNeo/src/core/tn_sem.h"
	.file 7 "TNeo/src/core/tn_oldsymbols.h"
	.file 8 "ADC8x14.h"
	.file 9 "ProcessUartMsg.h"
	.file 10 "DAC.h"
	.file 11 "HeaterPID.h"
	.file 12 "PowerLimiter.h"
	.section	.debug_info,info
	.4byte	0xb75
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.30) (A) Build date: Nov 22 2016"
	.byte	0x1
	.asciz	"ProcessUartMsg.c"
	.ascii	"D:\\\\Projects\\\\Programming\\\\CatalysisTFS\\\\Catalysis\\\\dsPicP"
	.asciz	"rog"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.asciz	"UINT"
	.byte	0x2
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.asciz	"BYTE"
	.byte	0x2
	.byte	0x5
	.4byte	0xd0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.asciz	"INT16Q4"
	.byte	0x2
	.byte	0x7
	.4byte	0x105
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.asciz	"INT16Q8"
	.byte	0x2
	.byte	0x8
	.4byte	0x105
	.uleb128 0x2
	.asciz	"INT32Q20"
	.byte	0x2
	.byte	0xa
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x4
	.byte	0x16
	.byte	0x3
	.byte	0xc
	.4byte	0x160
	.uleb128 0x5
	.asciz	"Data"
	.byte	0x3
	.byte	0xe
	.4byte	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"Length"
	.byte	0x3
	.byte	0xf
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x6
	.4byte	0xc4
	.4byte	0x170
	.uleb128 0x7
	.4byte	0xb4
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.asciz	"MessageBuffer"
	.byte	0x3
	.byte	0x10
	.4byte	0x137
	.uleb128 0x4
	.byte	0x82
	.byte	0x3
	.byte	0x13
	.4byte	0x1be
	.uleb128 0x5
	.asciz	"Buffer"
	.byte	0x3
	.byte	0x15
	.4byte	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"NIn"
	.byte	0x3
	.byte	0x16
	.4byte	0xc4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x5
	.asciz	"NOut"
	.byte	0x3
	.byte	0x17
	.4byte	0xc4
	.byte	0x3
	.byte	0x23
	.uleb128 0x81
	.byte	0x0
	.uleb128 0x6
	.4byte	0xc4
	.4byte	0x1ce
	.uleb128 0x7
	.4byte	0xb4
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2
	.asciz	"FIFO"
	.byte	0x3
	.byte	0x19
	.4byte	0x185
	.uleb128 0x8
	.asciz	"TN_ListItem"
	.byte	0x4
	.byte	0x4
	.byte	0x3f
	.4byte	0x20d
	.uleb128 0x5
	.asciz	"prev"
	.byte	0x4
	.byte	0x42
	.4byte	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"next"
	.byte	0x4
	.byte	0x45
	.4byte	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.4byte	0x1da
	.uleb128 0xa
	.asciz	"TN_ObjId"
	.byte	0x2
	.byte	0x5
	.byte	0x41
	.4byte	0x2de
	.uleb128 0xb
	.asciz	"TN_ID_NONE"
	.sleb128 0
	.uleb128 0xb
	.asciz	"TN_ID_TASK"
	.sleb128 53097
	.uleb128 0xb
	.asciz	"TN_ID_SEMAPHORE"
	.sleb128 29675
	.uleb128 0xb
	.asciz	"TN_ID_EVENTGRP"
	.sleb128 20261
	.uleb128 0xb
	.asciz	"TN_ID_DATAQUEUE"
	.sleb128 27785
	.uleb128 0xb
	.asciz	"TN_ID_FSMEMORYPOOL"
	.sleb128 52875
	.uleb128 0xb
	.asciz	"TN_ID_MUTEX"
	.sleb128 40517
	.uleb128 0xb
	.asciz	"TN_ID_TIMER"
	.sleb128 32700
	.uleb128 0xb
	.asciz	"TN_ID_EXCHANGE"
	.sleb128 49266
	.uleb128 0xb
	.asciz	"TN_ID_EXCHANGE_LINK"
	.sleb128 28469
	.byte	0x0
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x2
	.asciz	"TN_TickCnt"
	.byte	0x5
	.byte	0xbc
	.4byte	0xe1
	.uleb128 0x8
	.asciz	"TN_Sem"
	.byte	0xa
	.byte	0x6
	.byte	0x58
	.4byte	0x34c
	.uleb128 0x5
	.asciz	"id_sem"
	.byte	0x6
	.byte	0x5d
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"wait_queue"
	.byte	0x6
	.byte	0x60
	.4byte	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"count"
	.byte	0x6
	.byte	0x63
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.asciz	"max_count"
	.byte	0x6
	.byte	0x66
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.asciz	"char"
	.uleb128 0x2
	.asciz	"TN_SEM"
	.byte	0x7
	.byte	0x5c
	.4byte	0x2f2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.asciz	"long long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0xd
	.byte	0x1
	.asciz	"ProcessUart1Msg"
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5e
	.4byte	0x5d4
	.uleb128 0xe
	.asciz	"par"
	.byte	0x1
	.byte	0xa
	.4byte	0x2de
	.byte	0x2
	.byte	0x7e
	.sleb128 42
	.uleb128 0xf
	.asciz	"Cmd"
	.byte	0x1
	.byte	0xc
	.4byte	0xc4
	.byte	0x5
	.byte	0x3
	.4byte	_Cmd.7954
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x40f
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x19
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x19
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x439
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x26
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x26
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x455
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x33
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x47f
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3e
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3e
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 12
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0x49b
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x53
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 14
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0x4c5
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x76
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x76
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 18
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0x508
	.uleb128 0xf
	.asciz	"mV"
	.byte	0x1
	.byte	0x86
	.4byte	0x10c
	.byte	0x2
	.byte	0x7e
	.sleb128 38
	.uleb128 0xf
	.asciz	"T"
	.byte	0x1
	.byte	0x87
	.4byte	0xf6
	.byte	0x2
	.byte	0x7e
	.sleb128 40
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x88
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 20
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x88
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 22
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0x524
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x9a
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 24
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0x540
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0xaa
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 26
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0x55c
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0xba
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 28
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0x578
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0xe0
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 30
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0x595
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x102
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 32
	.byte	0x0
	.uleb128 0x10
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0x5b6
	.uleb128 0x13
	.asciz	"Address"
	.byte	0x1
	.2byte	0x133
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 34
	.byte	0x0
	.uleb128 0x14
	.4byte	.LBB15
	.4byte	.LBE15
	.uleb128 0x13
	.asciz	"Address"
	.byte	0x1
	.2byte	0x141
	.4byte	0x5d4
	.byte	0x2
	.byte	0x7e
	.sleb128 36
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.4byte	0xc4
	.uleb128 0x15
	.byte	0x1
	.asciz	"ReportFifoRxOverflow"
	.byte	0x1
	.2byte	0x16c
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5e
	.uleb128 0x15
	.byte	0x1
	.asciz	"ReportFifoTxOverflow"
	.byte	0x1
	.2byte	0x174
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x15
	.byte	0x1
	.asciz	"ReportRcProtocolError"
	.byte	0x1
	.2byte	0x17c
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5e
	.uleb128 0x15
	.byte	0x1
	.asciz	"ReportStartUp"
	.byte	0x1
	.2byte	0x185
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5e
	.uleb128 0x6
	.4byte	0x105
	.4byte	0x678
	.uleb128 0x7
	.4byte	0xb4
	.byte	0xf
	.byte	0x0
	.uleb128 0x16
	.asciz	"DacData"
	.byte	0xa
	.byte	0x1
	.4byte	0x668
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xa8
	.4byte	0x699
	.uleb128 0x7
	.4byte	0xb4
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF2
	.byte	0x8
	.byte	0x34
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xa8
	.4byte	0x6b6
	.uleb128 0x7
	.4byte	0xb4
	.byte	0x3
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x8
	.byte	0x37
	.4byte	0x6a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x9
	.byte	0x30
	.4byte	0x354
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Kp"
	.byte	0xb
	.byte	0x29
	.4byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Ki"
	.byte	0xb
	.byte	0x29
	.4byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Kd"
	.byte	0xb
	.byte	0x29
	.4byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Kff"
	.byte	0xb
	.byte	0x29
	.4byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vp"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vi"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vd"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vff"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vout"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"ViMax"
	.byte	0xb
	.byte	0x2b
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"ViOff"
	.byte	0xb
	.byte	0x2b
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TRef"
	.byte	0xb
	.byte	0x2c
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"PidOut"
	.byte	0xb
	.byte	0x2d
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x10c
	.4byte	0x78c
	.uleb128 0x7
	.4byte	0xb4
	.byte	0x1f
	.byte	0x0
	.uleb128 0x16
	.asciz	"TableV"
	.byte	0xb
	.byte	0x2e
	.4byte	0x77c
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xf6
	.4byte	0x7ac
	.uleb128 0x7
	.4byte	0xb4
	.byte	0x1f
	.byte	0x0
	.uleb128 0x16
	.asciz	"TableT"
	.byte	0xb
	.byte	0x2f
	.4byte	0x79c
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xf6
	.4byte	0x7cc
	.uleb128 0x7
	.4byte	0xb4
	.byte	0x3
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF5
	.byte	0xb
	.byte	0x31
	.4byte	0x7bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF6
	.byte	0xb
	.byte	0x32
	.4byte	0x7bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TableDT"
	.byte	0xb
	.byte	0x34
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF7
	.byte	0xb
	.byte	0x35
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x17
	.4byte	.LASF8
	.byte	0xb
	.byte	0x35
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF9
	.byte	0xb
	.byte	0x38
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"IDec"
	.byte	0xb
	.byte	0x39
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TEnd"
	.byte	0xb
	.byte	0x3a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"DeltaT"
	.byte	0xb
	.byte	0x3b
	.4byte	0x11b
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF10
	.byte	0xb
	.byte	0x3b
	.4byte	0x11b
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF11
	.byte	0xb
	.byte	0x3d
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF12
	.byte	0xb
	.byte	0x3e
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF13
	.byte	0xb
	.byte	0x3e
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF14
	.byte	0xb
	.byte	0x3e
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF15
	.byte	0xc
	.byte	0x1
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF16
	.byte	0xc
	.byte	0x2
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF17
	.byte	0xc
	.byte	0x3
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF18
	.byte	0xc
	.byte	0x4
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF19
	.byte	0xc
	.byte	0x7
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0xc
	.byte	0x8
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0xc
	.byte	0x9
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0xc
	.byte	0xa
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x170
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x7
	.4byte	0x170
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"DacData"
	.byte	0xa
	.byte	0x1
	.4byte	0x668
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF2
	.byte	0x8
	.byte	0x34
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x8
	.byte	0x37
	.4byte	0x6a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x9
	.byte	0x30
	.4byte	0x354
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.asciz	"TxFifo"
	.byte	0x1
	.byte	0x5
	.4byte	0x1ce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TxFifo
	.uleb128 0x16
	.asciz	"Kp"
	.byte	0xb
	.byte	0x29
	.4byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Ki"
	.byte	0xb
	.byte	0x29
	.4byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Kd"
	.byte	0xb
	.byte	0x29
	.4byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Kff"
	.byte	0xb
	.byte	0x29
	.4byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vp"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vi"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vd"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vff"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"Vout"
	.byte	0xb
	.byte	0x2a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"ViMax"
	.byte	0xb
	.byte	0x2b
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"ViOff"
	.byte	0xb
	.byte	0x2b
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TRef"
	.byte	0xb
	.byte	0x2c
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"PidOut"
	.byte	0xb
	.byte	0x2d
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TableV"
	.byte	0xb
	.byte	0x2e
	.4byte	0x77c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TableT"
	.byte	0xb
	.byte	0x2f
	.4byte	0x79c
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF5
	.byte	0xb
	.byte	0x31
	.4byte	0x7bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF6
	.byte	0xb
	.byte	0x32
	.4byte	0x7bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TableDT"
	.byte	0xb
	.byte	0x34
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF7
	.byte	0xb
	.byte	0x35
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF8
	.byte	0xb
	.byte	0x35
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF9
	.byte	0xb
	.byte	0x38
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"IDec"
	.byte	0xb
	.byte	0x39
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TEnd"
	.byte	0xb
	.byte	0x3a
	.4byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"DeltaT"
	.byte	0xb
	.byte	0x3b
	.4byte	0x11b
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF10
	.byte	0xb
	.byte	0x3b
	.4byte	0x11b
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF11
	.byte	0xb
	.byte	0x3d
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF12
	.byte	0xb
	.byte	0x3e
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF13
	.byte	0xb
	.byte	0x3e
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF14
	.byte	0xb
	.byte	0x3e
	.4byte	0x804
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF15
	.byte	0xc
	.byte	0x1
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF16
	.byte	0xc
	.byte	0x2
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF17
	.byte	0xc
	.byte	0x3
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF18
	.byte	0xc
	.byte	0x4
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF19
	.byte	0xc
	.byte	0x7
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0xc
	.byte	0x8
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0xc
	.byte	0x9
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0xc
	.byte	0xa
	.4byte	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x170
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x7
	.4byte	0x170
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.4byte	0x8b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xb79
	.4byte	0x3a3
	.asciz	"ProcessUart1Msg"
	.4byte	0x5da
	.asciz	"ReportFifoRxOverflow"
	.4byte	0x5ff
	.asciz	"ReportFifoTxOverflow"
	.4byte	0x624
	.asciz	"ReportRcProtocolError"
	.4byte	0x64a
	.asciz	"ReportStartUp"
	.4byte	0x952
	.asciz	"TxFifo"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0xa2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xb79
	.4byte	0xa8
	.asciz	"UINT"
	.4byte	0xc4
	.asciz	"BYTE"
	.4byte	0xf6
	.asciz	"INT16Q4"
	.4byte	0x10c
	.asciz	"INT16Q8"
	.4byte	0x11b
	.asciz	"INT32Q20"
	.4byte	0x170
	.asciz	"MessageBuffer"
	.4byte	0x1ce
	.asciz	"FIFO"
	.4byte	0x1da
	.asciz	"TN_ListItem"
	.4byte	0x213
	.asciz	"TN_ObjId"
	.4byte	0x2e0
	.asciz	"TN_TickCnt"
	.4byte	0x2f2
	.asciz	"TN_Sem"
	.4byte	0x354
	.asciz	"TN_SEM"
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
.LASF15:
	.asciz	"MaxHeaterI"
.LASF20:
	.asciz	"MaxHeaterUGuard"
.LASF10:
	.asciz	"TAccumulator"
.LASF17:
	.asciz	"MaxHeaterP"
.LASF18:
	.asciz	"MaxHeaterISoft"
.LASF16:
	.asciz	"MaxHeaterU"
.LASF8:
	.asciz	"TdTLoaded"
.LASF1:
	.asciz	"pDest"
.LASF13:
	.asciz	"FlagMainOff"
.LASF19:
	.asciz	"MaxHeaterIGuard"
.LASF6:
	.asciz	"FFTableOut"
.LASF21:
	.asciz	"MaxHeaterPGuard"
.LASF22:
	.asciz	"MaxHeaterISoftCount"
.LASF4:
	.asciz	"UartRcMsgSem"
.LASF2:
	.asciz	"ADC8x14Data"
.LASF9:
	.asciz	"DifShift"
.LASF7:
	.asciz	"TableVLoaded"
.LASF11:
	.asciz	"ManualHeaterControl"
.LASF5:
	.asciz	"FFTableTemp"
.LASF14:
	.asciz	"FlagRefTempAchived"
.LASF0:
	.asciz	"pSrc"
.LASF12:
	.asciz	"FlagWait"
.LASF3:
	.asciz	"ADC8x14DataAveraged"
	.section	.text,code



	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0001
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
