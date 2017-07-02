	.file "C:\\SourceCode\\dsPicProg\\ProcessUartMsg.c"
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
	.global	_ProcessUart1Msg	; export
	.type	_ProcessUart1Msg,@function
_ProcessUart1Msg:
.LFB0:
.LSM0:
	.set ___PA___,0
	add	w15,#6,w15
	mov	w8,[w15++]
	mov	w14,[w15++]
.LSM1:
	rcall	_ExtractRcMessage
	sub	w0,#0,[w15]
	.set ___BP___,39
	bra	z,.L1
.LSM2:
	mov	#_RcBuf,w8
	mov.b	[w8],w8
	exch	w0,w8
	mov.b	WREG,_Cmd.7633
	exch	w0,w8
.LSM3:
	sub.b	w8,#10,[w15]
	.set ___BP___,29
	bra	z,.L14
	.set ___BP___,50
	bra	gtu,.L26
	sub.b	w8,#4,[w15]
	.set ___BP___,29
	bra	z,.L8
	.set ___BP___,50
	bra	gtu,.L27
	sub.b	w8,#1,[w15]
	.set ___BP___,29
	bra	z,.L5
	.set ___BP___,50
	bra	ltu,.L4
	sub.b	w8,#2,[w15]
	.set ___BP___,29
	bra	z,.L6
	sub.b	w8,#3,[w15]
	.set ___BP___,29
	bra	z,.L45
.L3:
.LSM4:
	mov.b	#-32,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM5:
	exch	w0,w8
	mov.b	WREG,_TxBuf+1
	exch	w0,w8
.LSM6:
	mov	#2,w4
	mov	w4,_TxBuf+20
.LSM7:
	rcall	_UartStartTx
.L1:
.LSM8:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
.L58:
	.set ___PA___,0
.L26:
.LSM9:
	sub.b	w8,#16,[w15]
	.set ___BP___,29
	bra	z,.L20
	.set ___BP___,50
	bra	gtu,.L29
	sub.b	w8,#13,[w15]
	.set ___BP___,29
	bra	z,.L17
	.set ___BP___,50
	bra	leu,.L46
	sub.b	w8,#14,[w15]
	.set ___BP___,29
	bra	z,.L18
	sub.b	w8,#15,[w15]
	.set ___BP___,71
	bra	nz,.L3
.LSM10:
	mov	#_RcBuf+1,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,50
	bra	nz,.L36
.LSM11:
	clr.b	_ManualHeaterControl
.LSM12:
	mov.b	#15,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM13:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM14:
	rcall	_UartStartTx
.L57:
.LSM15:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L29:
.LSM16:
	add.b	w8,#15,[w15]
	.set ___BP___,29
	bra	z,.L23
	.set ___BP___,50
	bra	leu,.L47
	add.b	w8,#3,[w15]
	.set ___BP___,29
	bra	z,.L24
	add.b	w8,#2,[w15]
	.set ___BP___,71
	bra	nz,.L3
.LSM17:
	mov	w8,w0
	mov.b	WREG,_TxBuf
.LSM18:
	mov	#_TableVLoaded,w4
	mov.b	[w4],w4
	mov	#_TdTLoaded,w0
	and.b	w4,[w0],w4
	ze	w4,w4
	neg	w4,w4
	lsr	w4,#15,w4
	mov	w4,w0
	mov.b	WREG,_TxBuf+1
.LSM19:
	sl.b	_FlagMainOff,WREG
	mov	#_FlagRefTempAchived,w4
	mov.b	[w4],w4
	ze	w4,w4
	sl	w4,#2,w4
	ior.b	w0,w4,w4
	mov	#_FlagWait,w5
	ior.b	w4,[w5],w4
	mov	w4,w0
	mov.b	WREG,_TxBuf+2
.LSM20:
	sl.b	_MaxHeaterUGuard,WREG
	mov	#_MaxHeaterPGuard,w4
	mov.b	[w4],w4
	ze	w4,w4
	sl	w4,#2,w4
	ior.b	w0,w4,w5
	mov	#_MaxHeaterIGuard,w6
	ior.b	w5,[w6],w5
	clr.b	w4
	mov	#_MaxHeaterISoftCount,w6
	mov.b	[w6],w6
	sub.b	w6,w4,[w15]
	.set ___BP___,39
	bra	nz,.L48
	ior.b	w5,w4,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf+3
	exch	w0,w4
.LSM21:
	mov	#4,w4
	mov	w4,_TxBuf+20
.LSM22:
	rcall	_UartStartTx
.L52:
.LSM23:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L27:
.LSM24:
	sub.b	w8,#7,[w15]
	.set ___BP___,29
	bra	z,.L11
	.set ___BP___,50
	bra	leu,.L49
	sub.b	w8,#8,[w15]
	.set ___BP___,29
	bra	z,.L12
	sub.b	w8,#9,[w15]
	.set ___BP___,71
	bra	nz,.L3
.LBB2:
.LSM25:
	mov.b	_RcBuf+1,WREG
	mov.b	WREG,_TEnd
.LSM26:
	mov.b	_RcBuf+2,WREG
	mov.b	WREG,_TEnd+1
.LSM27:
	mov.b	_RcBuf+3,WREG
	mov.b	WREG,_DeltaT
.LSM28:
	mov.b	_RcBuf+4,WREG
	mov.b	WREG,_DeltaT+1
.LSM29:
	mov.b	_RcBuf+5,WREG
	mov.b	WREG,_DeltaT+2
.LSM30:
	mov.b	_RcBuf+6,WREG
	mov.b	WREG,_DeltaT+3
.LSM31:
	clr.b	_FlagMainOff
.LSM32:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM33:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM34:
	rcall	_UartStartTx
.LBE2:
.LSM35:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L14:
.LBB3:
.LSM36:
	mov.b	_RcBuf+1,WREG
	mov.b	WREG,_DifShift
.LSM37:
	mov.b	_RcBuf+2,WREG
	mov.b	WREG,_IDec
.LSM38:
	mov.b	_RcBuf+3,WREG
	mov.b	WREG,_ViMax
.LSM39:
	mov.b	_RcBuf+4,WREG
	mov.b	WREG,_ViMax+1
.LSM40:
	mov.b	_RcBuf+5,WREG
	mov.b	WREG,_ViOff
.LSM41:
	mov.b	_RcBuf+6,WREG
	mov.b	WREG,_ViOff+1
.LSM42:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM43:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM44:
	rcall	_UartStartTx
.LBE3:
.LSM45:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L20:
.LSM46:
	mov.b	_RcBuf+1,WREG
	mov.b	WREG,_MaxHeaterI
.LSM47:
	mov.b	_RcBuf+2,WREG
	mov.b	WREG,_MaxHeaterI+1
.LSM48:
	mov.b	_RcBuf+3,WREG
	mov.b	WREG,_MaxHeaterU
.LSM49:
	mov.b	_RcBuf+4,WREG
	mov.b	WREG,_MaxHeaterU+1
.LSM50:
	mov.b	_RcBuf+5,WREG
	mov.b	WREG,_MaxHeaterP
.LSM51:
	mov.b	_RcBuf+6,WREG
	mov.b	WREG,_MaxHeaterP+1
.LSM52:
	mov.b	_RcBuf+7,WREG
	mov.b	WREG,_MaxHeaterISoft
.LSM53:
	mov.b	_RcBuf+8,WREG
	mov.b	WREG,_MaxHeaterISoft+1
.LSM54:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM55:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM56:
	rcall	_UartStartTx
.LSM57:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L8:
.LSM58:
	mov	#_RcBuf+1,w8
	mov.b	[w8],w8
	ze	w8,w0
	sl	w0,#4,w0
	mov	#_TableV,w4
	add	w0,w4,w0
	mov	#16,w2
	mov	#_RcBuf+2,w1
	rcall	_memmove
.LSM59:
	sub.b	w8,#3,[w15]
	.set ___BP___,19
	bra	z,.L50
.LSM60:
	mov.b	#4,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM61:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM62:
	rcall	_UartStartTx
.L53:
.LSM63:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L47:
.LSM64:
	sub.b	w8,#17,[w15]
	.set ___BP___,29
	bra	z,.L21
	add.b	w8,#16,[w15]
	.set ___BP___,71
	bra	nz,.L3
.LSM65:
	mov	_RcBuf+20,w4
	sub	w4,#3,[w15]
	.set ___BP___,28
	bra	z,.L51
.L40:
.LSM66:
	mov.b	#-31,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
	mov	#1,w4
	mov	w4,_TxBuf+20
	rcall	_UartStartTx
.LSM67:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L49:
.LSM68:
	sub.b	w8,#5,[w15]
	.set ___BP___,29
	bra	z,.L9
	sub.b	w8,#6,[w15]
	.set ___BP___,71
	bra	nz,.L3
.LBB4:
.LSM69:
	mov	w8,w0
	mov.b	WREG,_TxBuf
.LSM70:
	mov	#_RcBuf+1,w4
	mov.b	[w4],w4
	mov.b	w4,[w15-8]
.LSM71:
	mov	#_RcBuf+2,w5
	mov.b	[w5],w5
	mov.b	w5,[w15-7]
.LSM72:
	mov	[w15-8],w0
	rcall	_CalcTByV
	sub	w15,#8,w14
	mov	w0,[++w14]
.LSM73:
	mov.b	WREG,_TxBuf+1
.LSM74:
	mov.b	[w14+1],w0
	mov.b	WREG,_TxBuf+2
.LSM75:
	mov	#3,w4
	mov	w4,_TxBuf+20
.LSM76:
	rcall	_UartStartTx
.LBE4:
.LSM77:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L46:
.LSM78:
	sub.b	w8,#11,[w15]
	.set ___BP___,29
	bra	z,.L15
	sub.b	w8,#12,[w15]
	.set ___BP___,71
	bra	nz,.L3
.LBB5:
.LSM79:
	mov.b	_RcBuf+1,WREG
	mov.b	WREG,_FFTableTemp
.LSM80:
	mov.b	_RcBuf+2,WREG
	mov.b	WREG,_FFTableTemp+1
.LSM81:
	mov.b	_RcBuf+3,WREG
	mov.b	WREG,_FFTableTemp+2
.LSM82:
	mov.b	_RcBuf+4,WREG
	mov.b	WREG,_FFTableTemp+3
.LSM83:
	mov.b	_RcBuf+5,WREG
	mov.b	WREG,_FFTableTemp+4
.LSM84:
	mov.b	_RcBuf+6,WREG
	mov.b	WREG,_FFTableTemp+5
.LSM85:
	mov.b	_RcBuf+7,WREG
	mov.b	WREG,_FFTableTemp+6
.LSM86:
	mov.b	_RcBuf+8,WREG
	mov.b	WREG,_FFTableTemp+7
.LSM87:
	mov.b	_RcBuf+9,WREG
	mov.b	WREG,_FFTableOut
.LSM88:
	mov.b	_RcBuf+10,WREG
	mov.b	WREG,_FFTableOut+1
.LSM89:
	mov.b	_RcBuf+11,WREG
	mov.b	WREG,_FFTableOut+2
.LSM90:
	mov.b	_RcBuf+12,WREG
	mov.b	WREG,_FFTableOut+3
.LSM91:
	mov.b	_RcBuf+13,WREG
	mov.b	WREG,_FFTableOut+4
.LSM92:
	mov.b	_RcBuf+14,WREG
	mov.b	WREG,_FFTableOut+5
.LSM93:
	mov.b	_RcBuf+15,WREG
	mov.b	WREG,_FFTableOut+6
.LSM94:
	mov.b	_RcBuf+16,WREG
	mov.b	WREG,_FFTableOut+7
.LSM95:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM96:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM97:
	rcall	_UartStartTx
.LBE5:
.LSM98:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L4:
.LBB6:
.LSM99:
	mov	#_RcBuf+1,w5
	mov.b	[w5],w5
	ze	w5,w4
	add	w4,w4,w4
	mov	#_ADCData,w6
	add	w4,w6,w4
.LSM100:
	clr.b	_TxBuf
.LBE6:
.LBB7:
.LSM101:
	mov	w5,w0
	mov.b	WREG,_TxBuf+1
.LSM102:
	mov.b	[w4],w0
	mov.b	WREG,_TxBuf+2
.LSM103:
	mov.b	[w4+1],w0
	mov.b	WREG,_TxBuf+3
.LSM104:
	mov	#4,w4
	mov	w4,_TxBuf+20
.LSM105:
	rcall	_UartStartTx
.L54:
.LBE7:
.LSM106:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L51:
.LBB8:
.LSM107:
	mov	#_RcBuf+1,w5
	mov.b	[w5],w5
	sl	w5,#8,w5
	mov	#_RcBuf+2,w4
	mov.b	[w4],w4
	ze	w4,w4
.LSM108:
	mov.b	#-16,w6
	mov	w6,w0
	mov.b	WREG,_TxBuf
.LSM109:
	mov.b	[w5+w4],w0
	mov.b	WREG,_TxBuf+1
.LSM110:
	mov	#2,w4
	mov	w4,_TxBuf+20
.LSM111:
	rcall	_UartStartTx
.LBE8:
.LSM112:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L48:
.LSM113:
	mov.b	#8,w4
	ior.b	w5,w4,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf+3
	exch	w0,w4
.LSM114:
	mov	#4,w4
	mov	w4,_TxBuf+20
.LSM115:
	rcall	_UartStartTx
	bra	.L52
.L45:
.LBB9:
.LSM116:
	mov	w8,w0
	mov.b	WREG,_TxBuf
.LSM117:
	mov.b	_Vp,WREG
	mov.b	WREG,_TxBuf+1
.LSM118:
	mov.b	_Vp+1,WREG
	mov.b	WREG,_TxBuf+2
.LSM119:
	mov.b	_Vi,WREG
	mov.b	WREG,_TxBuf+3
.LSM120:
	mov.b	_Vi+1,WREG
	mov.b	WREG,_TxBuf+4
.LSM121:
	mov.b	_Vd,WREG
	mov.b	WREG,_TxBuf+5
.LSM122:
	mov.b	_Vd+1,WREG
	mov.b	WREG,_TxBuf+6
.LSM123:
	mov.b	_PidOut,WREG
	mov.b	WREG,_TxBuf+7
.LSM124:
	mov.b	_PidOut+1,WREG
	mov.b	WREG,_TxBuf+8
.LSM125:
	mov.b	_Vff,WREG
	mov.b	WREG,_TxBuf+9
.LSM126:
	mov.b	_Vff+1,WREG
	mov.b	WREG,_TxBuf+10
.LSM127:
	mov.b	_Vout,WREG
	mov.b	WREG,_TxBuf+11
.LSM128:
	mov.b	_Vout+1,WREG
	mov.b	WREG,_TxBuf+12
.LSM129:
	mov	#13,w4
	mov	w4,_TxBuf+20
.LSM130:
	rcall	_UartStartTx
.LBE9:
.LSM131:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L50:
.LSM132:
	rcall	_FillTableInvDV
.LSM133:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_TableVLoaded
	exch	w0,w4
.LSM134:
	mov.b	#4,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM135:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM136:
	rcall	_UartStartTx
	bra	.L53
.L12:
.LBB10:
.LSM137:
	mov	w8,w0
	mov.b	WREG,_TxBuf
.LSM138:
	mov.b	_ADCDataAveraged,WREG
	mov.b	WREG,_TxBuf+1
.LSM139:
	mov.b	_ADCDataAveraged+1,WREG
	mov.b	WREG,_TxBuf+2
.LSM140:
	mov.b	_ADCDataAveraged+2,WREG
	mov.b	WREG,_TxBuf+3
.LSM141:
	mov.b	_ADCDataAveraged+3,WREG
	mov.b	WREG,_TxBuf+4
.LSM142:
	mov.b	_ADCDataAveraged+4,WREG
	mov.b	WREG,_TxBuf+5
.LSM143:
	mov.b	_ADCDataAveraged+5,WREG
	mov.b	WREG,_TxBuf+6
.LSM144:
	mov.b	_TRef,WREG
	mov.b	WREG,_TxBuf+7
.LSM145:
	mov.b	_TRef+1,WREG
	mov.b	WREG,_TxBuf+8
.LSM146:
	mov	#9,w4
	mov	w4,_TxBuf+20
.LSM147:
	rcall	_UartStartTx
.LBE10:
.LSM148:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L18:
.LBB11:
.LSM149:
	mov	#_RcBuf+1,w5
	mov.b	[w5],w5
	ze	w5,w4
	add	w4,w4,w4
	mov	#_DacData,w6
	add	w4,w6,w4
.LSM150:
	mov	w8,w0
	mov.b	WREG,_TxBuf
.LBE11:
.LBB12:
.LSM151:
	mov	w5,w0
	mov.b	WREG,_TxBuf+1
.LSM152:
	mov.b	[w4],w0
	mov.b	WREG,_TxBuf+2
.LSM153:
	mov.b	[w4+1],w0
	mov.b	WREG,_TxBuf+3
.LSM154:
	mov	#4,w4
	mov	w4,_TxBuf+20
.LSM155:
	rcall	_UartStartTx
	bra	.L54
.L24:
.LBE12:
.LSM156:
	mov	_RcBuf+20,w4
	sub	w4,#2,[w15]
	.set ___BP___,40
	bra	nz,.L40
	mov.b	#85,w4
	mov	#_RcBuf+1,w5
	mov.b	[w5],w5
	sub.b	w5,w4,[w15]
	.set ___BP___,72
	bra	nz,.L40
.LSM157:
; 333 "ProcessUartMsg.c" 1
	RESET
.LSM158:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L6:
.LBB13:
.LSM159:
	mov.b	_RcBuf+1,WREG
	mov.b	WREG,_Kp
.LSM160:
	mov.b	_RcBuf+2,WREG
	mov.b	WREG,_Kp+1
.LSM161:
	mov.b	_RcBuf+3,WREG
	mov.b	WREG,_Ki
.LSM162:
	mov.b	_RcBuf+4,WREG
	mov.b	WREG,_Ki+1
.LSM163:
	mov.b	_RcBuf+5,WREG
	mov.b	WREG,_Kd
.LSM164:
	mov.b	_RcBuf+6,WREG
	mov.b	WREG,_Kd+1
.LSM165:
	mov.b	_RcBuf+7,WREG
	mov.b	WREG,_Kff
.LSM166:
	mov.b	_RcBuf+8,WREG
	mov.b	WREG,_Kff+1
.LSM167:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM168:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM169:
	rcall	_UartStartTx
.LBE13:
.LSM170:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L5:
.LBB14:
.LSM171:
	mov	#_RcBuf+1,w4
	mov.b	[w4],w4
	ze	w4,w4
	add	w4,w4,w4
	mov	#_DacData,w5
	add	w4,w5,w4
.LSM172:
	mov	#_RcBuf+2,w5
	mov.b	[w5],w5
	mov.b	w5,[w4]
.LSM173:
	mov	#_RcBuf+3,w6
	mov.b	[w6],w6
	mov.b	w6,[w4+1]
.LSM174:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM175:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM176:
	rcall	_UartStartTx
.LBE14:
.LSM177:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L15:
.LSM178:
	mov	#_RcBuf+1,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,50
	bra	nz,.L33
.LSM179:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_FlagWait
	exch	w0,w4
.L34:
.LSM180:
	mov.b	#11,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM181:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM182:
	rcall	_UartStartTx
.LSM183:
	clr.b	_ManualHeaterControl
.L56:
.LSM184:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L9:
.LBB15:
.LSM185:
	mov.b	_RcBuf+1,WREG
	mov.b	WREG,_TableT
.LSM186:
	mov.b	_RcBuf+2,WREG
	mov.b	WREG,_TableT+1
.LSM187:
	mov.b	_RcBuf+3,WREG
	mov.b	WREG,_TableDT
.LSM188:
	rcall	_FillTableT
.LSM189:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_TdTLoaded
	exch	w0,w4
.LSM190:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM191:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM192:
	rcall	_UartStartTx
.LBE15:
.LSM193:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L23:
.LSM194:
	mov	_RcBuf+20,w4
	sub	w4,#4,[w15]
	.set ___BP___,72
	bra	nz,.L40
.LBB16:
.LSM195:
	mov	#_RcBuf+1,w5
	mov.b	[w5],w5
	sl	w5,#8,w5
	mov	#_RcBuf+2,w4
	mov.b	[w4],w4
	ze	w4,w4
.LSM196:
	mov	#_RcBuf+3,w6
	mov.b	[w6],w6
	mov.b	w6,[w5+w4]
.LSM197:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM198:
	mov.b	#-96,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf+1
	exch	w0,w4
.LSM199:
	mov	#2,w4
	mov	w4,_TxBuf+20
.LSM200:
	rcall	_UartStartTx
.LBE16:
.LSM201:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L21:
.LSM202:
	clr.b	_MaxHeaterIGuard
.LSM203:
	clr.b	_MaxHeaterUGuard
.LSM204:
	clr.b	_MaxHeaterPGuard
.LSM205:
	exch	w0,w8
	mov.b	WREG,_TxBuf
	exch	w0,w8
.LSM206:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM207:
	rcall	_UartStartTx
.LSM208:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L11:
.LBB17:
.LSM209:
	mov	#_RcBuf+1,w5
	mov.b	[w5],w5
	ze	w5,w4
	add	w4,w4,w4
	mov	#_ADCDataAveraged,w6
	add	w4,w6,w4
.LSM210:
	mov	w8,w0
	mov.b	WREG,_TxBuf
.LSM211:
	mov	w5,w0
	mov.b	WREG,_TxBuf+1
.LSM212:
	mov.b	[w4],w0
	mov.b	WREG,_TxBuf+2
.LSM213:
	mov.b	[w4+1],w0
	mov.b	WREG,_TxBuf+3
.LSM214:
	mov	#4,w4
	mov	w4,_TxBuf+20
.LSM215:
	rcall	_UartStartTx
	bra	.L54
.L17:
.LBE17:
.LSM216:
	mov	w8,w0
	mov.b	WREG,_TxBuf
.LSM217:
	mov.b	_ADCDataAveraged+6,WREG
	mov.b	WREG,_TxBuf+1
.LSM218:
	mov.b	_ADCDataAveraged+7,WREG
	mov.b	WREG,_TxBuf+2
.LSM219:
	mov	#3,w4
	mov	w4,_TxBuf+20
.LSM220:
	rcall	_UartStartTx
.LSM221:
	mov	[--w15],w14
	mov	[--w15],w8
	sub	w15,#6
	return	
	bra	.L58
.L33:
.LSM222:
	sub.b	w4,#1,[w15]
	.set ___BP___,28
	bra	z,.L55
.LSM223:
	sub.b	w4,#2,[w15]
	.set ___BP___,62
	bra	nz,.L34
.LSM224:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_FlagMainOff
	exch	w0,w4
.LSM225:
	clr	_TRef
.LSM226:
	clr	_TAccumulator+2
.LSM227:
	mov.b	#11,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM228:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM229:
	rcall	_UartStartTx
.LSM230:
	clr.b	_ManualHeaterControl
	bra	.L56
.L36:
.LSM231:
	mov.b	#1,w4
	exch	w0,w4
	mov.b	WREG,_ManualHeaterControl
	exch	w0,w4
.LSM232:
	mov.b	#15,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM233:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM234:
	rcall	_UartStartTx
	bra	.L57
.L55:
.LSM235:
	clr.b	_FlagWait
.LSM236:
	mov.b	#11,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM237:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM238:
	rcall	_UartStartTx
.LSM239:
	clr.b	_ManualHeaterControl
	bra	.L56
.LFE0:
	.align	2
	.global	_ReportFifoRxOverflow	; export
	.type	_ReportFifoRxOverflow,@function
_ReportFifoRxOverflow:
.LFB1:
.LSM240:
	.set ___PA___,1
.LSM241:
	mov.b	#-30,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM242:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM243:
	bra	_UartStartTx
.LSM244:
	.set ___PA___,0
.LFE1:
	.align	2
	.global	_ReportFifoTxOverflow	; export
	.type	_ReportFifoTxOverflow,@function
_ReportFifoTxOverflow:
.LFB2:
.LSM245:
	.set ___PA___,1
.LSM246:
	mov.b	#-29,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM247:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM248:
	bra	_UartStartTx
.LSM249:
	.set ___PA___,0
.LFE2:
	.align	2
	.global	_ReportRcProtocolError	; export
	.type	_ReportRcProtocolError,@function
_ReportRcProtocolError:
.LFB3:
.LSM250:
	.set ___PA___,1
.LSM251:
	mov.b	#-28,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf
	exch	w0,w4
.LSM252:
	mov	#1,w4
	mov	w4,_TxBuf+20
.LSM253:
	bra	_UartStartTx
.LSM254:
	.set ___PA___,0
.LFE3:
	.align	2
	.global	_ReportStartUp	; export
	.type	_ReportStartUp,@function
_ReportStartUp:
.LFB4:
.LSM255:
	.set ___PA___,1
.LSM256:
	setm.b	_TxBuf
.LSM257:
	mov.b	#7,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf+1
	exch	w0,w4
.LSM258:
	mov.b	#-96,w4
	exch	w0,w4
	mov.b	WREG,_TxBuf+2
	exch	w0,w4
.LSM259:
	mov	#3,w4
	mov	w4,_TxBuf+20
.LSM260:
	bra	_UartStartTx
.LSM261:
	.set ___PA___,0
.LFE4:
	.section	.nbss,bss,near
	.type	_TxFifo,@object
	.global	_TxFifo
	.align	2
_TxFifo:	.space	130
	.pushsection	.nbss,bss,near
	.align	2
_Cmd.7633:	.space	1
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
	.4byte	0x934
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.22) (A) Build date: Aug 19 2014"
	.byte	0x1
	.asciz	"ProcessUartMsg.c"
	.asciz	"C:\\\\SourceCode\\\\dsPicProg"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x3
	.asciz	"UINT"
	.byte	0x2
	.byte	0xa
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"BYTE"
	.byte	0x2
	.byte	0xb
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"INT16Q4"
	.byte	0x2
	.byte	0xd
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x3
	.asciz	"INT16Q8"
	.byte	0x2
	.byte	0xe
	.4byte	0xe1
	.uleb128 0x3
	.asciz	"INT32Q20"
	.byte	0x2
	.byte	0x10
	.4byte	0x107
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x4
	.byte	0x16
	.byte	0x3
	.byte	0xc
	.4byte	0x13c
	.uleb128 0x5
	.asciz	"Data"
	.byte	0x3
	.byte	0xe
	.4byte	0x13c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"Length"
	.byte	0x3
	.byte	0xf
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x14c
	.uleb128 0x7
	.4byte	0xa5
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.asciz	"MessageBuffer"
	.byte	0x3
	.byte	0x10
	.4byte	0x113
	.uleb128 0x4
	.byte	0x82
	.byte	0x3
	.byte	0x13
	.4byte	0x19a
	.uleb128 0x5
	.asciz	"Buffer"
	.byte	0x3
	.byte	0x15
	.4byte	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"NIn"
	.byte	0x3
	.byte	0x16
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x5
	.asciz	"NOut"
	.byte	0x3
	.byte	0x17
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x81
	.byte	0x0
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x1aa
	.uleb128 0x7
	.4byte	0xa5
	.byte	0x7f
	.byte	0x0
	.uleb128 0x3
	.asciz	"FIFO"
	.byte	0x3
	.byte	0x19
	.4byte	0x161
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x8
	.byte	0x1
	.asciz	"ProcessUart1Msg"
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.4byte	0x3b5
	.uleb128 0x9
	.asciz	"Cmd"
	.byte	0x1
	.byte	0xc
	.4byte	0xb5
	.byte	0x5
	.byte	0x3
	.4byte	_Cmd.7633
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x219
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0xa7
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x232
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0xb7
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x26f
	.uleb128 0x9
	.asciz	"mV"
	.byte	0x1
	.byte	0x83
	.4byte	0xe8
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x9
	.asciz	"T"
	.byte	0x1
	.byte	0x84
	.4byte	0xd2
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0x85
	.4byte	0x3b5
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x1
	.byte	0x85
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x288
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0xdd
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0x2ac
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0x16
	.4byte	0x3b5
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x1
	.byte	0x16
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0x2c5
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0x30
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0x2e3
	.uleb128 0xc
	.asciz	"Address"
	.byte	0x1
	.2byte	0x130
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0x2fc
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x1
	.byte	0x50
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0x315
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x1
	.byte	0x97
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0x32e
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0xff
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0x352
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3b
	.4byte	0x3b5
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3b
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0x376
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0x23
	.4byte	0x3b5
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x1
	.byte	0x23
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xa
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0x39a
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x1
	.byte	0x73
	.4byte	0x3b5
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x1
	.byte	0x73
	.4byte	0x3b5
	.byte	0x0
	.uleb128 0xd
	.4byte	.LBB16
	.4byte	.LBE16
	.uleb128 0xc
	.asciz	"Address"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x3b5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.4byte	0xb5
	.uleb128 0xf
	.byte	0x1
	.asciz	"ReportFifoRxOverflow"
	.byte	0x1
	.2byte	0x168
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"ReportFifoTxOverflow"
	.byte	0x1
	.2byte	0x170
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"ReportRcProtocolError"
	.byte	0x1
	.2byte	0x178
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"ReportStartUp"
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.uleb128 0x6
	.4byte	0xe1
	.4byte	0x459
	.uleb128 0x7
	.4byte	0xa5
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.asciz	"DacData"
	.byte	0x4
	.byte	0x1
	.4byte	0x449
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x99
	.4byte	0x47a
	.uleb128 0x7
	.4byte	0xa5
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.asciz	"ADCData"
	.byte	0x5
	.byte	0x4
	.4byte	0x46a
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x5
	.byte	0x6
	.4byte	0x46a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Kp"
	.byte	0x6
	.byte	0x29
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Ki"
	.byte	0x6
	.byte	0x29
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Kd"
	.byte	0x6
	.byte	0x29
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Kff"
	.byte	0x6
	.byte	0x29
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vp"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vi"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vd"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vff"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vout"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"ViMax"
	.byte	0x6
	.byte	0x2b
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"ViOff"
	.byte	0x6
	.byte	0x2b
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TRef"
	.byte	0x6
	.byte	0x2c
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"PidOut"
	.byte	0x6
	.byte	0x2d
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xe8
	.4byte	0x554
	.uleb128 0x7
	.4byte	0xa5
	.byte	0x1f
	.byte	0x0
	.uleb128 0x10
	.asciz	"TableV"
	.byte	0x6
	.byte	0x2e
	.4byte	0x544
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xd2
	.4byte	0x574
	.uleb128 0x7
	.4byte	0xa5
	.byte	0x1f
	.byte	0x0
	.uleb128 0x10
	.asciz	"TableT"
	.byte	0x6
	.byte	0x2f
	.4byte	0x564
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xd2
	.4byte	0x594
	.uleb128 0x7
	.4byte	0xa5
	.byte	0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x6
	.byte	0x31
	.4byte	0x584
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x6
	.byte	0x32
	.4byte	0x584
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TableDT"
	.byte	0x6
	.byte	0x34
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x6
	.byte	0x35
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x11
	.4byte	.LASF6
	.byte	0x6
	.byte	0x35
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF7
	.byte	0x6
	.byte	0x38
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"IDec"
	.byte	0x6
	.byte	0x39
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TEnd"
	.byte	0x6
	.byte	0x3a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"DeltaT"
	.byte	0x6
	.byte	0x3b
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x6
	.byte	0x3b
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x6
	.byte	0x3d
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF10
	.byte	0x6
	.byte	0x3e
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x6
	.byte	0x3e
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x6
	.byte	0x3e
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x7
	.byte	0x1
	.4byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x7
	.byte	0x2
	.4byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF15
	.byte	0x7
	.byte	0x3
	.4byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x7
	.byte	0x4
	.4byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x7
	.byte	0x7
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x7
	.byte	0x8
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x7
	.byte	0x9
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x14c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x7
	.4byte	0x14c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"DacData"
	.byte	0x4
	.byte	0x1
	.4byte	0x449
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"ADCData"
	.byte	0x5
	.byte	0x4
	.4byte	0x46a
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x5
	.byte	0x6
	.4byte	0x46a
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.asciz	"TxFifo"
	.byte	0x1
	.byte	0x5
	.4byte	0x1aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TxFifo
	.uleb128 0x10
	.asciz	"Kp"
	.byte	0x6
	.byte	0x29
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Ki"
	.byte	0x6
	.byte	0x29
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Kd"
	.byte	0x6
	.byte	0x29
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Kff"
	.byte	0x6
	.byte	0x29
	.4byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vp"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vi"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vd"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vff"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vout"
	.byte	0x6
	.byte	0x2a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"ViMax"
	.byte	0x6
	.byte	0x2b
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"ViOff"
	.byte	0x6
	.byte	0x2b
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TRef"
	.byte	0x6
	.byte	0x2c
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"PidOut"
	.byte	0x6
	.byte	0x2d
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TableV"
	.byte	0x6
	.byte	0x2e
	.4byte	0x544
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TableT"
	.byte	0x6
	.byte	0x2f
	.4byte	0x564
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x6
	.byte	0x31
	.4byte	0x584
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x6
	.byte	0x32
	.4byte	0x584
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TableDT"
	.byte	0x6
	.byte	0x34
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x6
	.byte	0x35
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF6
	.byte	0x6
	.byte	0x35
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF7
	.byte	0x6
	.byte	0x38
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"IDec"
	.byte	0x6
	.byte	0x39
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TEnd"
	.byte	0x6
	.byte	0x3a
	.4byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"DeltaT"
	.byte	0x6
	.byte	0x3b
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x6
	.byte	0x3b
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x6
	.byte	0x3d
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF10
	.byte	0x6
	.byte	0x3e
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x6
	.byte	0x3e
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x6
	.byte	0x3e
	.4byte	0x5cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x7
	.byte	0x1
	.4byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x7
	.byte	0x2
	.4byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF15
	.byte	0x7
	.byte	0x3
	.4byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x7
	.byte	0x4
	.4byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x7
	.byte	0x7
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x7
	.byte	0x8
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x7
	.byte	0x9
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa
	.4byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"RcBuf"
	.byte	0x1
	.byte	0x6
	.4byte	0x14c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TxBuf"
	.byte	0x1
	.byte	0x7
	.4byte	0x14c
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.4byte	0x938
	.4byte	0x1cc
	.asciz	"ProcessUart1Msg"
	.4byte	0x3bb
	.asciz	"ReportFifoRxOverflow"
	.4byte	0x3e0
	.asciz	"ReportFifoTxOverflow"
	.4byte	0x405
	.asciz	"ReportRcProtocolError"
	.4byte	0x42b
	.asciz	"ReportStartUp"
	.4byte	0x711
	.asciz	"TxFifo"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x60
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x938
	.4byte	0x99
	.asciz	"UINT"
	.4byte	0xb5
	.asciz	"BYTE"
	.4byte	0xd2
	.asciz	"INT16Q4"
	.4byte	0xe8
	.asciz	"INT16Q8"
	.4byte	0xf7
	.asciz	"INT32Q20"
	.4byte	0x14c
	.asciz	"MessageBuffer"
	.4byte	0x1aa
	.asciz	"FIFO"
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
	.asciz	"ProcessUartMsg.c"
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
	.asciz	"DAC.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"ADC.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"HeaterPID.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"PowerLimiter.h"
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x3
	.sleb128 334
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM9
	.byte	0x3
	.sleb128 -340
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x3
	.sleb128 249
	.byte	0x1
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM15
	.byte	0x69
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM16
	.byte	0x3
	.sleb128 -340
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM17
	.byte	0x3
	.sleb128 324
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM19
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM20
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM21
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM22
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM23
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM24
	.byte	0x3
	.sleb128 -340
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM25
	.byte	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM28
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM29
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM30
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM31
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM32
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0xc7
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x3
	.sleb128 -172
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM39
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM41
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM42
	.byte	0x15
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
	.byte	0xb8
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM46
	.byte	0x3
	.sleb128 -80
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM47
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM48
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM49
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM50
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM51
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM54
	.byte	0x15
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
	.byte	0x5a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM58
	.byte	0x3
	.sleb128 -256
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM59
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM61
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM62
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM63
	.byte	0x3
	.sleb128 247
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM64
	.byte	0x3
	.sleb128 -340
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM65
	.byte	0x3
	.sleb128 285
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM66
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM67
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM68
	.byte	0x3
	.sleb128 -340
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM69
	.byte	0x89
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM70
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM71
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM72
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM73
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM74
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM75
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM76
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM77
	.byte	0xe7
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM78
	.byte	0x3
	.sleb128 -340
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM79
	.byte	0xe2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM81
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM82
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM83
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM84
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM85
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM86
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM91
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM92
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM93
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM94
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM98
	.byte	0x88
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM99
	.byte	0x3
	.sleb128 -333
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM100
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM101
	.byte	0x2d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM102
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM103
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM104
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM105
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM106
	.byte	0x3
	.sleb128 303
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM107
	.byte	0x3
	.sleb128 -53
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM108
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM109
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM110
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM111
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM112
	.byte	0x45
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM113
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM114
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM115
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM116
	.byte	0x3
	.sleb128 -264
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM117
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM118
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM120
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM121
	.byte	0x15
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
	.4byte	.LSM124
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM125
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM126
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM127
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM128
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM129
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM130
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM131
	.byte	0x3
	.sleb128 261
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM132
	.byte	0x3
	.sleb128 -252
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM133
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM134
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM135
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM136
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM137
	.byte	0x3e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM138
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM139
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM140
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM141
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM142
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM143
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM144
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM145
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM146
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM147
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM148
	.byte	0xd7
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM149
	.byte	0x3
	.sleb128 -102
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM150
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM151
	.byte	0x3
	.sleb128 -206
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM152
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM153
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM154
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM155
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM156
	.byte	0x3
	.sleb128 277
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM157
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM158
	.byte	0x2c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM159
	.byte	0x3
	.sleb128 -295
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM160
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM161
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM162
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM163
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM164
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM165
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM166
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM167
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM168
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM169
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM170
	.byte	0x3
	.sleb128 282
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM171
	.byte	0x3
	.sleb128 -320
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM172
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM173
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM174
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM175
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM176
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM177
	.byte	0x3
	.sleb128 314
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM178
	.byte	0x3
	.sleb128 -159
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM179
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM180
	.byte	0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM181
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM182
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM183
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM184
	.byte	0xa1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM185
	.byte	0x3
	.sleb128 -239
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM186
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM187
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM188
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM189
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM190
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM191
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM192
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM193
	.byte	0xfb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM194
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM195
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM196
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM197
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM198
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM199
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM200
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM201
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM202
	.byte	0x3
	.sleb128 -65
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM203
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM204
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM205
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM206
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM207
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM208
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM209
	.byte	0x3
	.sleb128 -309
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM210
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM211
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM212
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM213
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM214
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM215
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM216
	.byte	0xd4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM217
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM218
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM219
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM220
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM221
	.byte	0x7f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM222
	.byte	0x3
	.sleb128 -155
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM223
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM224
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM225
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM226
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM227
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM228
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM229
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM230
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM231
	.byte	0x49
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM232
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM233
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM234
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM235
	.byte	0x3
	.sleb128 -68
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM236
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM237
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM238
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM239
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
	.4byte	.LSM240
	.byte	0x3
	.sleb128 360
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM241
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM242
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM243
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM244
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
	.4byte	.LSM245
	.byte	0x3
	.sleb128 368
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM246
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM247
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM248
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM249
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
	.4byte	.LSM250
	.byte	0x3
	.sleb128 376
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM251
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM252
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM253
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM254
	.byte	0x15
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
	.4byte	.LSM255
	.byte	0x3
	.sleb128 385
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM256
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM257
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM258
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM259
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM260
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM261
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF13:
	.asciz	"MaxHeaterI"
.LASF18:
	.asciz	"MaxHeaterUGuard"
.LASF8:
	.asciz	"TAccumulator"
.LASF15:
	.asciz	"MaxHeaterP"
.LASF16:
	.asciz	"MaxHeaterISoft"
.LASF14:
	.asciz	"MaxHeaterU"
.LASF6:
	.asciz	"TdTLoaded"
.LASF1:
	.asciz	"pDest"
.LASF11:
	.asciz	"FlagMainOff"
.LASF17:
	.asciz	"MaxHeaterIGuard"
.LASF4:
	.asciz	"FFTableOut"
.LASF19:
	.asciz	"MaxHeaterPGuard"
.LASF20:
	.asciz	"MaxHeaterISoftCount"
.LASF2:
	.asciz	"ADCDataAveraged"
.LASF7:
	.asciz	"DifShift"
.LASF5:
	.asciz	"TableVLoaded"
.LASF9:
	.asciz	"ManualHeaterControl"
.LASF3:
	.asciz	"FFTableTemp"
.LASF12:
	.asciz	"FlagRefTempAchived"
.LASF0:
	.asciz	"pSrc"
.LASF10:
	.asciz	"FlagWait"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0001
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
