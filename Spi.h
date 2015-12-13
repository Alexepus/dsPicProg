/* 
 * ������ �� SPI-����������
 */

#ifndef SPI_H
#define	SPI_H

//���������������� SPI-����������
void SpiConfig();

//���������� �������� ����� (���� ����������� ������ ��������)
void inline SpiSend(BYTE val);

//���������� ����� ����� (���� ���������)
BYTE inline SpiReceive();

//�������� ��������� ��������
void inline SpiWaitTransmitEnd();
	
#endif	/* SPI_H */

