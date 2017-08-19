/* 
 * Работа по SPI-интерфейсу
 */

#ifndef SPI_H
#define	SPI_H

//Конфигурирование SPI-интерфейса
void SpiConfig();

//Синхронная отправка байта (ждет возможности начала отправки)
void inline SpiSend(BYTE val);

//Синхронная отправка байта (ждет возможности начала отправки)
void inline SpiSend16(UINT val);

//Синхронный прием байта (ждет получения)
BYTE inline SpiReceive();

//Ожидание окончания отправки
void inline SpiWaitTransmitEnd();
	
#endif	/* SPI_H */

