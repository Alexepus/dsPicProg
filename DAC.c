#include "Main.h"
// AD5541 16-Bit DAC
int DacData[8];

void DacWrite(UINT val)
{
	CS_DAC=0;
	SpiSend16(val);
	SpiWaitTransmitEnd();
	CS_DAC=1;
}
