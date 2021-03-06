#include <stdbool.h>
#define UART_START 		0xAA
#define UART_STOP 		0xAB
#define UART_SHIFT 		0xAC

void UartRcInt(void);
void UartTxInt(void);
void UartStartTx(void);
void WindRcFifo(void);

#define BUFFER_LENGTH 20
typedef struct
{
	BYTE Data[BUFFER_LENGTH];
	UINT Length;
} MessageBuffer;

#define FIFO_DEPTH 128
typedef struct
{
	BYTE Buffer[FIFO_DEPTH];
	BYTE NIn; 	//������������� ����� ������ � Buffer[NIn]
	BYTE NOut;	//������������� ����� ���������� �� Buffer[NOut]
	//����� ������: NIn-NOut
} FIFO;

//extern bool FifoRxOverflow;
extern volatile bool IsUartRcMsg;