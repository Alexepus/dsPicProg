#include <stdbool.h>

//#define SIMULATION
typedef unsigned int UINT;
typedef unsigned char BYTE;
typedef unsigned long ULONG;  
typedef int INT16Q4;
typedef int INT16Q8;
typedef int INT16Q16;
typedef long INT32Q20;
typedef struct 
{
	BYTE HByte;
	UINT MInt;
	BYTE LByte;
}ULONG_8_16_8;

typedef union
{
	ULONG AsUlong;
	UINT AsUint[2];
	BYTE AsByte[4];
	struct
	{
		BYTE HByte;
		UINT MInt;
		BYTE LByte;
	} AsStruct;
} ULONG_UNION;

// Разрешение соединения выбранного аналогового входа с АЦП
#define AnalogInputEnable LATBbits.LATB10
// Разрешение соединения ЦАП с выбранным аналоговым выходом
#define AnalogOutputEnable LATBbits.LATB9
// Выбор чипа ЦАП для передачи данных (активный уровень - низкий)
#define CS_DAC LATBbits.LATB13

#include "UART.h"
#include "p33FJ64MC804.h"
#include "HardwareInit.h"
#include "Math.h"
#include "Spi.h"
#include "AddressBus.h"
#include "DAC.h"
#include "ADC.h"
#include "ProcessUartMsg.h"
#include "HeaterPID.h"
#include "PowerLimiter.h"
#include "LeakerPID.h"