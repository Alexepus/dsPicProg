#include "Main.h"

static UINT SchedullerCount = 0;
bool volatile SchedulledTask0 = false;
bool volatile SchedulledTask1 = false;
bool volatile SchedulledTask2 = false;
bool volatile SchedulledTask3 = false;
bool volatile SchedulledTask4 = false;


void __attribute__((interrupt, no_auto_psv)) _T1Interrupt(void)
{
    IFS0bits.T1IF = 0;
    switch(SchedullerCount)
    {
        case 0:
           SchedulledTask0 = true;
           break;
        case 1:
           SchedulledTask1 = true;
           break;
        case 2:
           SchedulledTask2 = true;
           break;
        case 3:
           SchedulledTask3 = true;
           break;
        default:
           SchedulledTask4 = true;
        SchedullerCount = -1;
           break;           
    }

    ++SchedullerCount;
}


