#include "main.h"

/*******************************************************************************
 *    MACROS
 ******************************************************************************/

//-- instruction that causes debugger to halt
#define PIC24_SOFTWARE_BREAK()  {__asm__ volatile(".pword 0xDA4000"); __asm__ volatile ("nop");}

//-- system frequency
#define SYS_FREQ           32000000UL

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

//-- idle task stack size, in words
#define IDLE_TASK_STACK_SIZE          (TN_MIN_STACK_SIZE + 32)

//-- interrupt stack size, in words
#define INTERRUPT_STACK_SIZE          (TN_MIN_STACK_SIZE + 64)

//-- stack sizes of user tasks
#define TASK_HEATERPID_STK_SIZE    (TN_MIN_STACK_SIZE + 96)
#define TASK_GASPID_STK_SIZE    (TN_MIN_STACK_SIZE + 96)

//-- user task priorities
#define TASK_A_PRIORITY    7
#define TASK_B_PRIORITY    6

/*******************************************************************************
 *    DATA
 ******************************************************************************/

TN_SEM UartRcMsgSem;

//-- Allocate arrays for stacks: stack for idle task
//   and for interrupts are the requirement of the kernel;
//   others are application-dependent.
//
//   We use convenience macro TN_STACK_ARR_DEF() for that.

TN_STACK_ARR_DEF(idle_task_stack, IDLE_TASK_STACK_SIZE);
TN_STACK_ARR_DEF(interrupt_stack, INTERRUPT_STACK_SIZE);

TN_STACK_ARR_DEF(task_HeaterPid_stack, TASK_HEATERPID_STK_SIZE);
TN_STACK_ARR_DEF(task_GasPid_stack, TASK_GASPID_STK_SIZE);

//-- task structures

struct TN_Task task_HeaterPid = {};
struct TN_Task task_GasPid = {};


/*******************************************************************************
 *    ISRs
 ******************************************************************************/

/**
 * system timer ISR
 */
tn_p24_soft_isr(_T1Interrupt, auto_psv)
{
   //-- clear interrupt flag
   TN_BFA(TN_BFA_WR, IFS0, T1IF, 0);

   //-- proceed system tick
   tn_tick_int_processing();
}



/*******************************************************************************
 *    FUNCTIONS
 ******************************************************************************/

//-- idle callback that is called periodically from idle task
void idle_task_callback (void)
{
}

//-- create first application task(s)
void InitOs(void)
{
   //-- task A performs complete application initialization,
   //   it's the first created application task
   tn_task_create(
         &task_HeaterPid,           //-- task structure
         task_HeaterPid_body,       //-- task body function
         TASK_A_PRIORITY,           //-- task priority
         task_HeaterPid_stack,              //-- task stack
         TASK_HEATERPID_STK_SIZE,   //-- task stack size (in words)
         TN_NULL,                   //-- task function parameter
         TN_TASK_CREATE_OPT_START   //-- creation option
         );
}

int main(void)
{
   //-- unconditionally disable system interrupts
   tn_arch_int_dis();

   //-- init hardware
   hw_init();

   //-- call to tn_sys_start() never returns
   tn_sys_start(
         idle_task_stack,
         IDLE_TASK_STACK_SIZE,
         interrupt_stack,
         INTERRUPT_STACK_SIZE,
         InitOs,
         idle_task_callback
         );

   //-- unreachable
   return 1;
}
