	.file "D:\\Projects\\Programming\\CatalysisTFS\\Catalysis\\dsPicProg\\HeaterPID.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.global	_Kp	; export
	.section	.ndata,data,near
	.align	2
	.type	_Kp,@object
	.size	_Kp, 2
_Kp:
	.word	256
	.global	_Ki	; export
	.align	2
	.type	_Ki,@object
	.size	_Ki, 2
_Ki:
	.word	256
	.global	_Kd	; export
	.align	2
	.type	_Kd,@object
	.size	_Kd, 2
_Kd:
	.word	256
	.global	_Kff	; export
	.align	2
	.type	_Kff,@object
	.size	_Kff, 2
_Kff:
	.word	256
	.global	_Vp	; export
	.align	2
	.type	_Vp,@object
	.size	_Vp, 2
_Vp:
	.word	32
	.global	_Vi	; export
	.align	2
	.type	_Vi,@object
	.size	_Vi, 2
_Vi:
	.word	48
	.global	_Vd	; export
	.align	2
	.type	_Vd,@object
	.size	_Vd, 2
_Vd:
	.word	64
	.section	.nbss,bss,near
	.type	_Vff,@object
	.global	_Vff
	.align	2
_Vff:	.space	2
	.type	_Vout,@object
	.global	_Vout
	.align	2
_Vout:	.space	2
	.type	_ViMax,@object
	.global	_ViMax
	.align	2
_ViMax:	.space	2
	.type	_ViMin,@object
	.global	_ViMin
	.align	2
_ViMin:	.space	2
	.type	_ViOff,@object
	.global	_ViOff
	.align	2
_ViOff:	.space	2
	.global	_IDec	; export
	.section	.ndata,data,near
	.type	_IDec,@object
	.size	_IDec, 1
_IDec:
	.byte -6
	.global	_TRef	; export
	.section	.nbss,bss,near
	.align	2
	.type	_TRef,@object
	.size	_TRef, 2
_TRef:
	.skip	2
	.type	_TMeas,@object
	.global	_TMeas
	.align	2
_TMeas:	.space	2
	.type	_PidOut,@object
	.global	_PidOut
	.align	2
_PidOut:	.space	2
	.global	_TableV	; export
	.section	.data,data
	.align	2
	.type	_TableV,@object
	.size	_TableV, 64
_TableV:
	.word	-484
	.word	-80
	.word	350
	.word	793
	.word	1238
	.word	1674
	.word	2104
	.word	2536
	.word	2977
	.word	3423
	.word	3874
	.word	4327
	.word	4783
	.word	5240
	.word	5699
	.word	6157
	.word	6614
	.word	7069
	.word	7521
	.word	7970
	.word	8414
	.word	8853
	.word	9288
	.word	9718
	.word	10144
	.word	10565
	.word	10981
	.word	11392
	.word	11799
	.word	12199
	.word	12593
	.word	12980
	.global	_TableT	; export
	.align	2
	.type	_TableT,@object
	.size	_TableT, 64
_TableT:
	.word	-800
	.skip	62
	.section	.bss,bss
	.type	_TableInvDV,@object
	.global	_TableInvDV
	.align	2
_TableInvDV:	.space	64
	.section	.nbss,bss,near
	.type	_FFTableTemp,@object
	.global	_FFTableTemp
	.align	2
_FFTableTemp:	.space	8
	.type	_FFTableOut,@object
	.global	_FFTableOut
	.align	2
_FFTableOut:	.space	8
	.global	_AdcTcTomVCoef	; export
	.section	.ndata,data,near
	.align	2
	.type	_AdcTcTomVCoef,@object
	.size	_AdcTcTomVCoef, 2
_AdcTcTomVCoef:
	.word	655
	.global	_DifShift	; export
	.type	_DifShift,@object
	.size	_DifShift, 1
_DifShift:
	.byte 5
	.global	_TableVLoaded	; export
	.section	.nbss,bss,near
	.type	_TableVLoaded,@object
	.size	_TableVLoaded, 1
_TableVLoaded:
	.skip	1
	.global	_TdTLoaded	; export
	.type	_TdTLoaded,@object
	.size	_TdTLoaded, 1
_TdTLoaded:
	.skip	1
	.global	_TableDT	; export
	.section	.ndata,data,near
	.type	_TableDT,@object
	.size	_TableDT, 1
_TableDT:
	.byte 42
	.section	.nbss,bss,near
	.type	_TEnd,@object
	.global	_TEnd
	.align	2
_TEnd:	.space	2
	.type	_DeltaT,@object
	.global	_DeltaT
	.align	2
_DeltaT:	.space	4
	.type	_TAccumulator,@object
	.global	_TAccumulator
	.align	2
_TAccumulator:	.space	4
	.type	_VoutAcc,@object
	.global	_VoutAcc
	.align	2
_VoutAcc:	.space	4
	.type	_FlagWait,@object
	.global	_FlagWait
_FlagWait:	.space	1
	.type	_FlagMainOff,@object
	.global	_FlagMainOff
_FlagMainOff:	.space	1
	.type	_FlagRefTempAchived,@object
	.global	_FlagRefTempAchived
_FlagRefTempAchived:	.space	1
	.global	_ManualHeaterControl	; export
	.type	_ManualHeaterControl,@object
	.size	_ManualHeaterControl, 1
_ManualHeaterControl:
	.skip	1
	.type	_MulVarA,@object
	.global	_MulVarA
	.align	2
_MulVarA:	.space	4
	.type	_MulVarB,@object
	.global	_MulVarB
	.align	2
_MulVarB:	.space	4
	.global	_TempHistFifo	; export
	.section	.bss,bss
	.align	2
	.type	_TempHistFifo,@object
	.size	_TempHistFifo, 32
_TempHistFifo:
	.skip	32
	.section	.nbss,bss,near
	.type	_TempHistFifoIndex,@object
	.global	_TempHistFifoIndex
_TempHistFifoIndex:	.space	1
	.type	_TempHistFifoDecimCnt,@object
	.global	_TempHistFifoDecimCnt
_TempHistFifoDecimCnt:	.space	1
	.type	_TempHistFifoDecim,@object
	.global	_TempHistFifoDecim
	.align	2
_TempHistFifoDecim:	.space	2
	.type	_A,@object
	.global	_A
	.align	2
_A:	.space	4
	.type	_i,@object
	.global	_i
_i:	.space	1
	.type	_DacVal,@object
	.global	_DacVal
	.align	2
_DacVal:	.space	2
	.type	_AdcAverageCnt,@object
	.global	_AdcAverageCnt
_AdcAverageCnt:	.space	1
	.type	_DacData0Presave,@object
	.global	_DacData0Presave
	.align	2
_DacData0Presave:	.space	2
	.section	.text,code
	.align	2
	.global	_task_HeaterPid_body	; export
	.type	_task_HeaterPid_body,@function
_task_HeaterPid_body:
.LFB5:
	.file 1 "HeaterPID.c"
	.loc 1 38 0
	.set ___PA___,1
	lnk	#2
.LCFI0:
	mov	w0,[w14]
.L24:
	.loc 1 42 0
	mov	#500,w0
	mov	#0,w1
	rcall	_tn_task_sleep
	.loc 1 43 0
	mov	_TMR1,w1
	mov	#-24997,w0
	add	w1,w0,w0
	mov	w0,_Temp1.7887
	.loc 1 44 0
	mov	_Temp1.7887,w0
	mov	w0,_TMR1
	.loc 1 47 0
	rcall	_ReadADC8x14_0_3
	.loc 1 49 0
	mov.b	_AdcAverageCnt,WREG
	inc.b	w0,w0
	mov.b	WREG,_AdcAverageCnt
	.loc 1 50 0
	mov.b	_AdcAverageCnt,WREG
	ze	w0,w0
	and	w0,#2,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L2
	.loc 1 52 0
	mov.b	_AdcAverageCnt,WREG
	ze	w0,w0
	and	w0,#1,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L3
	.loc 1 54 0
	mov	_ADC8x14Data,w1
	mov	#_ADC8x14DataTemp0,w0
	mov	w1,[w0]
	.loc 1 55 0
	mov	_ADC8x14Data+2,w1
	mov	#_ADC8x14DataTemp0,w0
	mov	w1,[w0+2]
	.loc 1 56 0
	mov	_ADC8x14Data+4,w1
	mov	#_ADC8x14DataTemp0,w0
	mov	w1,[w0+4]
	.loc 1 57 0
	mov	_ADC8x14Data+6,w1
	mov	#_ADC8x14DataTemp0,w0
	mov	w1,[w0+6]
	.loc 1 58 0
	bra	.L4
.L3:
	.loc 1 62 0
	mov	#_ADC8x14DataTemp0,w0
	mov	[w0],w1
	mov	_ADC8x14Data,w0
	add	w1,w0,w1
	mov	#_ADC8x14DataTemp0,w0
	mov	w1,[w0]
	.loc 1 63 0
	mov	#_ADC8x14DataTemp0,w0
	mov	[w0+2],w1
	mov	_ADC8x14Data+2,w0
	add	w1,w0,w1
	mov	#_ADC8x14DataTemp0,w0
	mov	w1,[w0+2]
	.loc 1 64 0
	mov	#_ADC8x14DataTemp0,w0
	mov	[w0+4],w1
	mov	_ADC8x14Data+4,w0
	add	w1,w0,w1
	mov	#_ADC8x14DataTemp0,w0
	mov	w1,[w0+4]
	.loc 1 65 0
	mov	#_ADC8x14DataTemp0,w0
	mov	[w0+6],w1
	mov	_ADC8x14Data+6,w0
	add	w1,w0,w1
	mov	#_ADC8x14DataTemp0,w0
	mov	w1,[w0+6]
	bra	.L5
.L2:
	.loc 1 70 0
	mov.b	_AdcAverageCnt,WREG
	ze	w0,w0
	and	w0,#1,w0
	cp0	w0
	.set ___BP___,0
	bra	nz,.L6
	.loc 1 72 0
	mov	_ADC8x14Data,w1
	mov	#_ADC8x14DataTemp1,w0
	mov	w1,[w0]
	.loc 1 73 0
	mov	_ADC8x14Data+2,w1
	mov	#_ADC8x14DataTemp1,w0
	mov	w1,[w0+2]
	.loc 1 74 0
	mov	_ADC8x14Data+4,w1
	mov	#_ADC8x14DataTemp1,w0
	mov	w1,[w0+4]
	.loc 1 75 0
	mov	_ADC8x14Data+6,w1
	mov	#_ADC8x14DataTemp1,w0
	mov	w1,[w0+6]
	.loc 1 76 0
	bra	.L4
.L6:
	.loc 1 80 0
	mov	#_ADC8x14DataTemp1,w0
	mov	[w0],w1
	mov	_ADC8x14Data,w0
	add	w1,w0,w1
	mov	#_ADC8x14DataTemp1,w0
	mov	w1,[w0]
	.loc 1 81 0
	mov	#_ADC8x14DataTemp1,w0
	mov	[w0+2],w1
	mov	_ADC8x14Data+2,w0
	add	w1,w0,w1
	mov	#_ADC8x14DataTemp1,w0
	mov	w1,[w0+2]
	.loc 1 82 0
	mov	#_ADC8x14DataTemp1,w0
	mov	[w0+4],w1
	mov	_ADC8x14Data+4,w0
	add	w1,w0,w1
	mov	#_ADC8x14DataTemp1,w0
	mov	w1,[w0+4]
	.loc 1 83 0
	mov	#_ADC8x14DataTemp1,w0
	mov	[w0+6],w1
	mov	_ADC8x14Data+6,w0
	add	w1,w0,w1
	mov	#_ADC8x14DataTemp1,w0
	mov	w1,[w0+6]
.L5:
	.loc 1 86 0
	mov	#_ADC8x14DataTemp0,w0
	mov	[w0],w1
	mov	#_ADC8x14DataTemp1,w0
	mov	[w0],w0
	add	w1,w0,w0
	lsr	w0,#2,w1
	mov	#_ADC8x14DataAveraged,w0
	mov	w1,[w0]
	.loc 1 87 0
	mov	#_ADC8x14DataTemp0,w0
	mov	[w0+2],w1
	mov	#_ADC8x14DataTemp1,w0
	mov	[w0+2],w0
	add	w1,w0,w0
	lsr	w0,#2,w1
	mov	#_ADC8x14DataAveraged,w0
	mov	w1,[w0+2]
	.loc 1 88 0
	mov	#_ADC8x14DataTemp0,w0
	mov	[w0+4],w1
	mov	#_ADC8x14DataTemp1,w0
	mov	[w0+4],w0
	add	w1,w0,w0
	lsr	w0,#2,w1
	mov	#_ADC8x14DataAveraged,w0
	mov	w1,[w0+4]
	.loc 1 89 0
	mov	#_ADC8x14DataTemp0,w0
	mov	[w0+6],w1
	mov	#_ADC8x14DataTemp1,w0
	mov	[w0+6],w0
	add	w1,w0,w0
	lsr	w0,#2,w1
	mov	#_ADC8x14DataAveraged,w0
	mov	w1,[w0+6]
	.loc 1 91 0
	mov.b	_FlagMainOff,WREG
	btg.b	w0,#0
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L7
	.loc 1 93 0
	mov.b	_FlagWait,WREG
	btg.b	w0,#0
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L8
	.loc 1 96 0
	mov	_TRef,w1
	mov	_TEnd,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	nz,.L9
	.loc 1 98 0
	mov.b	#1,w0
	mov.b	WREG,_FlagRefTempAchived
	bra	.L10
.L9:
	.loc 1 102 0
	clr.b	_FlagRefTempAchived
	.loc 1 103 0
	mov	_TRef,w1
	mov	_TEnd,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	ge,.L11
	.loc 1 106 0
	mov	_TAccumulator,w2
	mov	_TAccumulator+2,w3
	mov	_DeltaT,w0
	mov	_DeltaT+2,w1
	add	w0,w2,w0
	addc	w1,w3,w1
	mov	w0,_TAccumulator
	mov	w1,_TAccumulator+2
	.loc 1 107 0
	mov	#_TAccumulator,w0
	inc2	w0,w0
	mov	[w0],w0
	mov	w0,_TRef
	.loc 1 108 0
	mov	_TRef,w1
	mov	_TEnd,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	le,.L10
	.loc 1 110 0
	mov	_TEnd,w0
	mov	w0,_TRef
	.loc 1 111 0
	mov	#_TAccumulator,w0
	inc2	w0,w0
	mov	_TEnd,w1
	mov	w1,[w0]
	bra	.L10
.L11:
	.loc 1 117 0
	mov	_TAccumulator,w2
	mov	_TAccumulator+2,w3
	mov	_DeltaT,w0
	mov	_DeltaT+2,w1
	sub	w2,w0,w0
	subb	w3,w1,w1
	mov	w0,_TAccumulator
	mov	w1,_TAccumulator+2
	.loc 1 118 0
	mov	#_TAccumulator,w0
	inc2	w0,w0
	mov	[w0],w0
	mov	w0,_TRef
	.loc 1 119 0
	mov	_TRef,w1
	mov	_TEnd,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	ge,.L10
	.loc 1 121 0
	mov	_TEnd,w0
	mov	w0,_TRef
	.loc 1 122 0
	mov	#_TAccumulator,w0
	inc2	w0,w0
	mov	_TEnd,w1
	mov	w1,[w0]
.L10:
	.loc 1 129 0
	mov	#_ADC8x14DataAveraged,w0
	mov	[w0],w0
	clr	w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov	_AdcTcTomVCoef,w0
	mul.su	w0,#1,w2
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mul.ss	w3,w0,w4
	mov	w4,w4
	mul.ss	w1,w2,w6
	mov	w6,w5
	add	w4,w5,w4
	mul.uu	w2,w0,w0
	add	w4,w1,w4
	mov	w4,w1
	mov	w0,_MulVarB
	mov	w1,_MulVarB+2
	mov	#_Temp1.7887,w0
	mov	#_MulVarB,w1
	inc	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	#_Temp1.7887,w0
	inc	w0,w0
	mov	#_MulVarB,w1
	inc2	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 130 0
	mov	_Temp1.7887,w0
	rcall	_CalcTByV
	mov	w0,_TMeas
	.loc 1 131 0
	mov	_TRef,w1
	mov	_TMeas,w0
	sub	w1,w0,w0
	mov	w0,_Vp
	.loc 1 133 0
	mov.b	_TempHistFifoDecimCnt,WREG
	inc.b	w0,w0
	and.b	w0,#3,w0
	mov.b	WREG,_TempHistFifoDecimCnt
	.loc 1 134 0
	mov.b	_TempHistFifoDecimCnt,WREG
	cp0.b	w0
	.set ___BP___,0
	bra	nz,.L12
	.loc 1 136 0
	mov.b	_TempHistFifoIndex,WREG
	inc.b	w0,w0
	and.b	w0,#15,w0
	mov.b	WREG,_TempHistFifoIndex
	.loc 1 137 0
	mov	_TempHistFifoDecim,w1
	mov.b	_TempHistFifoIndex,WREG
	ze	w0,w2
	mov.b	_DifShift,WREG
	ze	w0,w0
	sub	w2,w0,w0
	and	w0,#15,w0
	add	w0,w0,w2
	mov	#_TempHistFifo,w0
	add	w2,w0,w0
	mov	[w0],w0
	sub	w1,w0,w0
	mov	w0,_Vd
	.loc 1 138 0
	mov.b	_TempHistFifoIndex,WREG
	ze	w0,w0
	mov	_TempHistFifoDecim,w1
	add	w0,w0,w2
	mov	#_TempHistFifo,w0
	add	w2,w0,w0
	mov	w1,[w0]
	.loc 1 139 0
	mov	_Vp,w0
	mov	w0,_TempHistFifoDecim
	bra	.L13
.L12:
	.loc 1 143 0
	mov	_TempHistFifoDecim,w1
	mov	_Vp,w0
	add	w1,w0,w0
	mov	w0,_TempHistFifoDecim
.L13:
	.loc 1 146 0
	mov	_Vi,w0
	asr	w0,#15,w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov.b	_IDec,WREG
	ze	w0,w2
	clr	w3
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mul.ss	w3,w0,w4
	mov	w4,w4
	mul.ss	w1,w2,w6
	mov	w6,w5
	add	w4,w5,w4
	mul.uu	w2,w0,w0
	add	w4,w1,w4
	mov	w4,w1
	mov	w0,_MulVarB
	mov	w1,_MulVarB+2
	mov	#_Temp1.7887,w0
	mov	#_MulVarB,w1
	inc	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	#_Temp1.7887,w0
	inc	w0,w0
	mov	#_MulVarB,w1
	inc2	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 147 0
	mov	_Vp,w1
	mov	_Temp1.7887,w0
	add	w1,w0,w0
	mov	w0,_Vi
	.loc 1 148 0
	mov	_Vp,w1
	mov	_ViOff,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	gt,.L14
	mov	_ViOff,w0
	neg	w0,w1
	mov	_Vp,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	le,.L15
.L14:
	.loc 1 149 0
	clr	_Vi
.L15:
	.loc 1 150 0
	mov	_Vi,w1
	mov	_ViMax,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	le,.L16
	.loc 1 151 0
	mov	_ViMax,w0
	mov	w0,_Vi
.L16:
	.loc 1 152 0
	mov	_ViMax,w0
	neg	w0,w1
	mov	_Vi,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	le,.L17
	.loc 1 153 0
	mov	_ViMax,w0
	neg	w0,w0
	mov	w0,_Vi
.L17:
	.loc 1 156 0
	mov	_Kp,w0
	asr	w0,#15,w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov	_Vp,w0
	mul.su	w0,#1,w2
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mul.ss	w3,w0,w4
	mov	w4,w4
	mul.ss	w1,w2,w6
	mov	w6,w5
	add	w4,w5,w4
	mul.uu	w2,w0,w0
	add	w4,w1,w4
	mov	w4,w1
	sl	w1,#8,w2
	lsr	w0,#8,w0
	ior	w2,w0,w0
	asr	w1,#8,w1
	mov	w0,_VoutAcc
	mov	w1,_VoutAcc+2
	.loc 1 157 0
	mov	_Ki,w0
	asr	w0,#15,w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov	_Vi,w0
	mul.su	w0,#1,w2
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mul.ss	w3,w0,w4
	mov	w4,w4
	mul.ss	w1,w2,w6
	mov	w6,w5
	add	w4,w5,w4
	mul.uu	w2,w0,w0
	add	w4,w1,w4
	mov	w4,w1
	sl	w1,#8,w2
	lsr	w0,#8,w0
	ior	w2,w0,w0
	asr	w1,#8,w1
	mov	w0,_MulVarB
	mov	w1,_MulVarB+2
	.loc 1 158 0
	mov	_VoutAcc,w2
	mov	_VoutAcc+2,w3
	mov	_MulVarB,w0
	mov	_MulVarB+2,w1
	add	w0,w2,w0
	addc	w1,w3,w1
	mov	w0,_VoutAcc
	mov	w1,_VoutAcc+2
	.loc 1 159 0
	mov	_Kd,w0
	asr	w0,#15,w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov	_Vd,w0
	mul.su	w0,#1,w2
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mul.ss	w3,w0,w4
	mov	w4,w4
	mul.ss	w1,w2,w6
	mov	w6,w5
	add	w4,w5,w4
	mul.uu	w2,w0,w0
	add	w4,w1,w4
	mov	w4,w1
	sl	w1,#8,w2
	lsr	w0,#8,w0
	ior	w2,w0,w0
	asr	w1,#8,w1
	mov	w0,_MulVarB
	mov	w1,_MulVarB+2
	.loc 1 160 0
	mov	_VoutAcc,w2
	mov	_VoutAcc+2,w3
	mov	_MulVarB,w0
	mov	_MulVarB+2,w1
	add	w0,w2,w0
	addc	w1,w3,w1
	mov	w0,_VoutAcc
	mov	w1,_VoutAcc+2
	.loc 1 161 0
	mov	_VoutAcc,w2
	mov	_VoutAcc+2,w3
	mov	#32767,w0
	mov	#0,w1
	sub	w2,w0,[w15]
	subb	w3,w1,[w15]
	.set ___BP___,0
	bra	le,.L18
	.loc 1 162 0
	mov	#32767,w0
	mov	#0,w1
	mov	w0,_VoutAcc
	mov	w1,_VoutAcc+2
	bra	.L19
.L18:
	.loc 1 163 0
	mov	_VoutAcc,w2
	mov	_VoutAcc+2,w3
	mov	#32768,w0
	mov	#65535,w1
	sub	w2,w0,[w15]
	subb	w3,w1,[w15]
	.set ___BP___,0
	bra	ge,.L19
	.loc 1 164 0
	mov	#32768,w0
	mov	#65535,w1
	mov	w0,_VoutAcc
	mov	w1,_VoutAcc+2
.L19:
	.loc 1 165 0
	mov	_VoutAcc,w0
	mov	_VoutAcc+2,w1
	mov	w0,w0
	mov	w0,_PidOut
	.loc 1 167 0
	mov	_TRef,w0
	rcall	_CalcFF
	mov	w0,_Vff
	.loc 1 169 0
	mov	_Kff,w0
	asr	w0,#15,w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov	_Vff,w0
	mul.su	w0,#1,w2
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mul.ss	w3,w0,w4
	mov	w4,w4
	mul.ss	w1,w2,w6
	mov	w6,w5
	add	w4,w5,w4
	mul.uu	w2,w0,w0
	add	w4,w1,w4
	mov	w4,w1
	sl	w1,#8,w2
	lsr	w0,#8,w0
	ior	w2,w0,w0
	asr	w1,#8,w1
	mov	w0,_MulVarB
	mov	w1,_MulVarB+2
	.loc 1 170 0
	mov	_VoutAcc,w2
	mov	_VoutAcc+2,w3
	mov	_MulVarB,w0
	mov	_MulVarB+2,w1
	add	w0,w2,w0
	addc	w1,w3,w1
	mov	w0,_VoutAcc
	mov	w1,_VoutAcc+2
	.loc 1 171 0
	mov	_VoutAcc,w2
	mov	_VoutAcc+2,w3
	mov	#32767,w0
	mov	#0,w1
	sub	w2,w0,[w15]
	subb	w3,w1,[w15]
	.set ___BP___,0
	bra	le,.L20
	.loc 1 172 0
	mov	#32767,w0
	mov	#0,w1
	mov	w0,_VoutAcc
	mov	w1,_VoutAcc+2
	bra	.L21
.L20:
	.loc 1 173 0
	mov	_VoutAcc,w2
	mov	_VoutAcc+2,w3
	mov	#32768,w0
	mov	#65535,w1
	sub	w2,w0,[w15]
	subb	w3,w1,[w15]
	.set ___BP___,0
	bra	ge,.L21
	.loc 1 174 0
	mov	#32768,w0
	mov	#65535,w1
	mov	w0,_VoutAcc
	mov	w1,_VoutAcc+2
.L21:
	.loc 1 175 0
	mov	_VoutAcc,w0
	mov	_VoutAcc+2,w1
	mov	w0,w0
	mov	w0,_Vout
	.loc 1 176 0
	mov	_Vout,w0
	mov	w0,_DacVal
	.loc 1 177 0
	mov	_DacVal,w1
	mov	#16383,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	le,.L22
	.loc 1 178 0
	mov	#16383,w0
	mov	w0,_DacVal
.L22:
	.loc 1 179 0
	mov	_DacVal,w0
	cp0	w0
	.set ___BP___,0
	bra	ge,.L23
	.loc 1 180 0
	clr	_DacVal
.L23:
	.loc 1 181 0
	mov.b	_ManualHeaterControl,WREG
	btg.b	w0,#0
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L8
	.loc 1 182 0
	mov	_DacVal,w0
	mov	w0,_DacData
	bra	.L8
.L7:
	.loc 1 186 0
	mov.b	_ManualHeaterControl,WREG
	btg.b	w0,#0
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L8
	.loc 1 187 0
	clr	w0
	mov	w0,_DacData
.L8:
	.loc 1 189 0
	mov	_DacData,w0
	mov	w0,_DacData0Presave
	.loc 1 190 0
	rcall	_Limiter
	.loc 1 192 0
	mov	_DacData,w0
	mov	w0,w1
	clr.b	w0
	rcall	_LoadDac
	.loc 1 194 0
	mov	_DacData0Presave,w0
	mov	w0,_DacData
	.loc 1 195 0
	bra	.L24
.L4:
	bra	.L24
.LFE5:
	.size	_task_HeaterPid_body, .-_task_HeaterPid_body
	.align	2
	.global	_CalcTByV	; export
	.type	_CalcTByV,@function
_CalcTByV:
.LFB6:
	.loc 1 201 0
	.set ___PA___,1
	lnk	#6
.LCFI1:
	mov	w0,[w14+2]
	.loc 1 203 0
	mov	_TableV+30,w1
	mov	[w14+2],w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	ge,.L26
	.loc 1 205 0
	mov	_TableV+46,w1
	mov	[w14+2],w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	ge,.L27
	.loc 1 206 0
	mov.b	#24,w0
	mov.b	WREG,_i
	.loc 1 217 0
	bra	.L30
.L27:
	.loc 1 208 0
	mov.b	#16,w0
	mov.b	WREG,_i
	.loc 1 217 0
	bra	.L30
.L26:
	.loc 1 212 0
	mov	_TableV+14,w1
	mov	[w14+2],w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	ge,.L29
	.loc 1 213 0
	mov.b	#8,w0
	mov.b	WREG,_i
	.loc 1 217 0
	bra	.L30
.L29:
	.loc 1 215 0
	mov.b	#1,w0
	mov.b	WREG,_i
	.loc 1 217 0
	bra	.L30
.L32:
	.loc 1 218 0
	mov.b	_i,WREG
	inc.b	w0,w0
	mov.b	WREG,_i
.L30:
	.loc 1 217 0
	mov.b	_i,WREG
	ze	w0,w0
	add	w0,w0,w1
	mov	#_TableV,w0
	add	w1,w0,w0
	mov	[w0],w1
	mov	[w14+2],w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	ge,.L31
	mov.b	_i,WREG
	sub.b	w0,#31,[w15]
	.set ___BP___,0
	bra	leu,.L32
.L31:
	.loc 1 219 0
	mov.b	_i,WREG
	dec.b	w0,w0
	mov.b	WREG,_i
	.loc 1 221 0
	mov.b	_i,WREG
	ze	w0,w0
	add	w0,w0,w1
	mov	#_TableV,w0
	add	w1,w0,w0
	mov	[w0],w0
	mov	[w14+2],w1
	sub	w1,w0,w0
	asr	w0,#15,w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	.loc 1 223 0
	mov.b	_i,WREG
	ze	w0,w0
	add	w0,w0,w1
	mov	#_TableV,w0
	add	w1,w0,w0
	mov	[w0],w0
	mov	[w14+2],w1
	sub	w1,w0,w1
	mov.b	_TableDT,WREG
	ze	w0,w0
	mul.ss	w1,w0,w0
	mov	w0,w0
	asr	w0,#15,w1
	mov	w0,_MulVarB
	mov	w1,_MulVarB+2
	.loc 1 224 0
	mov.b	_i,WREG
	ze	w0,w0
	add	w0,w0,w1
	mov	#_TableV,w0
	add	w1,w0,w0
	mov	[w0],w0
	mov	[w14+2],w1
	sub	w1,w0,w1
	mov.b	_TableDT,WREG
	ze	w0,w0
	mul.ss	w1,w0,w0
	mov	w0,w0
	asr	w0,#15,w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov.b	_i,WREG
	ze	w0,w0
	add	w0,w0,w1
	mov	#_TableInvDV,w0
	add	w1,w0,w0
	mov	[w0],w0
	mul.su	w0,#1,w2
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mul.ss	w3,w0,w4
	mov	w4,w4
	mul.ss	w1,w2,w6
	mov	w6,w5
	add	w4,w5,w4
	mul.uu	w2,w0,w0
	add	w4,w1,w4
	mov	w4,w1
	mov	w0,_MulVarB
	mov	w1,_MulVarB+2
	mov	w14,w0
	mov	#_MulVarB,w1
	inc	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	w14,w0
	inc	w0,w0
	mov	#_MulVarB,w1
	inc2	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 226 0
	mov	[w14],w0
	asr	w0,#15,w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	.loc 1 227 0
	mov.b	_TableDT,WREG
	ze	w0,w1
	mov	[w14],w0
	mul.ss	w1,w0,w0
	mov	w0,w0
	asr	w0,#15,w1
	mov	w0,_MulVarB
	mov	w1,_MulVarB+2
	.loc 1 229 0
	mov.b	_i,WREG
	ze	w0,w0
	add	w0,w0,w1
	mov	#_TableT,w0
	add	w1,w0,w0
	mov	[w0],w0
	mov	w0,[w14+4]
	mov	[w14],w2
	mov	#16,w0
	mov	w0,w3
	repeat	#__TARGET_DIVIDE_CYCLES
	div.sw	w2,w3
	mov	[w14+4],w1
	add	w1,w0,w0
	.loc 1 230 0
	ulnk	
	return	
	.set ___PA___,0
.LFE6:
	.size	_CalcTByV, .-_CalcTByV
	.align	2
	.global	_FillTableT	; export
	.type	_FillTableT,@function
_FillTableT:
.LFB7:
	.loc 1 261 0
	.set ___PA___,1
	lnk	#0
.LCFI2:
	.loc 1 262 0
	mov.b	_TableDT,WREG
	ze	w0,w0
	clr	w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	.loc 1 263 0
	mov	_MulVarA,w2
	mov	_MulVarA+2,w3
	sl	w3,#4,w0
	lsr	w2,#12,w1
	ior	w0,w1,w1
	sl	w2,#4,w0
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	.loc 1 264 0
	mov.b	#1,w0
	mov.b	WREG,_i
	bra	.L34
.L35:
	.loc 1 267 0
	mov.b	_i,WREG
	ze	w0,w2
	mov	_TableT,w0
	mov	w0,w3
	mov.b	_i,WREG
	ze	w0,w4
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mov	w0,w0
	mul.ss	w4,w0,w0
	mov	w0,w0
	add	w3,w0,w0
	mov	w0,w1
	add	w2,w2,w2
	mov	#_TableT,w0
	add	w2,w0,w0
	mov	w1,[w0]
	.loc 1 264 0
	mov.b	_i,WREG
	inc.b	w0,w0
	mov.b	WREG,_i
.L34:
	mov.b	_i,WREG
	sub.b	w0,#31,[w15]
	.set ___BP___,0
	bra	leu,.L35
	.loc 1 269 0
	ulnk	
	return	
	.set ___PA___,0
.LFE7:
	.size	_FillTableT, .-_FillTableT
	.align	2
	.global	_FillTableInvDV	; export
	.type	_FillTableInvDV,@function
_FillTableInvDV:
.LFB8:
	.loc 1 273 0
	.set ___PA___,1
	lnk	#0
.LCFI3:
	mov	w8,[w15++]
.LCFI4:
	.loc 1 274 0
	clr.b	_i
	bra	.L37
.L38:
	.loc 1 275 0
	mov.b	_i,WREG
	ze	w0,w8
	mov.b	_i,WREG
	ze	w0,w0
	inc	w0,w0
	add	w0,w0,w1
	mov	#_TableV,w0
	add	w1,w0,w0
	mov	[w0],w1
	mov.b	_i,WREG
	ze	w0,w0
	add	w0,w0,w2
	mov	#_TableV,w0
	add	w2,w0,w0
	mov	[w0],w0
	sub	w1,w0,w0
	asr	w0,#15,w1
	mov.d	w0,w2
	mov	#0,w0
	mov	#1,w1
	rcall	___divsi3
	mov	w0,w1
	add	w8,w8,w2
	mov	#_TableInvDV,w0
	add	w2,w0,w0
	mov	w1,[w0]
	.loc 1 274 0
	mov.b	_i,WREG
	inc.b	w0,w0
	mov.b	WREG,_i
.L37:
	mov.b	_i,WREG
	sub.b	w0,#30,[w15]
	.set ___BP___,0
	bra	leu,.L38
	.loc 1 276 0
	mov	_TableInvDV+60,w0
	mov	w0,_TableInvDV+62
	.loc 1 277 0
	mov	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE8:
	.size	_FillTableInvDV, .-_FillTableInvDV
	.align	2
	.global	_CalcFF	; export
	.type	_CalcFF,@function
_CalcFF:
.LFB9:
	.loc 1 280 0
	.set ___PA___,1
	lnk	#2
.LCFI5:
	mov	w0,[w14]
	.loc 1 281 0
	mov	#_FFTableTemp,w0
	mov	[w0+4],w0
	sub	w0,[w14],[w15]
	.set ___BP___,0
	bra	le,.L40
	.loc 1 283 0
	mov	#_FFTableTemp,w0
	mov	[w0],w0
	sub	w0,[w14],[w15]
	.set ___BP___,0
	bra	le,.L41
	.loc 1 284 0
	mov	#_FFTableOut,w0
	mov	[w0],w0
	bra	.L42
.L41:
	.loc 1 285 0
	mov	#_FFTableTemp,w0
	mov	[w0+2],w0
	sub	w0,[w14],[w15]
	.set ___BP___,0
	bra	le,.L43
	.loc 1 286 0
	mov	#_FFTableOut,w0
	mov	[w0+2],w3
	mov	#_FFTableOut,w0
	mov	[w0],w2
	mov	#_FFTableTemp,w0
	mov	[w0+2],w1
	mov	#_FFTableTemp,w0
	mov	[w0],w0
	mov	w3,w4
	mov	w2,w3
	mov	w1,w2
	mov	w0,w1
	mov	[w14],w0
	rcall	_linterp
	bra	.L42
.L43:
	.loc 1 287 0
	mov	#_FFTableOut,w0
	mov	[w0+4],w3
	mov	#_FFTableOut,w0
	mov	[w0+2],w2
	mov	#_FFTableTemp,w0
	mov	[w0+4],w1
	mov	#_FFTableTemp,w0
	mov	[w0+2],w0
	mov	w3,w4
	mov	w2,w3
	mov	w1,w2
	mov	w0,w1
	mov	[w14],w0
	rcall	_linterp
	bra	.L42
.L40:
	.loc 1 291 0
	mov	#_FFTableTemp,w0
	mov	[w0+6],w0
	sub	w0,[w14],[w15]
	.set ___BP___,0
	bra	le,.L44
	.loc 1 292 0
	mov	#_FFTableOut,w0
	mov	[w0+6],w3
	mov	#_FFTableOut,w0
	mov	[w0+4],w2
	mov	#_FFTableTemp,w0
	mov	[w0+6],w1
	mov	#_FFTableTemp,w0
	mov	[w0+4],w0
	mov	w3,w4
	mov	w2,w3
	mov	w1,w2
	mov	w0,w1
	mov	[w14],w0
	rcall	_linterp
	bra	.L42
.L44:
	.loc 1 293 0
	mov	#_FFTableOut,w0
	mov	[w0+6],w0
.L42:
	.loc 1 295 0
	ulnk	
	return	
	.set ___PA___,0
.LFE9:
	.size	_CalcFF, .-_CalcFF
	.section	.nbss,bss,near
	.align	2
	.type	_Temp1.7887,@object
	.size	_Temp1.7887, 2
_Temp1.7887:
	.skip	2
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
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x88
	.uleb128 0x3
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI5-.LFB9
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
	.file 3 "p33FJ64MC804.h"
	.file 4 "DAC.h"
	.file 5 "ADC8x14.h"
	.file 6 "HeaterPID.h"
	.section	.debug_info,info
	.4byte	0x8fd
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.30) (A) Build date: Nov 22 2016"
	.byte	0x1
	.asciz	"HeaterPID.c"
	.ascii	"D:\\\\Projects\\\\Programming\\\\CatalysisTFS\\\\Catalysis\\\\dsPicP"
	.asciz	"rog"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.asciz	"UINT"
	.byte	0x2
	.byte	0x4
	.4byte	0xaf
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.asciz	"BYTE"
	.byte	0x2
	.byte	0x5
	.4byte	0xcb
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
	.4byte	0x100
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.asciz	"INT16Q8"
	.byte	0x2
	.byte	0x8
	.4byte	0x100
	.uleb128 0x2
	.asciz	"INT16Q16"
	.byte	0x2
	.byte	0x9
	.4byte	0x100
	.uleb128 0x2
	.asciz	"INT32Q20"
	.byte	0x2
	.byte	0xa
	.4byte	0x136
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.asciz	"char"
	.uleb128 0x5
	.byte	0x1
	.asciz	"task_HeaterPid_body"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5e
	.4byte	0x195
	.uleb128 0x6
	.asciz	"par"
	.byte	0x1
	.byte	0x25
	.4byte	0x142
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x7
	.asciz	"Temp1"
	.byte	0x1
	.byte	0x27
	.4byte	0xf1
	.byte	0x5
	.byte	0x3
	.4byte	_Temp1.7887
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.asciz	"CalcTByV"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.4byte	0xf1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5e
	.4byte	0x1d6
	.uleb128 0x6
	.asciz	"Voltage"
	.byte	0x1
	.byte	0xc8
	.4byte	0x107
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x7
	.asciz	"Tmp"
	.byte	0x1
	.byte	0xca
	.4byte	0xf1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"FillTableT"
	.byte	0x1
	.2byte	0x104
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x9
	.byte	0x1
	.asciz	"FillTableInvDV"
	.byte	0x1
	.2byte	0x110
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5e
	.uleb128 0xa
	.byte	0x1
	.asciz	"CalcFF"
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	0xf1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5e
	.4byte	0x240
	.uleb128 0xb
	.asciz	"TRef"
	.byte	0x1
	.2byte	0x117
	.4byte	0xf1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0xc
	.asciz	"TMR1"
	.byte	0x3
	.2byte	0x43e
	.4byte	0x24f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0xaf
	.uleb128 0xe
	.4byte	0x100
	.4byte	0x264
	.uleb128 0xf
	.4byte	0xaf
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.asciz	"DacData"
	.byte	0x4
	.byte	0x1
	.4byte	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xa3
	.4byte	0x285
	.uleb128 0xf
	.4byte	0xaf
	.byte	0x7
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x5
	.byte	0x34
	.4byte	0x275
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xa3
	.4byte	0x2a2
	.uleb128 0xf
	.4byte	0xaf
	.byte	0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x5
	.byte	0x35
	.4byte	0x292
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x5
	.byte	0x36
	.4byte	0x292
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x5
	.byte	0x37
	.4byte	0x292
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"MulVarA"
	.byte	0x6
	.byte	0x28
	.4byte	0x136
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"MulVarB"
	.byte	0x6
	.byte	0x28
	.4byte	0x136
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Kp"
	.byte	0x6
	.byte	0x29
	.4byte	0x107
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Ki"
	.byte	0x6
	.byte	0x29
	.4byte	0x107
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Kd"
	.byte	0x6
	.byte	0x29
	.4byte	0x107
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Kff"
	.byte	0x6
	.byte	0x29
	.4byte	0x107
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vp"
	.byte	0x6
	.byte	0x2a
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vi"
	.byte	0x6
	.byte	0x2a
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vd"
	.byte	0x6
	.byte	0x2a
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vff"
	.byte	0x6
	.byte	0x2a
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"Vout"
	.byte	0x6
	.byte	0x2a
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"ViMax"
	.byte	0x6
	.byte	0x2b
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"ViOff"
	.byte	0x6
	.byte	0x2b
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TRef"
	.byte	0x6
	.byte	0x2c
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TMeas"
	.byte	0x6
	.byte	0x2c
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"PidOut"
	.byte	0x6
	.byte	0x2d
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x107
	.4byte	0x3b6
	.uleb128 0xf
	.4byte	0xaf
	.byte	0x1f
	.byte	0x0
	.uleb128 0x10
	.asciz	"TableV"
	.byte	0x6
	.byte	0x2e
	.4byte	0x3a6
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xf1
	.4byte	0x3d6
	.uleb128 0xf
	.4byte	0xaf
	.byte	0x1f
	.byte	0x0
	.uleb128 0x10
	.asciz	"TableT"
	.byte	0x6
	.byte	0x2f
	.4byte	0x3c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x6
	.byte	0x30
	.4byte	0x3a6
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xf1
	.4byte	0x403
	.uleb128 0xf
	.4byte	0xaf
	.byte	0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x6
	.byte	0x31
	.4byte	0x3f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF6
	.byte	0x6
	.byte	0x32
	.4byte	0x3f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TableDT"
	.byte	0x6
	.byte	0x34
	.4byte	0xbf
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xf1
	.4byte	0x43e
	.uleb128 0xf
	.4byte	0xaf
	.byte	0xf
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF7
	.byte	0x6
	.byte	0x36
	.4byte	0x42e
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x6
	.byte	0x37
	.4byte	0xbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x6
	.byte	0x38
	.4byte	0xbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"IDec"
	.byte	0x6
	.byte	0x39
	.4byte	0xbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"TEnd"
	.byte	0x6
	.byte	0x3a
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"DeltaT"
	.byte	0x6
	.byte	0x3b
	.4byte	0x126
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF10
	.byte	0x6
	.byte	0x3b
	.4byte	0x126
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"VoutAcc"
	.byte	0x6
	.byte	0x3c
	.4byte	0x136
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x6
	.byte	0x3d
	.4byte	0x4bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x6
	.byte	0x3e
	.4byte	0x4bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x6
	.byte	0x3e
	.4byte	0x4bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x6
	.byte	0x3e
	.4byte	0x4bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe
	.4byte	0x116
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0xbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1c
	.4byte	0xf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"i"
	.byte	0x1
	.byte	0x1e
	.4byte	0xbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"DacVal"
	.byte	0x1
	.byte	0x1f
	.4byte	0x100
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x20
	.4byte	0xbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x21
	.4byte	0xa3
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.asciz	"TMR1"
	.byte	0x3
	.2byte	0x43e
	.4byte	0x24f
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"DacData"
	.byte	0x4
	.byte	0x1
	.4byte	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x5
	.byte	0x34
	.4byte	0x275
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x5
	.byte	0x35
	.4byte	0x292
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x5
	.byte	0x36
	.4byte	0x292
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x5
	.byte	0x37
	.4byte	0x292
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.asciz	"MulVarA"
	.byte	0x1
	.byte	0x18
	.4byte	0x136
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MulVarA
	.uleb128 0x12
	.asciz	"MulVarB"
	.byte	0x1
	.byte	0x18
	.4byte	0x136
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MulVarB
	.uleb128 0x12
	.asciz	"Kp"
	.byte	0x1
	.byte	0x2
	.4byte	0x107
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Kp
	.uleb128 0x12
	.asciz	"Ki"
	.byte	0x1
	.byte	0x2
	.4byte	0x107
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Ki
	.uleb128 0x12
	.asciz	"Kd"
	.byte	0x1
	.byte	0x2
	.4byte	0x107
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Kd
	.uleb128 0x12
	.asciz	"Kff"
	.byte	0x1
	.byte	0x2
	.4byte	0x107
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Kff
	.uleb128 0x12
	.asciz	"Vp"
	.byte	0x1
	.byte	0x3
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Vp
	.uleb128 0x12
	.asciz	"Vi"
	.byte	0x1
	.byte	0x3
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Vi
	.uleb128 0x12
	.asciz	"Vd"
	.byte	0x1
	.byte	0x3
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Vd
	.uleb128 0x12
	.asciz	"Vff"
	.byte	0x1
	.byte	0x3
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Vff
	.uleb128 0x12
	.asciz	"Vout"
	.byte	0x1
	.byte	0x3
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_Vout
	.uleb128 0x12
	.asciz	"ViMax"
	.byte	0x1
	.byte	0x4
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ViMax
	.uleb128 0x12
	.asciz	"ViMin"
	.byte	0x1
	.byte	0x4
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ViMin
	.uleb128 0x12
	.asciz	"ViOff"
	.byte	0x1
	.byte	0x4
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ViOff
	.uleb128 0x12
	.asciz	"TRef"
	.byte	0x1
	.byte	0x6
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TRef
	.uleb128 0x12
	.asciz	"TMeas"
	.byte	0x1
	.byte	0x6
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TMeas
	.uleb128 0x12
	.asciz	"PidOut"
	.byte	0x1
	.byte	0x7
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_PidOut
	.uleb128 0x12
	.asciz	"TableV"
	.byte	0x1
	.byte	0x9
	.4byte	0x3a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TableV
	.uleb128 0x12
	.asciz	"TableT"
	.byte	0x1
	.byte	0xa
	.4byte	0x3c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TableT
	.uleb128 0x13
	.4byte	.LASF4
	.byte	0x1
	.byte	0xb
	.4byte	0x3a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TableInvDV
	.uleb128 0x13
	.4byte	.LASF5
	.byte	0x1
	.byte	0xc
	.4byte	0x3f3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FFTableTemp
	.uleb128 0x13
	.4byte	.LASF6
	.byte	0x1
	.byte	0xd
	.4byte	0x3f3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FFTableOut
	.uleb128 0x12
	.asciz	"TableDT"
	.byte	0x1
	.byte	0x11
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TableDT
	.uleb128 0x12
	.asciz	"TableVLoaded"
	.byte	0x1
	.byte	0x10
	.4byte	0x4bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TableVLoaded
	.uleb128 0x12
	.asciz	"TdTLoaded"
	.byte	0x1
	.byte	0x10
	.4byte	0x4bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TdTLoaded
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.byte	0x1a
	.4byte	0x42e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TempHistFifo
	.uleb128 0x13
	.4byte	.LASF8
	.byte	0x1
	.byte	0x1b
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TempHistFifoIndex
	.uleb128 0x13
	.4byte	.LASF9
	.byte	0x1
	.byte	0xf
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_DifShift
	.uleb128 0x12
	.asciz	"IDec"
	.byte	0x1
	.byte	0x5
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_IDec
	.uleb128 0x12
	.asciz	"TEnd"
	.byte	0x1
	.byte	0x12
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TEnd
	.uleb128 0x12
	.asciz	"DeltaT"
	.byte	0x1
	.byte	0x13
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_DeltaT
	.uleb128 0x13
	.4byte	.LASF10
	.byte	0x1
	.byte	0x13
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TAccumulator
	.uleb128 0x12
	.asciz	"VoutAcc"
	.byte	0x1
	.byte	0x14
	.4byte	0x136
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_VoutAcc
	.uleb128 0x13
	.4byte	.LASF11
	.byte	0x1
	.byte	0x16
	.4byte	0x4bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ManualHeaterControl
	.uleb128 0x13
	.4byte	.LASF12
	.byte	0x1
	.byte	0x15
	.4byte	0x4bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FlagWait
	.uleb128 0x13
	.4byte	.LASF13
	.byte	0x1
	.byte	0x15
	.4byte	0x4bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FlagMainOff
	.uleb128 0x13
	.4byte	.LASF14
	.byte	0x1
	.byte	0x15
	.4byte	0x4bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FlagRefTempAchived
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe
	.4byte	0x116
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_AdcTcTomVCoef
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TempHistFifoDecimCnt
	.uleb128 0x13
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1c
	.4byte	0xf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_TempHistFifoDecim
	.uleb128 0x12
	.asciz	"A"
	.byte	0x1
	.byte	0x1d
	.4byte	0x8ad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_A
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.asciz	"double"
	.uleb128 0x12
	.asciz	"i"
	.byte	0x1
	.byte	0x1e
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_i
	.uleb128 0x12
	.asciz	"DacVal"
	.byte	0x1
	.byte	0x1f
	.4byte	0x100
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_DacVal
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0x20
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_AdcAverageCnt
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x21
	.4byte	0xa3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_DacData0Presave
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x13
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x29e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x901
	.4byte	0x14c
	.asciz	"task_HeaterPid_body"
	.4byte	0x195
	.asciz	"CalcTByV"
	.4byte	0x1d6
	.asciz	"FillTableT"
	.4byte	0x1f1
	.asciz	"FillTableInvDV"
	.4byte	0x210
	.asciz	"CalcFF"
	.4byte	0x59c
	.asciz	"MulVarA"
	.4byte	0x5b2
	.asciz	"MulVarB"
	.4byte	0x5c8
	.asciz	"Kp"
	.4byte	0x5d9
	.asciz	"Ki"
	.4byte	0x5ea
	.asciz	"Kd"
	.4byte	0x5fb
	.asciz	"Kff"
	.4byte	0x60d
	.asciz	"Vp"
	.4byte	0x61e
	.asciz	"Vi"
	.4byte	0x62f
	.asciz	"Vd"
	.4byte	0x640
	.asciz	"Vff"
	.4byte	0x652
	.asciz	"Vout"
	.4byte	0x665
	.asciz	"ViMax"
	.4byte	0x679
	.asciz	"ViMin"
	.4byte	0x68d
	.asciz	"ViOff"
	.4byte	0x6a1
	.asciz	"TRef"
	.4byte	0x6b4
	.asciz	"TMeas"
	.4byte	0x6c8
	.asciz	"PidOut"
	.4byte	0x6dd
	.asciz	"TableV"
	.4byte	0x6f2
	.asciz	"TableT"
	.4byte	0x707
	.asciz	"TableInvDV"
	.4byte	0x719
	.asciz	"FFTableTemp"
	.4byte	0x72b
	.asciz	"FFTableOut"
	.4byte	0x73d
	.asciz	"TableDT"
	.4byte	0x753
	.asciz	"TableVLoaded"
	.4byte	0x76e
	.asciz	"TdTLoaded"
	.4byte	0x786
	.asciz	"TempHistFifo"
	.4byte	0x798
	.asciz	"TempHistFifoIndex"
	.4byte	0x7aa
	.asciz	"DifShift"
	.4byte	0x7bc
	.asciz	"IDec"
	.4byte	0x7cf
	.asciz	"TEnd"
	.4byte	0x7e2
	.asciz	"DeltaT"
	.4byte	0x7f7
	.asciz	"TAccumulator"
	.4byte	0x809
	.asciz	"VoutAcc"
	.4byte	0x81f
	.asciz	"ManualHeaterControl"
	.4byte	0x831
	.asciz	"FlagWait"
	.4byte	0x843
	.asciz	"FlagMainOff"
	.4byte	0x855
	.asciz	"FlagRefTempAchived"
	.4byte	0x867
	.asciz	"AdcTcTomVCoef"
	.4byte	0x879
	.asciz	"TempHistFifoDecimCnt"
	.4byte	0x88b
	.asciz	"TempHistFifoDecim"
	.4byte	0x89d
	.asciz	"A"
	.4byte	0x8b7
	.asciz	"i"
	.4byte	0x8c7
	.asciz	"DacVal"
	.4byte	0x8dc
	.asciz	"AdcAverageCnt"
	.4byte	0x8ee
	.asciz	"DacData0Presave"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x52
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x901
	.4byte	0xa3
	.asciz	"UINT"
	.4byte	0xbf
	.asciz	"BYTE"
	.4byte	0xf1
	.asciz	"INT16Q4"
	.4byte	0x107
	.asciz	"INT16Q8"
	.4byte	0x116
	.asciz	"INT16Q16"
	.4byte	0x126
	.asciz	"INT32Q20"
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
.LASF10:
	.asciz	"TAccumulator"
.LASF11:
	.asciz	"ManualHeaterControl"
.LASF8:
	.asciz	"TempHistFifoIndex"
.LASF15:
	.asciz	"AdcTcTomVCoef"
.LASF13:
	.asciz	"FlagMainOff"
.LASF1:
	.asciz	"ADC8x14DataTemp0"
.LASF2:
	.asciz	"ADC8x14DataTemp1"
.LASF19:
	.asciz	"DacData0Presave"
.LASF6:
	.asciz	"FFTableOut"
.LASF18:
	.asciz	"AdcAverageCnt"
.LASF9:
	.asciz	"DifShift"
.LASF17:
	.asciz	"TempHistFifoDecim"
.LASF7:
	.asciz	"TempHistFifo"
.LASF16:
	.asciz	"TempHistFifoDecimCnt"
.LASF5:
	.asciz	"FFTableTemp"
.LASF14:
	.asciz	"FlagRefTempAchived"
.LASF4:
	.asciz	"TableInvDV"
.LASF0:
	.asciz	"ADC8x14Data"
.LASF12:
	.asciz	"FlagWait"
.LASF3:
	.asciz	"ADC8x14DataAveraged"
	.section	.text,code



	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
