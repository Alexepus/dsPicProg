#include "main.h"

/*******************************************************************************
 *    MACROS
 ******************************************************************************/

//-- instruction that causes debugger to halt
#define PIC24_SOFTWARE_BREAK()  {__asm__ volatile(".pword 0xDA4000"); __asm__ volatile ("nop");}

//-- idle task stack size, in words
#define IDLE_TASK_STACK_SIZE          (TN_MIN_STACK_SIZE + 32)

//-- interrupt stack size, in words
#define INTERRUPT_STACK_SIZE          (TN_MIN_STACK_SIZE + 64)

//-- stack sizes of user tasks
#define TASK_UART1MSG_STK_SIZE     (TN_MIN_STACK_SIZE + 96)
#define TASK_HEATERPID_STK_SIZE    (TN_MIN_STACK_SIZE + 96)
#define TASK_GASPID_STK_SIZE       (TN_MIN_STACK_SIZE + 96)

//-- user task priorities
#define TASK_PRIORITY_4    4


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

TN_STACK_ARR_DEF(task_Uart1Msg_stack, TASK_UART1MSG_STK_SIZE);
TN_STACK_ARR_DEF(task_HeaterPid_stack, TASK_HEATERPID_STK_SIZE);
TN_STACK_ARR_DEF(task_GasPid_stack, TASK_GASPID_STK_SIZE);

//-- task structures

struct TN_Task task_HeaterPid = {};
struct TN_Task task_Uart1Msg = {};
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

//-- Инициализация ОС. Создание задач
void InitOs(void)
{
    //Инициализация семафора принятых сообщений UART1
    tn_sem_create(&UartRcMsgSem, 0, 255);

    tn_task_create(
        &task_HeaterPid,           //-- task structure
        task_HeaterPid_body,       //-- task body function
        TASK_PRIORITY_4,           //-- task priority
        task_HeaterPid_stack,              //-- task stack
        TASK_HEATERPID_STK_SIZE,   //-- task stack size (in words)
        TN_NULL,                   //-- task function parameter
        TN_TASK_CREATE_OPT_START   //-- creation option
        );
   
    tn_task_create(
        &task_Uart1Msg,           //-- task structure
        ProcessUart1Msg,       //-- task body function
        TASK_PRIORITY_4,           //-- task priority
        task_Uart1Msg_stack,              //-- task stack
        TASK_HEATERPID_STK_SIZE,   //-- task stack size (in words)
        TN_NULL,                   //-- task function parameter
        TN_TASK_CREATE_OPT_START   //-- creation option
        );   
}

int main (void) 
{
   //-- unconditionally disable system interrupts
   tn_arch_int_dis();

   //-- init hardware
   HardwareInit();

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
