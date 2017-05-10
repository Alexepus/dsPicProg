#include "main.h"

int main (void) 
{
   //-- init hardware
   HardwareInit();

   while(1)
   {
       if(IsUartRcMsg)
       {
           IsUartRcMsg = false;
           ProcessUart1Msg();
       }
       
       //if()
       {
           task_HeaterPid_body();
       }
       
       //if()
       {
           task_LeakerPid_body();
       }
   }

   //-- unreachable
   return 1;
}