//________________________________________________________
//AD7856 Control Register:

//15..14	ADDR
#define ADC_CONTROL_REG_SEL 0xC0
//13		SGL/!DIFF	Single/pseudo-differential mode

#define ADC_CREG_SGL 0x20
#define ADC_CREG_DIFF 0x00
//12..10	CH			ADC channel number
#define ADC_CREG_CH0 0x00 //000 00
#define ADC_CREG_CH1 0x10 //100 00
#define ADC_CREG_CH2 0x04 //001 00
#define ADC_CREG_CH3 0x14 //101 00
#define ADC_CREG_CH4 0x08 //010 00
#define ADC_CREG_CH5 0x18 //110 00
#define ADC_CREG_CH6 0x0C //011 00
#define ADC_CREG_CH7 0x1C //111 00

//9..8		PMGT		Power managment mode
#define ADC_CREG_PMGT_NORMAL 0x01

//7..6		RDSLT		Register select in read operations
#define ADC_CREG_RDSLT_ADCDATA 0x00
#define ADC_CREG_RDSLT_TESTREG 0x40
#define ADC_CREG_RDSLT_CALREG 0x80
#define ADC_CREG_RDSLT_STATREG 0xC0

//5			2/!3MODE	2-Wire/3-Wire (default) mode
#define ADC_CREG_MODE_3WIRE 0x00
 
//4			CONVST		Conversion start
#define ADC_CREG_CONVST_CONV 0x10
#define ADC_CREG_CONVST_NOCONV 0x00

//3			CALMD		Calibration mode
#define ADC_CREG_CALMD_SELF 0x00
#define ADC_CREG_CALMD_CALIB 0x08

//2..1		CALSLT		Calibration type/ Calibration reg
#define ADC_CREG_CALSLT_DEFAULT 0x00

//0			STCAL		Start calibration
#define ADC_CREG_STCAL_NOCAL 0x00
//________________________________________________________

#define ADC_CONTROL_REG_H (ADC_CONTROL_REG_SEL|ADC_CREG_SGL|ADC_CREG_PMGT_NORMAL)
#define ADC_CONTROL_REG_L (ADC_CREG_MODE_3WIRE|ADC_CREG_RDSLT_ADCDATA|ADC_CREG_STCAL_NOCAL)

void ReadADC8x14(void);
void ReadADC8x14_0_3(void);
extern UINT ADC8x14Data[8];
extern UINT ADC8x14DataTemp0[4];
extern UINT ADC8x14DataTemp1[4];
extern UINT ADC8x14DataAveraged[4];
