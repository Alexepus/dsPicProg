#include "Main.h"

/*******************************************************************************
 *    HARDWARE CONFIGURATION
 ******************************************************************************/

#pragma config JTAGEN         = OFF       //-- JTAG disabled
#pragma config GWRP           = OFF       //-- Code protect off
#pragma config FWDTEN         = OFF       //-- Watchdog disabled

#pragma config SWRP           = WRPROTECT_OFF//-- Secure segment may be written 
#pragma config SSS            = NO_FLASH  //-- No Secure Segment 
                                          
#pragma config POSCMD         = HS        //-- HS oscillator
#pragma config FNOSC          = PRIPLL    //-- Primary oscillator (XT, HS, EC) with
                                          //   PLL module
#pragma config IESO           = OFF       //-- Two-speed start-up disabled
#pragma config OSCIOFNC       = ON        //-- OSCO functions as OSCO (FOSC / 2),


/**
 * Hardware init: called from main() with interrupts disabled
 */
void hw_init(void)
{
//   //-- set up timer1
//   TN_BFA(TN_BFA_WR, T1CON, TCS, 0);
//   TN_BFA(TN_BFA_WR, T1CON, TGATE, 0);
//   TN_BFA(TN_BFA_WR, T1CON, TSIDL, 1);
//
//   //-- set prescaler: 1:64
//   TN_BFA(TN_BFA_WR, T1CON, TCKPS, SYS_TMR_PRESCALER_REGVALUE); 
//   //-- set period
//   PR1 = (SYS_TMR_PERIOD - 1);
//
//   //-- set timer1 interrupt
//   TN_BFA(TN_BFA_WR, IPC0, T1IP, 2);   //-- set timer1 interrupt priority: 2
//   TN_BFA(TN_BFA_WR, IFS0, T1IF, 0);   //-- clear interrupt flag
//   TN_BFA(TN_BFA_WR, IEC0, T1IE, 1);   //-- enable interrupt
//
//   //-- eventually, turn the timer on
//   TN_BFA(TN_BFA_WR, T1CON, TON, 1);   
}
