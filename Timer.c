//#include "Main.h"
static UINT SchedullerCount = 0;

void Sleep(UINT ops)
{
    for(UINT i = 0; i < ops; ++i);
}

void __attribute__((interrupt, no_auto_psv)) _Timer0Interrupt(void)
{
    
    ++SchedullerCount;
    if(SchedullerCount >= 16)
        SchedullerCount = 0;
}


