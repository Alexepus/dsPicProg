	.file "D:\\Projects\\Programming\\CatalysisTFS\\Catalysis\\dsPicProg\\PowerLimiter.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.nbss,bss,near
	.type	_MaxHeaterISoft,@object
	.global	_MaxHeaterISoft
	.align	2
_MaxHeaterISoft:	.space	2
	.type	_MaxHeaterI,@object
	.global	_MaxHeaterI
	.align	2
_MaxHeaterI:	.space	2
	.type	_MaxHeaterU,@object
	.global	_MaxHeaterU
	.align	2
_MaxHeaterU:	.space	2
	.type	_MaxHeaterP,@object
	.global	_MaxHeaterP
	.align	2
_MaxHeaterP:	.space	2
	.type	_HeaterP,@object
	.global	_HeaterP
	.align	2
_HeaterP:	.space	2
	.global	_KHeaterIToRef	; export
	.align	2
	.type	_KHeaterIToRef,@object
	.size	_KHeaterIToRef, 4
_KHeaterIToRef:
	.skip	4
	.global	_KHeaterIToRef_Medium	; export
	.section	.ndata,data,near
	.align	2
	.type	_KHeaterIToRef_Medium,@object
	.size	_KHeaterIToRef_Medium, 4
_KHeaterIToRef_Medium:
	.long	127
	.global	_DacData0Max	; export
	.align	2
	.type	_DacData0Max,@object
	.size	_DacData0Max, 2
_DacData0Max:
	.word	-1
	.global	_MaxHeaterISoftCount	; export
	.section	.nbss,bss,near
	.type	_MaxHeaterISoftCount,@object
	.size	_MaxHeaterISoftCount, 1
_MaxHeaterISoftCount:
	.skip	1
	.global	_MaxHeaterIGuard	; export
	.type	_MaxHeaterIGuard,@object
	.size	_MaxHeaterIGuard, 1
_MaxHeaterIGuard:
	.skip	1
	.global	_MaxHeaterUGuard	; export
	.type	_MaxHeaterUGuard,@object
	.size	_MaxHeaterUGuard, 1
_MaxHeaterUGuard:
	.skip	1
	.global	_MaxHeaterPGuard	; export
	.type	_MaxHeaterPGuard,@object
	.size	_MaxHeaterPGuard, 1
_MaxHeaterPGuard:
	.skip	1
	.section	.text,code
	.align	2
	.global	_Limiter	; export
	.type	_Limiter,@function
_Limiter:
.LFB0:
	.file 1 "PowerLimiter.c"
	.loc 1 20 0
	.set ___PA___,1
	lnk	#6
.LCFI0:
	.loc 1 23 0
	mov	_ADCDataAveraged+2,w1
	mov	_MaxHeaterI,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	leu,.L2
	.loc 1 25 0
	mov.b	#1,w0
	mov.b	WREG,_MaxHeaterIGuard
.L2:
	.loc 1 28 0
	mov	_DacData,w0
	mov	w0,w1
	mov	_DacData0Max,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	leu,.L3
	mov	_ADCDataAveraged+2,w1
	mov	_MaxHeaterISoft,w0
	lsr	w0,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	leu,.L3
	.loc 1 30 0
	mov.b	#100,w0
	mov.b	WREG,_MaxHeaterISoftCount
	.loc 1 31 0
	mov	_DacData0Max,w0
	mov	w0,_DacData
	bra	.L4
.L3:
	.loc 1 35 0
	mov.b	_MaxHeaterISoftCount,WREG
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L4
	.loc 1 36 0
	mov.b	_MaxHeaterISoftCount,WREG
	dec.b	w0,w0
	mov.b	WREG,_MaxHeaterISoftCount
.L4:
	.loc 1 39 0
	mov	_DacData,w0
	mov	w0,[w14+2]
	.loc 1 40 0
	clr.b	w0
	mov.b	w0,[w14]
	.loc 1 42 0
	mov	_ADCDataAveraged+2,w0
	cp0	w0
	.set ___BP___,0
	bra	z,.L5
	.loc 1 43 0
	mov.d	[w14],w4
	mov	_ADCDataAveraged+2,w0
	clr	w1
	mov.d	w0,w2
	mov.d	w4,w0
	rcall	___udivsi3
	mov	w0,_KHeaterIToRef
	mov	w1,_KHeaterIToRef+2
	bra	.L6
.L5:
	.loc 1 45 0
	setm	w0
	setm	w1
	mov	w0,_KHeaterIToRef
	mov	w1,_KHeaterIToRef+2
.L6:
	.loc 1 47 0
	mov	_KHeaterIToRef_Medium,w0
	mov	_KHeaterIToRef_Medium+2,w1
	mov	#244,w2
	mul.ss	w1,w2,w2
	mov	w2,w4
	mul.su	w0,#0,w2
	mov	w2,w2
	add	w4,w2,w4
	mov	#244,w2
	mul.uu	w0,w2,w2
	add	w4,w3,w4
	mov	w4,w3
	mov	_KHeaterIToRef,w0
	mov	_KHeaterIToRef+2,w1
	mul.su	w1,#12,w4
	mov	w4,w4
	mul.su	w0,#0,w6
	mov	w6,w5
	add	w4,w5,w4
	mov	#12,w5
	mul.uu	w0,w5,w0
	add	w4,w1,w4
	mov	w4,w1
	add	w0,w2,w0
	addc	w1,w3,w1
	mov.d	w0,[w14]
	.loc 1 49 0
	mov	[w14+2],w0
	clr	w1
	mov	w0,_KHeaterIToRef_Medium
	mov	w1,_KHeaterIToRef_Medium+2
	.loc 1 50 0
	mov	_MaxHeaterISoft,w0
	clr	w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov	_MulVarA,w0
	mov	_MulVarA+2,w1
	mov.d	w0,w2
	mov	_KHeaterIToRef_Medium,w0
	mov	_KHeaterIToRef_Medium+2,w1
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
	mov	#_DacData0Max,w0
	mov	#_MulVarB,w1
	inc	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	#_DacData0Max,w0
	inc	w0,w0
	mov	#_MulVarB,w1
	inc2	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 52 0
	mov	_ADCDataAveraged+4,w1
	mov	_MaxHeaterU,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	leu,.L7
	.loc 1 54 0
	mov.b	#1,w0
	mov.b	WREG,_MaxHeaterUGuard
.L7:
	.loc 1 57 0
	mov	_ADCDataAveraged+2,w0
	clr	w1
	mov	w0,_MulVarA
	mov	w1,_MulVarA+2
	mov	_ADCDataAveraged+4,w0
	mul.uu	w0,#1,w2
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
	mov	#_HeaterP,w0
	mov	#_MulVarB,w1
	inc2	w1,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	mov	#_HeaterP,w0
	inc	w0,w0
	mov	#_MulVarB,w1
	add	w1,#3,w1
	mov.b	[w1],w1
	mov.b	w1,[w0]
	.loc 1 58 0
	mov	_HeaterP,w1
	mov	_MaxHeaterP,w0
	sub	w1,w0,[w15]
	.set ___BP___,0
	bra	leu,.L8
	.loc 1 60 0
	mov.b	#1,w0
	mov.b	WREG,_MaxHeaterPGuard
.L8:
	.loc 1 63 0
	mov	#_MaxHeaterIGuard,w1
	mov.b	[w1],w1
	mov.b	_MaxHeaterUGuard,WREG
	ior.b	w1,w0,w1
	mov.b	_MaxHeaterPGuard,WREG
	ior.b	w1,w0,w0
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L1
	.loc 1 64 0
	clr	w0
	mov	w0,_DacData
.L1:
	.loc 1 65 0
	ulnk	
	return	
	.set ___PA___,0
.LFE0:
	.size	_Limiter, .-_Limiter
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
	.file 3 "DAC.h"
	.file 4 "HeaterPID.h"
	.file 5 "ADC.h"
	.file 6 "PowerLimiter.h"
	.section	.debug_info,info
	.4byte	0x406
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.30) (A) Build date: Nov 22 2016"
	.byte	0x1
	.asciz	"PowerLimiter.c"
	.ascii	"D:\\\\Projects\\\\Programming\\\\CatalysisTFS\\\\Catalysis\\\\dsPicP"
	.asciz	"rog"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.asciz	"UINT"
	.byte	0x2
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.asciz	"BYTE"
	.byte	0x2
	.byte	0x5
	.4byte	0xce
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x2
	.asciz	"ULONG"
	.byte	0x2
	.byte	0x6
	.4byte	0xec
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
	.byte	0x6
	.byte	0x2
	.byte	0x17
	.4byte	0x14c
	.uleb128 0x5
	.asciz	"HByte"
	.byte	0x2
	.byte	0x19
	.4byte	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"MInt"
	.byte	0x2
	.byte	0x1a
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"LByte"
	.byte	0x2
	.byte	0x1b
	.4byte	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x6
	.byte	0x2
	.byte	0x12
	.4byte	0x190
	.uleb128 0x7
	.asciz	"AsUlong"
	.byte	0x2
	.byte	0x14
	.4byte	0xdf
	.uleb128 0x7
	.asciz	"AsUint"
	.byte	0x2
	.byte	0x15
	.4byte	0x190
	.uleb128 0x7
	.asciz	"AsByte"
	.byte	0x2
	.byte	0x16
	.4byte	0x1a0
	.uleb128 0x7
	.asciz	"AsStruct"
	.byte	0x2
	.byte	0x1c
	.4byte	0x114
	.byte	0x0
	.uleb128 0x8
	.4byte	0xa6
	.4byte	0x1a0
	.uleb128 0x9
	.4byte	0xb2
	.byte	0x1
	.byte	0x0
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x1b0
	.uleb128 0x9
	.4byte	0xb2
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.asciz	"ULONG_UNION"
	.byte	0x2
	.byte	0x1d
	.4byte	0x14c
	.uleb128 0xa
	.byte	0x1
	.asciz	"Limiter"
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.4byte	0x1ed
	.uleb128 0xb
	.asciz	"Tmp"
	.byte	0x1
	.byte	0x15
	.4byte	0x1b0
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x101
	.4byte	0x1fd
	.uleb128 0x9
	.4byte	0xb2
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.asciz	"DacData"
	.byte	0x3
	.byte	0x1
	.4byte	0x1ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	0xa6
	.4byte	0x21e
	.uleb128 0x9
	.4byte	0xb2
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF0
	.byte	0x5
	.byte	0x6
	.4byte	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.asciz	"MulVarA"
	.byte	0x4
	.byte	0x28
	.4byte	0x108
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.asciz	"MulVarB"
	.byte	0x4
	.byte	0x28
	.4byte	0x108
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF1
	.byte	0x6
	.byte	0x1
	.4byte	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF2
	.byte	0x6
	.byte	0x2
	.4byte	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF3
	.byte	0x6
	.byte	0x3
	.4byte	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF4
	.byte	0x6
	.byte	0x4
	.4byte	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF5
	.byte	0x6
	.byte	0x5
	.4byte	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF6
	.byte	0x6
	.byte	0x7
	.4byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF7
	.byte	0x6
	.byte	0x8
	.4byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF8
	.byte	0x6
	.byte	0x9
	.4byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF9
	.byte	0x6
	.byte	0xa
	.4byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.asciz	"HeaterP"
	.byte	0x1
	.byte	0x9
	.4byte	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF10
	.byte	0x1
	.byte	0xa
	.4byte	0xdf
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0xb
	.4byte	0xdf
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.asciz	"DacData"
	.byte	0x3
	.byte	0x1
	.4byte	0x1ed
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF0
	.byte	0x5
	.byte	0x6
	.4byte	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.asciz	"MulVarA"
	.byte	0x4
	.byte	0x28
	.4byte	0x108
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.asciz	"MulVarB"
	.byte	0x4
	.byte	0x28
	.4byte	0x108
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF1
	.byte	0x1
	.byte	0x6
	.4byte	0xa6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MaxHeaterI
	.uleb128 0xe
	.4byte	.LASF2
	.byte	0x1
	.byte	0x7
	.4byte	0xa6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MaxHeaterU
	.uleb128 0xe
	.4byte	.LASF3
	.byte	0x1
	.byte	0x8
	.4byte	0xa6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MaxHeaterP
	.uleb128 0xe
	.4byte	.LASF4
	.byte	0x1
	.byte	0x4
	.4byte	0xa6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MaxHeaterISoft
	.uleb128 0xe
	.4byte	.LASF5
	.byte	0x1
	.byte	0xc
	.4byte	0xa6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_DacData0Max
	.uleb128 0xe
	.4byte	.LASF6
	.byte	0x1
	.byte	0xf
	.4byte	0xc2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MaxHeaterIGuard
	.uleb128 0xe
	.4byte	.LASF7
	.byte	0x1
	.byte	0x10
	.4byte	0xc2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MaxHeaterUGuard
	.uleb128 0xe
	.4byte	.LASF8
	.byte	0x1
	.byte	0x11
	.4byte	0xc2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MaxHeaterPGuard
	.uleb128 0xe
	.4byte	.LASF9
	.byte	0x1
	.byte	0xe
	.4byte	0xc2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_MaxHeaterISoftCount
	.uleb128 0xf
	.asciz	"HeaterP"
	.byte	0x1
	.byte	0x9
	.4byte	0xa6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_HeaterP
	.uleb128 0xe
	.4byte	.LASF10
	.byte	0x1
	.byte	0xa
	.4byte	0xdf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_KHeaterIToRef
	.uleb128 0xe
	.4byte	.LASF11
	.byte	0x1
	.byte	0xb
	.4byte	0xdf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_KHeaterIToRef_Medium
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
	.uleb128 0x17
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
	.uleb128 0x7
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xf5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x40a
	.4byte	0x1c3
	.asciz	"Limiter"
	.4byte	0x32d
	.asciz	"MaxHeaterI"
	.4byte	0x33f
	.asciz	"MaxHeaterU"
	.4byte	0x351
	.asciz	"MaxHeaterP"
	.4byte	0x363
	.asciz	"MaxHeaterISoft"
	.4byte	0x375
	.asciz	"DacData0Max"
	.4byte	0x387
	.asciz	"MaxHeaterIGuard"
	.4byte	0x399
	.asciz	"MaxHeaterUGuard"
	.4byte	0x3ab
	.asciz	"MaxHeaterPGuard"
	.4byte	0x3bd
	.asciz	"MaxHeaterISoftCount"
	.4byte	0x3cf
	.asciz	"HeaterP"
	.4byte	0x3e5
	.asciz	"KHeaterIToRef"
	.4byte	0x3f7
	.asciz	"KHeaterIToRef_Medium"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x3a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x40a
	.4byte	0xa6
	.asciz	"UINT"
	.4byte	0xc2
	.asciz	"BYTE"
	.4byte	0xdf
	.asciz	"ULONG"
	.4byte	0x1b0
	.asciz	"ULONG_UNION"
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
.LASF9:
	.asciz	"MaxHeaterISoftCount"
.LASF8:
	.asciz	"MaxHeaterPGuard"
.LASF4:
	.asciz	"MaxHeaterISoft"
.LASF10:
	.asciz	"KHeaterIToRef"
.LASF1:
	.asciz	"MaxHeaterI"
.LASF0:
	.asciz	"ADCDataAveraged"
.LASF11:
	.asciz	"KHeaterIToRef_Medium"
.LASF3:
	.asciz	"MaxHeaterP"
.LASF5:
	.asciz	"DacData0Max"
.LASF2:
	.asciz	"MaxHeaterU"
.LASF7:
	.asciz	"MaxHeaterUGuard"
.LASF6:
	.asciz	"MaxHeaterIGuard"
	.section	.text,code



	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
