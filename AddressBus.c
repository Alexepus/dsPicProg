#include "Main.h"

// Выходы адресов каналов цифрового ввода и вывода
#define AnalogAddressA0 LATCbits.LATC3
#define AnalogAddressA1 LATCbits.LATC4
#define AnalogAddressA2 LATCbits.LATC5

typedef struct {
  unsigned :3;
  unsigned AnalogAddress:3;
  unsigned :4;
} LATCBITS2;

// Выбор канала ЦАП и АЦП
void SelectChannel(unsigned channelNumber)
{

    AnalogInputEnable = 0;
    AnalogOutputEnable = 0;
    LATCBITS2 *LATCbits2 = (LATCBITS2 *)(&LATC);
    LATCbits2->AnalogAddress = channelNumber;
}
