#include "Main.h"
// AD5541 16-Bit DAC
int DacData[16];

void DacWrite(UINT val)
{
	BYTE Byte;
    SpiWaitTransmitEnd();
	CS_DAC=0;
	Byte=*((BYTE*)&val+1);
	SpiSend(Byte);
	SpiSend(*((BYTE*)&val));
	SpiWaitTransmitEnd();
	CS_DAC=1;
}
