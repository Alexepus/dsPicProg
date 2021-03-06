#include "Main.h"

// SPI1 Receive Buffer Full Status bit
#define SpiRcBufFull SPI1STATbits.SPIRBF
// SPI1 Transmit Buffer Full Status bit
#define SpiTxBufFull SPI1STATbits.SPITBF

//���������������� SPI-����������
void SpiConfig()
{
    
}
//���������� �������� ����� (���� ����������� ������ ��������)
void inline SpiSend(BYTE val)
{	
    while(SpiTxBufFull);
    SPI1BUF=val;
}

//���������� �������� ����� (���� ����������� ������ ��������)
void inline SpiSend16(UINT val)
{	
    UINT dummy;
    dummy = SPI1BUF;
    SPI1BUF=val;
}

//���������� ����� ����� (���� ���������)
BYTE inline SpiReceive()
{
    while(SpiRcBufFull);
    return SPI1BUF;
}

//�������� ��������� ��������
void inline SpiWaitTransmitEnd()
{
    //__delay_us(2)
    while(!SpiRcBufFull);
}
