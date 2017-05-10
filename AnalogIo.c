#include "Main.h"

void ReadWriteAnalog(UINT channel)
{
    SelectChannel(channel);
    AnalogInputEnable = 1;
    DacWrite(DacData[channel]);
    AnalogOutputEnable = 1;
    ADCData[channel] = ReadADC();
}
