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

#define SPI_WAIT_COUNT 8
//#define SPI_WAIT() {
#define ADC_CS PORTCbits.RC1 
#define ADC_Busy PORTBbits.RB0 
#define ADC_Conv PORTCbits.RC0
#define DAC_LD PORTAbits.RA4
#define DAC_CS PORTCbits.RC2

#include "UART.h"
#include "p33FJ64MC804.h"
#include "TNeo/src/tn.h"
#include "HardwareInit.h"
#include "Math.h"
#include "Spi.h"
#include "DAC.h"
#include "ADC8x14.h"
#include "ProcessUartMsg.h"
#include "HeaterPID.h"
#include "PowerLimiter.h"

void ConfigDevice(void);
void ProcessUartMsg(void);
//void memmove_opt(void * pDest, const void * pSrc, register unsigned char n);
