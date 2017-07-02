#include "Main.h"

UINT ADCData[8];
UINT ADCDataTemp[4][8];
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
    AD1CON1bits.SAMP = 0; // End  sanping, start conversion
    while(!AD1CON1bits.DONE);
    return ADC1BUF0;
}

UINT inline ReadAdc4Times()
{
    UINT adcTemp;
    adcTemp = ReadADC();
    __delay_us(1); // min sample time: 352 ns (14 CPU cycles)
    adcTemp += ReadADC();
    __delay_us(1);
    adcTemp += ReadADC();
    __delay_us(1);
    adcTemp += ReadADC();    
    return adcTemp;
}

