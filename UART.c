#include "Main.h"

FIFO RcFifo;
extern FIFO TxFifo;
MessageBuffer RcBuf;
MessageBuffer TxBuf;
volatile bool IsUartRcMsg;

//________________________________________________________________________________
//���������� ������ �����
void __attribute__((interrupt, no_auto_psv)) _U1RXInterrupt(void)
{
    IFS0bits.U1RXIF = 0;
    while(U1STAbits.URXDA)
    {
        BYTE DataByte, NewIndex;
        NewIndex = (RcFifo.NIn+1)&0b01111111;
        if(NewIndex == RcFifo.NOut) //����� ��������, ������ � ���� ������
        {
            ReportFifoRxOverflow();
            return;
        }
        DataByte = U1RXREG;
        RcFifo.Buffer[RcFifo.NIn]=DataByte;
        RcFifo.NIn = NewIndex;
        if(DataByte == UART_STOP)
            IsUartRcMsg = true;	
        if(U1STAbits.OERR) // Receive Buffer Overrun Error
        {
            U1STAbits.OERR = 0;
            ReportFifoRxOverflow();
        }
    }    
}

//________________________________________________________________________________
//���������� ��������� �������� ����� (TXREG->Transmit Shift Reg.)
void __attribute__((interrupt, no_auto_psv)) _U1TXInterrupt(void)
{
	if(TxFifo.NOut == TxFifo.NIn) //����� ����
	{	
		IEC0bits.U1TXIE = 0;
		return;
	}
	U1TXREG = TxFifo.Buffer[TxFifo.NOut];
	TxFifo.NOut = (TxFifo.NOut+1)&0b01111111;
}

//________________________________________________________________________________
//������ �������� ���������
//�������� ������ �� TxBuf.Data � TxFifo.Buffer, ������������ �������� 
//����� ���������� ������
void UartStartTx(void)
{
	BYTE i=0;
	BYTE DataByte, NewIndex;
	static bool WasTxShift=0;
	NewIndex = (TxFifo.NIn+1)&0b01111111;
	if(NewIndex == TxFifo.NOut) //����� ��������, ������ � ���� ������
		return;
	TxFifo.Buffer[TxFifo.NIn] = UART_START;
	TxFifo.NIn = NewIndex;

	do
	{
		NewIndex = (TxFifo.NIn+1)&0b01111111;
		if(NewIndex == TxFifo.NOut) //����� ��������, ������ � ���� ������
			return;
		DataByte = TxBuf.Data[i];
		if(WasTxShift)
		{
			TxFifo.Buffer[TxFifo.NIn] = DataByte-UART_START;
			++i;
			WasTxShift=0;
		}
		else if((DataByte==UART_START) || (DataByte==UART_SHIFT) || (DataByte==UART_STOP))
		{
			TxFifo.Buffer[TxFifo.NIn] = UART_SHIFT;
			WasTxShift=1;
		}
		else //���������� �������� ��� ��������������
		{
			TxFifo.Buffer[TxFifo.NIn] = DataByte;
			++i;
		}
		TxFifo.NIn = NewIndex;
	}while (i!=TxBuf.Length);
	NewIndex = (TxFifo.NIn+1)&0b01111111;
	if(NewIndex == TxFifo.NOut) //����� ��������, ������ � ���� ������
		return;
	TxFifo.Buffer[TxFifo.NIn] = UART_STOP;
	TxFifo.NIn = NewIndex;

	if(IEC0bits.U1TXIE) //�� ��������� ���������� ��������
		return;
	//����� U1TXIE==0, � ������, ��� ���������� ���� � ����� �������� ������
	//�� ������� 
	//�������� ������� ����� ������� ���������� ���������,
	//���� ����� �������� ���� (� ��������� ���� ��� ����� ����
	//� �������� ��������)
	if(IFS0bits.U1TXIF)
	{
		U1TXREG = UART_START;	
		TxFifo.NOut = (TxFifo.NOut+1)&0b01111111;
	}
	IEC0bits.U1TXIE=1;
}

//________________________________________________________________________________
//��������� �� RcFifo ���������, ���������� �� � �������� �� ����������.
//��������� �������� � RcBuf
UINT ExtractRcMessage()
{
	BYTE DataByte;
	static bool WasRxShift = 0;
	DataByte=RcFifo.Buffer[RcFifo.NOut];
	RcFifo.NOut = (RcFifo.NOut + 1) & 0b01111111;
	if(DataByte!=UART_START)
	{
		ReportRcProtocolError();
		WindRcFifo();
		return 0;
	}
	RcBuf.Length = 0;
	while(1)
	{
		DataByte=RcFifo.Buffer[RcFifo.NOut];
		RcFifo.NOut = (RcFifo.NOut + 1) & 0b01111111;

		if(DataByte==UART_SHIFT)
		{
			WasRxShift=1;
		}
		else if(DataByte==UART_START)
		{
			ReportRcProtocolError();
			WindRcFifo();
			return 0;
		}
		else if(DataByte==UART_STOP)
		{
			if(RcBuf.Length == 0)
			{
				ReportRcProtocolError();
				return 0;
			}
			return 1;
			//���������� Reset ����������
			//if(RcFifo.Buffer[RcFifo.NIn].Data[0]==CMD_RESET)
			//{
			//	if((RcFifo.Buffer[RcFifo.NIn].Data[1]==RESET_MAGIC_NUM)&& (RcFifo.Buffer[RcFifo.NIn].Length==2))
			//		asm("RESET");
			//}
		}
		else
		{
			if(RcBuf.Length == BUFFER_LENGTH)
			{
				ReportRcProtocolError(); // ������: ������������ ��������� ������
				return 0;
			}

			if(!WasRxShift)
			{
				RcBuf.Data[RcBuf.Length]=DataByte;
				++RcBuf.Length;
			}
			else
			{
				RcBuf.Data[RcBuf.Length]=DataByte+UART_START;
				WasRxShift=0;
				++RcBuf.Length;
			}
		}
	}
	return 0;
}

//________________________________________________________________________________
//����������� ����� �� RcFifo �� ������� ����� ���������. ���������� ������ ��� ��������� ������������� ���������
void WindRcFifo()
{
	BYTE DataByte;
	do
	{
		if(RcFifo.NOut == RcFifo.NIn)
			return;
		DataByte=RcFifo.Buffer[RcFifo.NOut];
		RcFifo.NOut = (RcFifo.NOut + 1) & 0b01111111;
	}while(DataByte != UART_STOP);
}
