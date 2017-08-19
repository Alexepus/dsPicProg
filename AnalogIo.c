#include "Main.h"
UINT adcCount;

void ReadWriteAnalog(UINT channel){
    SelectChannel(channel);
    adcCount = (adcCount + 1) & 3;
    AnalogInputEnable = 1;
    DacWrite(DacData[channel]);
    __delay_us(8); // ���������� ����� �� ������: 4 ��� - ����� ������������ ��� ��� 50 �� + 3,3 ��� - ����� ������������ ��. 
                    // ���������� ���� �� ������: 2*3,3 ��� - ����� ������������ 2� �� 
    AnalogOutputEnable = 1; 
    ADCData[channel] = ReadAdc4Times();
    ADCDataTemp[adcCount][channel] = ADCData[channel];
}

void ReadAnalog(UINT channel)
{
    SelectChannel(channel);
    AnalogInputEnable = 1;
    __delay_us(1);
    ADCData[channel] = ReadAdc4Times();
}

void ReadWriteAnalogAll()
{
    int channel;
    for(channel = 0; channel < 8; ++channel)
    {
        ReadWriteAnalog(channel);
    }
}
