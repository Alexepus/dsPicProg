	.file "D:\\Projects\\Programming\\CatalysisTFS\\Catalysis\\dsPicProg\\ADC8x14.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.nbss,bss,near
	.align	2
	.type	_ADC8x14DataTemp,@object
	.size	_ADC8x14DataTemp, 2
_ADC8x14DataTemp:
	.skip	2
	.section	.bss,bss
	.type	_ADC8x14Data,@object
	.global	_ADC8x14Data
	.align	2
_ADC8x14Data:	.space	16
	.section	.nbss,bss,near
	.type	_ADC8x14DataTemp0,@object
	.global	_ADC8x14DataTemp0
	.align	2
_ADC8x14DataTemp0:	.space	8
	.type	_ADC8x14DataTemp1,@object
	.global	_ADC8x14DataTemp1
	.align	2
_ADC8x14DataTemp1:	.space	8
	.type	_ADC8x14DataAveraged,@object
	.global	_ADC8x14DataAveraged
	.align	2
_ADC8x14DataAveraged:	.space	8
	.section	.text,code
	.align	2
	.global	_ReadADC8x14	; export
	.type	_ReadADC8x14,@function
_ReadADC8x14:
.LFB5:
	.file 1 "ADC8x14.c"
	.loc 1 26 0
	.set ___PA___,1
	lnk	#0
.LCFI0:
	.loc 1 55 0
	ulnk	
	return	
	.set ___PA___,0
.LFE5:
	.size	_ReadADC8x14, .-_ReadADC8x14
	.align	2
	.global	_ReadADC8x14_0_3	; export
	.type	_ReadADC8x14_0_3,@function
_ReadADC8x14_0_3:
.LFB6:
	.loc 1 58 0
	.set ___PA___,1
	lnk	#0
.LCFI1:
	.loc 1 134 0
	ulnk	
	return	
	.set ___PA___,0
.LFE6:
	.size	_ReadADC8x14_0_3, .-_ReadADC8x14_0_3
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
	.section	.text,code
.Letext0:
	.file 2 "Main.h"
	.section	.debug_info,info
	.4byte	0x1ec
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.30) (A) Build date: Nov 22 2016"
	.byte	0x1
	.asciz	"ADC8x14.c"
	.ascii	"D:\\\\Projects\\\\Programming\\\\CatalysisTFS\\\\Catalysis\\\\dsPicP"
	.asciz	"rog"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.asciz	"UINT"
	.byte	0x2
	.byte	0x4
	.4byte	0xad
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.asciz	"char"
	.uleb128 0x4
	.byte	0x1
	.asciz	"ReadADC8x14"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5e
	.uleb128 0x4
	.byte	0x1
	.asciz	"ReadADC8x14_0_3"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5e
	.uleb128 0x5
	.asciz	"ADC8x14DataTemp"
	.byte	0x1
	.byte	0x2
	.4byte	0xa1
	.byte	0x5
	.byte	0x3
	.4byte	_ADC8x14DataTemp
	.uleb128 0x6
	.4byte	0xa1
	.4byte	0x165
	.uleb128 0x7
	.4byte	0xad
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.asciz	"ADC8x14Data"
	.byte	0x1
	.byte	0x3
	.4byte	0x155
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ADC8x14Data
	.uleb128 0x6
	.4byte	0xa1
	.4byte	0x18f
	.uleb128 0x7
	.4byte	0xad
	.byte	0x3
	.byte	0x0
	.uleb128 0x8
	.asciz	"ADC8x14DataTemp0"
	.byte	0x1
	.byte	0x4
	.4byte	0x17f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ADC8x14DataTemp0
	.uleb128 0x8
	.asciz	"ADC8x14DataTemp1"
	.byte	0x1
	.byte	0x5
	.4byte	0x17f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ADC8x14DataTemp1
	.uleb128 0x8
	.asciz	"ADC8x14DataAveraged"
	.byte	0x1
	.byte	0x6
	.4byte	0x17f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ADC8x14DataAveraged
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
	.uleb128 0x5
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
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1f0
	.4byte	0xfe
	.asciz	"ReadADC8x14"
	.4byte	0x119
	.asciz	"ReadADC8x14_0_3"
	.4byte	0x165
	.asciz	"ADC8x14Data"
	.4byte	0x18f
	.asciz	"ADC8x14DataTemp0"
	.4byte	0x1ae
	.asciz	"ADC8x14DataTemp1"
	.4byte	0x1cd
	.asciz	"ADC8x14DataAveraged"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x17
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1f0
	.4byte	0xa1
	.asciz	"UINT"
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
