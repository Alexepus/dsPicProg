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
#define SYS_FREQ           80000000UL

//-- peripheral bus frequency, instructions frequency
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
 * Hardware init: called from main()
 */
void HardwareInit(void)
{
    // Запрещение прерываний
    __asm__ volatile("disi #0x3FFF");    
    
    //  Настройка тактовой частоты ядра контроллера    
    //  Fosc = Fin*M*/(N1*N2) == 80MHz == 40MIPS; Fin == 10MHz
    //  N1 = 2 => PLLPRE<4:0> = 0
    CLKDIVbits.PLLPRE = 0;
    
    //  M = 32 => PLLDIV<8:0> = 0x1E
    PLLFBDbits.PLLDIV = 0x1E;
    
    //  N2 = 2 => PLLPOST<1:0> = 0
    CLKDIVbits.PLLPOST = 0;    
    
    //Инициализация портов
    //Задание направлений портов
    TRISA=0xFFFF;
    TRISB=0b1100000110011111; //RB15(U):1 14(U):1 13(CS_DAC):0 12(SCK_DAC):0 11(SDO_DAC):0 10(AIE):0 9(AOE):0 8(U1RX):1
                               //RB7(U1CTS):1 6(U1TX):0 5(U1RTS):0 4(U):1 3(U):1 2(ADC):1 1(PGC):1 0(PGD):1
    TRISC=0b0000000101000101; //RC15-10(Unimpl):0 9(!U2RTS):0 8(!U2CTS):1 
                               //RC7(U2TX):0 6(U2RX):1 5(A2):0 4(A1):0 3(A0):0 2(U):1 1(LED):0 0(U):1

    //Задание выходов с открытым стоком
    ODCB=0b0000011000000000; //RB10(AIE):1 9(AOE):1 
    ODCC=0b0000000000111000; //RC5(A2):1 4(A1):1 3(A0):1

    //Конфигурирование прерываний
    IEC0bits.U1RXIE = 1; //UART1 Receiver Interrupt Enable bit
    IEC0bits.U1TXIE = 0; //UART1 Transmitter Interrupt Enable bit

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
    RPINR20bits.SCK1R = 12;     // SCK1 input RP12 (pin 10)
    RPINR20bits.SDI1R = 15;     // SDI input RP15 (pin 15)  DUMMY!
    RPOR5bits.RP11R = 0b00111;  // SPI1 Data Output (SDO1): RP11 (pin 9) 
    RPOR6bits.RP12R = 0b01000;  // SPI1 Clock Output (SCK1): RP12 (pin 10) 

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

    U1STAbits.UTXISEL1 = 1;//10 = Interrupt is generated when a character is transferred to the Transmit Shift Register (TSR) and
                           //the transmit buffer becomes empty
    U1STAbits.UTXISEL0 = 0;
    U1STAbits.UTXINV = 0;  //UxTX Idle state is ‘1’
    U1STAbits.UTXEN = 1;    //UARTx transmitter is enabled; UxTX pin is controlled by UARTx
    U1STAbits.URXISEL = 0b00;//Interrupt flag bit is set when a character is received
        
    //Конфигурирование АЦП
    AD1PCFGL = 0x01EC; // Все порты, кроме AN4 (вход), AN1 (VRef-), AN0 (VRef+) - цифровые
    AD1CON1bits.ADON = 1; //ADC on/off
    AD1CON1bits.ADSIDL = 0; //idle on /off
    AD1CON1bits.AD12B = 1; //12-bit, 1-channel ADC operation
    AD1CON1bits.FORM = 0b00; //output format 00=int
    AD1CON1bits.SSRC = 0b000; // 000 = Clearing sample bit ends sampling and starts conversion
    AD1CON1bits.ASAM = 1; //1 = Sampling begins immediately after last conversion. SAMP bit is auto-set
    AD1CON2bits.VCFG = 0b011; //Converter Voltage Reference Configuration bits: External VREF+, External VREF-
    AD1CON3bits.ADCS = 0; // 0 = Clock derived from system clock;
    AD1CHS0bits.CH0NB = 0; //0 = Channel 0 negative input is VREF
    AD1CHS0bits.CH0SB = 0b00100;//00101 = Channel 0 positive input is AN4   
    AD1CHS0bits.CH0NA = 0; //0 = Channel 0 negative input is VREF
    AD1CHS0bits.CH0SA = 0b00100;//00101 = Channel 0 positive input is AN4   
    
    ////Конфигурирование SPI   
    SPI1CON1bits.MODE16 = 1; // 1 = Communication is word-wide (16 bits)
    SPI1CON1bits.SSEN = 0; // 0 = /SSx pin not used by module. Pin controlled by port function
    SPI1CON1bits.CKP = 0; // Clock Polarity Select bit: 0 = Idle state for clock is a low level; active state is a high level; 1 = Idle state for clock is a high level; active state is a low level
    SPI1CON1bits.CKE = 1; //SPIx Clock Edge Select bit: 1 = Serial output data changes on transition from active clock state to Idle clock state
    SPI1CON1bits.MSTEN = 1; // 1 = Master mode
    
    SPI1CON1bits.SPRE = 0b111; // Secondary prescale 1:1
    SPI1CON1bits.PPRE = 0b10; // 10 = Primary prescale 4:1; 00 = Primary prescale 64:1
    SPI1STATbits.SPIEN = 1; // 1 = Enables module and configures SCKx, SDOx, SDIx and SSx as serial port pins

    //Начальные состояния выводов
	CS_DAC=1;
    
    //Конфигурирование таймеров
    //-- set up timer1
    T1CONbits.TCS = 0;
    T1CONbits.TGATE = 0;
    T1CONbits.TSIDL = 1;

    //-- set prescaler: 1:64
    T1CONbits.TCKPS = SYS_TMR_PRESCALER_REGVALUE;
    //-- set period
    PR1 = (SYS_TMR_PERIOD - 1);

    //-- set timer1 interrupt
    IPC0bits.T1IP = 2;  //-- set timer1 interrupt priority: 2
    IFS0bits.T1IF = 0;  //-- clear interrupt flag
    IEC0bits.T1IE = 1;  //-- enable interrupt

    //-- eventually, turn the timer on
    T1CONbits.TON = 1;  

    // Разрешение прерываний
    INTCON2bits.DISI = 0;
}
