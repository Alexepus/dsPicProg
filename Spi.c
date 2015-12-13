#include "Main.h"

// SPI1 Receive Buffer Full Status bit
#define SpiRcBufFull SPI1STATbits.SPIRBF
// SPI1 Transmit Buffer Full Status bit
#define SpiTxBufFull SPI1STATbits.SPITBF

//Конфигурирование SPI-интерфейса
void SpiConfig()
{
    
}
//Синхронная отправка байта (ждет возможности начала отправки)
void inline SpiSend(BYTE val)
{	
    while(SpiTxBufFull);
    SPI1BUF=val;
}

//Синхронный прием байта (ждет получения)
BYTE inline SpiReceive()
{
    while(SpiRcBufFull);
    return SPI1BUF;
}

//Ожидание окончания отправки
void inline SpiWaitTransmitEnd()
{
    while(SpiRcBufFull);
}
