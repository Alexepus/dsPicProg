/*******************************************************************************
 *    HARDWARE CONFIGURATION
 ******************************************************************************/

#include "Main.h"

// FBS
#pragma config BWRP = WRPROTECT_OFF     // Boot Segment Write Protect (Boot Segment may be written)
#pragma config BSS = NO_FLASH           // Boot Segment Program Flash Code Protection (No Boot program Flash segment)
#pragma config RBS = NO_RAM             // Boot Segment RAM Protection (No Boot RAM)

// FSS
#pragma config SWRP = WRPROTECT_OFF     // Secure Segment Program Write Protect (Secure segment may be written)
#pragma config SSS = NO_FLASH           // Secure Segment Program Flash Code Protection (No Secure Segment)
#pragma config RSS = NO_RAM             // Secure Segment Data RAM Protection (No Secure RAM)

// FGS
#pragma config GWRP = OFF               // General Code Segment Write Protect (User program memory is not write-protected)
#pragma config GSS = OFF                // General Segment Code Protection (User program memory is not code-protected)

// FOSCSEL
#pragma config FNOSC = PRIPLL           // Oscillator Mode (Primary Oscillator (XT, HS, EC) w/ PLL)
#pragma config IESO = ON                // Internal External Switch Over Mode (Start-up device with FRC, then automatically switch to user-selected oscillator source when ready)

// FOSC
#pragma config POSCMD = XT              // Primary Oscillator Source (XT Oscillator Mode)
#pragma config OSCIOFNC = ON            // OSC2 Pin Function (OSC2 pin has digital I/O function)
#pragma config IOL1WAY = ON             // Peripheral Pin Select Configuration (Allow Only One Re-configuration)
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor (Both Clock Switching and Fail-Safe Clock Monitor are disabled)

// FWDT
#pragma config WDTPOST = PS32768        // Watchdog Timer Postscaler (1:32,768)
#pragma config WDTPRE = PR128           // WDT Prescaler (1:128)
#pragma config WINDIS = OFF             // Watchdog Timer Window (Watchdog Timer in Non-Window mode)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (Watchdog timer enabled/disabled by user software)

// FPOR
#pragma config FPWRT = PWR128           // POR Timer Value (128ms)
#pragma config ALTI2C = OFF             // Alternate I2C  pins (I2C mapped to SDA1/SCL1 pins)
#pragma config LPOL = ON                // Motor Control PWM Low Side Polarity bit (PWM module low side output pins have active-high output polarity)
#pragma config HPOL = ON                // Motor Control PWM High Side Polarity bit (PWM module high side output pins have active-high output polarity)
#pragma config PWMPIN = ON              // Motor Control PWM Module Pin Mode bit (PWM module pins controlled by PORT register at device Reset)

// FICD
#pragma config ICS = PGD1               // Comm Channel Select (Communicate on PGC1/EMUC1 and PGD1/EMUD1)
#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG is Disabled)


//-- system frequency
#define SYS_FREQ           40000000UL

//-- peripheral bus frequency
#define PB_FREQ            (SYS_FREQ / 2)

//-- kernel ticks (system timer) frequency
#define SYS_TMR_FREQ       1000

//-- system timer prescaler
#define SYS_TMR_PRESCALER_VALUE     64
#define SYS_TMR_PRESCALER_REGVALUE  2

//-- system timer period (auto-calculated)
#define SYS_TMR_PERIOD              \
   (PB_FREQ / SYS_TMR_PRESCALER_VALUE / SYS_TMR_FREQ)

/**
 * Hardware init: called from main() with interrupts disabled
 */
void HardwareInit(void)
{
//  Настройка тактовой частоты ядра контроллера    
//  Fosc = Fin*M*/(N1*N2) == 80MHz == 40MIPS; Fin == 10MHz
//  N1 = 2 => PLLPRE<4:0> = 0
    CLKDIVbits.PLLPRE = 0;
    
//  M = 32 => PLLDIV<8:0> = 0x1E
    PLLFBDbits.PLLDIV = 0x1E;
    
//  N2 = 2 => PLLPOST<1:0> = 0
    CLKDIVbits.PLLPOST = 0;
    
//  Настройка входов-выходов периферии
//  UART1:
    RPINR18bits.U1CTSR = 7;  // UART1 Clear to Send (!U1CTS): RP7 (pin 43)
    RPINR18bits.U1RXR = 8;   // UART1 Receive (U1RX): RP8 (pin 44)
    RPOR2bits.RP5R = 0b00100;// UART1 Ready To Send (!U1RTS): RP5 (pin 41)
    RPOR3bits.RP6R = 0b00011;// UART1 Transmit (U1TX): RP6 (pin 42)

//  UART2:    
    RPINR19bits.U2CTSR = 24;    // UART2 Clear to Send (U2CTS): RP24 (pin 4)
    RPINR19bits.U2RXR = 22;     // UART2 Receive (U2RX): RP22 (pin 2)
    RPOR12bits.RP25R = 0b00100; // UART2 Ready To Send (!U2RTS): RP25 (pin 5)
    RPOR11bits.RP23R = 0b00011; // UART2 Transmit (U2TX): RP23 (pin 3)
    
//  SPI1: 
    RPOR5bits.RP11R = 0b00111;  // SPI1 Data Output (SDO1): RP11 (pin 9) 
    RPOR6bits.RP12R = 0b01000;  // SPI1 Clock Output (SCK1): RP12 (pin 10)     
    
//Инициализация портов
//Задание направлений портов
TRISA=0xFFFF;
TRISB=0b1100000110011111; //RB15(U):1 14(U):1 13(CS_DAC):0 12(SCK_DAC):0 11(SDO_DAC):0 10(AIE):0 9(AOE):0 8(U1RX):1
                           //RB7(U1CTS):1 6(U1TX):0 5(U1RTS):0 4(U):1 3(U):1 2(ADC):1 1(PGC):1 0(PGD):1
TRISC=0b0000000101000111; //RC15-10(Unimpl):0 9(!U2RTS):0 8(!U2CTS):1 
                           //RC7(U2TX):0 6(U2RX):1 5(A2):0 4(A1):0 3(A0):0 2(U):1 1(U):1 0(U):1

//Задание выходов с открытым стоком
ODCB=0b0000011000000000; //RB10(AIE):1 9(AOE):1 
ODCC=0b0000000000111000; //RC5(A2):1 4(A1):1 3(A0):1

//Конфигурирование прерываний
IEC0bits.U1RXIE = 1; //UART1 Receiver Interrupt Enable bit
IEC0bits.U1TXIE = 1; //UART1 Transmitter Interrupt Enable bit
//INTCON=0xC0;//GIE:1 PEIE:1 TMR0IE:0 INT0IE:0 RBIE:0 TMR0IF:0 INT0IF:0 RBIF:0
//PIE1=0x22;//PSPIE:0 ADIE:0 RCIE:1 TXIE:0 SSPIE:0 CCP1IE:0 TMR2IE:1 TMR1IE:0
//PIE2=0x00;//N/A:0 CMIE:0 N/A:0 EEIE:0 BCLIE:0 LVDIE:0 TMR3IE:0 ECCP1IE:0
//PIE3=0x00;//CAN

//Конфигурирование UART1
U1MODEbits.UARTEN = 1; //UARTx is enabled
U1MODEbits.USIDL = 0;  //Continues operation in Idle mode
U1MODEbits.IREN = 0;   //IrDA encoder and decoder are disabled
U1MODEbits.RTSMD = 0;  //UxRTS is in Flow Control mode
U1MODEbits.UEN = 0b00; //UxTX and UxRX pins are enabled and used; UxCTS, UxRTS and BCLKx pins are controlled by port latches
U1MODEbits.WAKE = 0;   //No wake-up enabled
U1MODEbits.LPBACK = 0; //Loopback mode is disabled
U1MODEbits.ABAUD = 0;  //Baud rate measurement disabled
U1MODEbits.URXINV = 0; //UxRX Idle state is ‘1’
U1MODEbits.BRGH = 1;   //High-Speed mode
U1MODEbits.PDSEL = 0b00;//8-bit data, no parity
U1MODEbits.STSEL = 0;  //One Stop bit

U1BRG = 42;//173=>57471 (-0.22%) 86=>114942 (-0.22%) 42=>232558 (+0.94%) Formula: U1BRG = 40000000/(16*Baud)-1

U1STAbits.UTXISEL1 = 0;//01: Interrupt is generated when the last transmission is over, transmit buffer is empty 
U1STAbits.UTXISEL0 = 1;//(i.e., the last character has been shifted out of the Transmit Shift Register) and all the transmit operations are completed
U1STAbits.UTXINV = 0;  //UxTX Idle state is ‘1’
U1STAbits.UTXEN = 1;    //UARTx transmitter is enabled; UxTX pin is controlled by UARTx
U1STAbits.URXISEL = 0b00;//Interrupt flag bit is set when a character is received

//Конфигурирование таймеров
//?

////Конфигурирование SPI
//SSPSTAT=0xC0;//SMP:1 CKE:1 D/C:0 D/C:0 D/C:0 D/C:0 D/C:0 BF:0
//SSPCON1=0x30;//WCOL:0 SSPOV:0 SSPEN:1 CKP:1 SSPM3..SSPM0:0000 (SPI Master, Fosc/4)
//
////Начальные состояния выводов
//ADC_CS=1;
//ADC_Conv=1;
//DAC_CS=1;
//DAC_LD=0;
    
   //-- set up timer1
   TN_BFA(TN_BFA_WR, T1CON, TCS, 0);
   TN_BFA(TN_BFA_WR, T1CON, TGATE, 0);
   TN_BFA(TN_BFA_WR, T1CON, TSIDL, 1);

   //-- set prescaler: 1:64
   TN_BFA(TN_BFA_WR, T1CON, TCKPS, SYS_TMR_PRESCALER_REGVALUE); 
   //-- set period
   PR1 = (SYS_TMR_PERIOD - 1);

   //-- set timer1 interrupt
   TN_BFA(TN_BFA_WR, IPC0, T1IP, 2);   //-- set timer1 interrupt priority: 2
   TN_BFA(TN_BFA_WR, IFS0, T1IF, 0);   //-- clear interrupt flag
   TN_BFA(TN_BFA_WR, IEC0, T1IE, 1);   //-- enable interrupt

   //-- eventually, turn the timer on
   TN_BFA(TN_BFA_WR, T1CON, TON, 1);   
}
