#include "Main.h"
UINT ADCData[8];
UINT ADCDataTemp0[8];
UINT ADCDataTemp1[8];
UINT ADCDataAveraged[8];

#define CONVERT_CHANNEL(ChannelN,NextChannel, StartNext) {\
	SpiSend(ADC_CONTROL_REG_H|NextChannel);\
	*((BYTE*)&ADC8x14Data[ChannelN]+1)=SpiReceive();\
	SpiSend(ADC_CONTROL_REG_L|StartNext);\
	*((BYTE*)&ADC8x14Data[ChannelN])=SpiReceive();}

#define CONVERT_CHANNEL_TO_TMP(NextChannel) {\
	SpiSend(ADC_CONTROL_REG_H|NextChannel);\
	*((BYTE*)&ADC8x14DataTemp+1)=SpiReceive();\
	SpiSend(ADC_CONTROL_REG_L);\
	*((BYTE*)&ADC8x14DataTemp)=SpiReceive();}

#define START_ADC8x14_CONV()\
	ADC_Conv=0;\
	asm("nop");\
	ADC_Conv=1;	

// Считать встроенный АЦП 12 бит
UINT inline ReadADC(void)
{
    AD1CON1bits.SAMP = 1;
    while(!AD1CON1bits.DONE);
    return ADC1BUF0;
}

