#include "Main.h"

int DacData[16];

void LoadDac(BYTE Channel, UINT Val)
{
	BYTE Byte;
    SpiWaitTransmitEnd();
	//DAC_CS=0;
	SpiSend(Channel);
	Byte=*((BYTE*)&Val+1)|0xC0;
	SpiSend(Byte);
	SpiSend(*((BYTE*)&Val));
	SpiWaitTransmitEnd();
	//DAC_CS=1;
}

void ConfigDac()
{
    SpiWaitTransmitEnd();
	//DAC_CS=0;
	SpiSend(0x1D); //15..14:00 - Control Reg; 13:0 - PD Amp Out; 12:1 - 2.5V;
	//11:1 - Boost Mode On; 10:1 - Int Ref; 9:0 - Monitor Out Z; 8:1 - Thermo Mon On
	SpiSend(0x00);
	SpiWaitTransmitEnd();
	//DAC_CS=1;
}
