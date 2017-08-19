#include "main.h"

extern bool volatile SchedulledTask0;
extern bool volatile SchedulledTask1;
extern bool volatile SchedulledTask2;
extern bool volatile SchedulledTask3;
extern bool volatile SchedulledTask4;

int main (void) 
{
    int i;
    //-- init hardware
    HardwareInit();
    
    for(i = 1; i<11; ++i)
    {
        LED0 = i&1;    
        __delay_ms(200);
    }
    
    ReportStartUp();
        
    while(1)
    {
        IEC0bits.U1RXIE = 1; //UART1 Receiver Interrupt Enable bit
        if(IsUartRcMsg)
        {
            IsUartRcMsg = false;
            ProcessUart1Msg();
        }   
     
        if(SchedulledTask0)
        {
            SchedulledTask0 = false;
            ReadWriteAnalogAll();
        }

        if(SchedulledTask1)
        {
            SchedulledTask1 = false;
            task_HeaterPid_body();
        }

        if(SchedulledTask2)
        {
            SchedulledTask2 = false;
            task_LeakerPid_body();
        }
   }

   //-- unreachable
   return 1;
}