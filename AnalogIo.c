#include "Main.h"

void ReadWriteAnalog(UINT channel)
{
    SelectChannel(channel);
    AnalogInputEnable = 1;
    DacWrite(DacData[channel]);
    AnalogOutputEnable = 1;
    ADCData[channel] = ReadADC();
}

void ReadAnalog(UINT channel)
{
    SelectChannel(channel);
    AnalogInputEnable = 1;
    SleepOps(5);
    ADCData[channel] = ReadADC();
}

void ReadWriteAnalogAll()
{
    int channel;
    for(channel = 0; channel < 8; ++channel)
    {
        ReadWriteAnalog(channel);
    }
}
