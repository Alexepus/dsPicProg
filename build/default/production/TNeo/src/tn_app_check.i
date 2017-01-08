# 1 "TNeo/src/tn_app_check.c"
# 1 "D:\\Projects\\Programming\\CatalysisTFS\\Catalysis\\dsPicProg//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "TNeo/src/tn_app_check.c"
# 52 "TNeo/src/tn_app_check.c"
# 1 "TNeo/src/tn.h" 1
# 51 "TNeo/src/tn.h"
# 1 "TNeo/src/core/tn_sys.h" 1
# 53 "TNeo/src/core/tn_sys.h"
# 1 "TNeo/src/core/tn_list.h" 1
# 63 "TNeo/src/core/tn_list.h"
struct TN_ListItem {


   struct TN_ListItem *prev;


   struct TN_ListItem *next;
};
# 54 "TNeo/src/core/tn_sys.h" 2
# 1 "TNeo/src/core/../arch/tn_arch.h" 1
# 51 "TNeo/src/core/../arch/tn_arch.h"
# 1 "TNeo/src/core/../arch/../core/tn_common.h" 1
# 50 "TNeo/src/core/../arch/../core/tn_common.h"
# 1 "TNeo/src/core/../arch/../core/../arch/tn_arch_detect.h" 1
# 51 "TNeo/src/core/../arch/../core/tn_common.h" 2
# 1 "TNeo/src/core/../arch/../core/tn_cfg_dispatch.h" 1
# 82 "TNeo/src/core/../arch/../core/tn_cfg_dispatch.h"
# 1 "TNeo/src/core/../arch/../core/../tn_cfg_default.h" 1
# 77 "TNeo/src/core/../arch/../core/../tn_cfg_default.h"
# 1 "TNeo/src/core/../arch/../core/../arch/tn_arch_detect.h" 1
# 78 "TNeo/src/core/../arch/../core/../tn_cfg_default.h" 2
# 83 "TNeo/src/core/../arch/../core/tn_cfg_dispatch.h" 2
# 52 "TNeo/src/core/../arch/../core/tn_common.h" 2
# 65 "TNeo/src/core/../arch/../core/tn_common.h"
enum TN_ObjId {
   TN_ID_NONE = (unsigned int)0x0,
   TN_ID_TASK = (unsigned int)0x47ABCF69,
   TN_ID_SEMAPHORE = (unsigned int)0x6FA173EB,
   TN_ID_EVENTGRP = (unsigned int)0x5E224F25,
   TN_ID_DATAQUEUE = (unsigned int)0x0C8A6C89,
   TN_ID_FSMEMORYPOOL = (unsigned int)0x26B7CE8B,
   TN_ID_MUTEX = (unsigned int)0x17129E45,
   TN_ID_TIMER = (unsigned int)0x1A937FBC,
   TN_ID_EXCHANGE = (unsigned int)0x32b7c072,
   TN_ID_EXCHANGE_LINK = (unsigned int)0x24d36f35,
};




enum TN_RCode {


   TN_RC_OK = 0,



   TN_RC_TIMEOUT = -1,






   TN_RC_OVERFLOW = -2,
# 106 "TNeo/src/core/../arch/../core/tn_common.h"
   TN_RC_WCONTEXT = -3,



   TN_RC_WSTATE = -4,





   TN_RC_WPARAM = -5,







   TN_RC_ILLEGAL_USE = -6,






   TN_RC_INVALID_OBJ = -7,

   TN_RC_DELETED = -8,


   TN_RC_FORCED = -9,


   TN_RC_INTERNAL = -10,
};




typedef void (TN_TaskBody)(void *param);
# 188 "TNeo/src/core/../arch/../core/tn_common.h"
typedef unsigned long TN_TickCnt;
# 52 "TNeo/src/core/../arch/tn_arch.h" 2
# 97 "TNeo/src/core/../arch/tn_arch.h"
# 1 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24.h" 1
# 54 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24.h"
# 1 "TNeo/src/core/../arch/pic24_dspic/../../core/tn_common_macros.h" 1
# 55 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24.h" 2
# 1 "TNeo/src/core/../arch/pic24_dspic/../../core/tn_cfg_dispatch.h" 1
# 56 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24.h" 2



# 1 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24_bfa.h" 1
# 343 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24_bfa.h"
typedef unsigned int _TN_BFA_COMMAND_ERROR_0x1111;
typedef unsigned int _TN_BFA_COMMAND_ERROR_0x2222;
typedef unsigned int _TN_BFA_COMMAND_ERROR_0x3333;

typedef unsigned int _TN_BFA_COMMAND_ERROR_0xAAAA;
typedef unsigned int _TN_BFA_COMMAND_ERROR_0xBBBB;
# 60 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24.h" 2
# 94 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24.h"
int _tn_p24_ffs_asm(int x);
# 167 "TNeo/src/core/../arch/pic24_dspic/tn_arch_pic24.h"
typedef unsigned int TN_UWord;






typedef unsigned int TN_UIntPtr;
# 98 "TNeo/src/core/../arch/tn_arch.h" 2
# 159 "TNeo/src/core/../arch/tn_arch.h"
void tn_arch_int_dis(void);







void tn_arch_int_en(void);
# 178 "TNeo/src/core/../arch/tn_arch.h"
TN_UWord tn_arch_sr_save_int_dis(void);
# 188 "TNeo/src/core/../arch/tn_arch.h"
void tn_arch_sr_restore(TN_UWord sr);







TN_UWord tn_arch_sched_dis_save(void);







void tn_arch_sched_restore(TN_UWord sched_state);
# 232 "TNeo/src/core/../arch/tn_arch.h"
TN_UWord *_tn_arch_stack_init(
      TN_TaskBody *task_func,
      TN_UWord *stack_low_addr,
      TN_UWord *stack_high_addr,
      void *param
      );
# 247 "TNeo/src/core/../arch/tn_arch.h"
int _tn_arch_inside_isr(void);
# 256 "TNeo/src/core/../arch/tn_arch.h"
int _tn_arch_is_int_disabled(void);
# 284 "TNeo/src/core/../arch/tn_arch.h"
void _tn_arch_context_switch_pend(void);
# 311 "TNeo/src/core/../arch/tn_arch.h"
void _tn_arch_context_switch_now_nosave(void);
# 320 "TNeo/src/core/../arch/tn_arch.h"
void _tn_arch_sys_start(
      TN_UWord *int_stack,
      TN_UWord int_stack_size
      );
# 55 "TNeo/src/core/tn_sys.h" 2
# 1 "TNeo/src/core/tn_cfg_dispatch.h" 1
# 56 "TNeo/src/core/tn_sys.h" 2

# 1 "TNeo/src/core/tn_timer.h" 1
# 166 "TNeo/src/core/tn_timer.h"
# 1 "TNeo/src/core/tn_common.h" 1
# 167 "TNeo/src/core/tn_timer.h" 2
# 178 "TNeo/src/core/tn_timer.h"
struct TN_Timer;
# 200 "TNeo/src/core/tn_timer.h"
typedef void (TN_TimerFunc)(struct TN_Timer *timer, void *p_user_data);




struct TN_Timer {




   enum TN_ObjId id_timer;


   struct TN_ListItem timer_queue;


   TN_TimerFunc *func;


   void *p_user_data;
# 240 "TNeo/src/core/tn_timer.h"
   TN_TickCnt timeout_cur;

};
# 320 "TNeo/src/core/tn_timer.h"
enum TN_RCode tn_timer_create(
      struct TN_Timer *timer,
      TN_TimerFunc *func,
      void *p_user_data
      );
# 341 "TNeo/src/core/tn_timer.h"
enum TN_RCode tn_timer_delete(struct TN_Timer *timer);
# 369 "TNeo/src/core/tn_timer.h"
enum TN_RCode tn_timer_start(struct TN_Timer *timer, TN_TickCnt timeout);
# 388 "TNeo/src/core/tn_timer.h"
enum TN_RCode tn_timer_cancel(struct TN_Timer *timer);
# 409 "TNeo/src/core/tn_timer.h"
enum TN_RCode tn_timer_set_func(
      struct TN_Timer *timer,
      TN_TimerFunc *func,
      void *p_user_data
      );
# 431 "TNeo/src/core/tn_timer.h"
enum TN_RCode tn_timer_is_active(struct TN_Timer *timer, int *p_is_active);
# 451 "TNeo/src/core/tn_timer.h"
enum TN_RCode tn_timer_time_left(
      struct TN_Timer *timer,
      TN_TickCnt *p_time_left
      );
# 58 "TNeo/src/core/tn_sys.h" 2
# 69 "TNeo/src/core/tn_sys.h"
struct TN_Task;
struct TN_Mutex;
# 158 "TNeo/src/core/tn_sys.h"
struct _TN_BuildCfg {


   unsigned priorities_cnt : 7;


   unsigned check_param : 1;


   unsigned debug : 1;




   unsigned use_mutexes : 1;


   unsigned mutex_rec : 1;


   unsigned mutex_deadlock_detect : 1;


   unsigned tick_lists_cnt_minus_one : 8;


   unsigned api_make_alig_arg : 2;


   unsigned profiler : 1;


   unsigned profiler_wait_time : 1;


   unsigned stack_overflow_check : 1;


   unsigned dynamic_tick : 1;


   unsigned old_events_api : 1;


   union {




      TN_UWord dummy;


      struct {


         unsigned p24_sys_ipl : 3;
      } p24;
   } arch;
};




enum TN_StateFlag {


   TN_STATE_FLAG__SYS_RUNNING = (1 << 0),




   TN_STATE_FLAG__DEADLOCK = (1 << 1),
};






enum TN_Context {



   TN_CONTEXT_NONE,


   TN_CONTEXT_TASK,


   TN_CONTEXT_ISR,
};
# 283 "TNeo/src/core/tn_sys.h"
typedef void (TN_CBUserTaskCreate)(void);
# 298 "TNeo/src/core/tn_sys.h"
typedef void (TN_CBIdle)(void);
# 307 "TNeo/src/core/tn_sys.h"
typedef void (TN_CBStackOverflow)(struct TN_Task *task);
# 327 "TNeo/src/core/tn_sys.h"
typedef void (TN_CBDeadlock)(
      int active,
      struct TN_Mutex *mutex,
      struct TN_Task *task
      );
# 388 "TNeo/src/core/tn_sys.h"
void tn_sys_start(
      TN_UWord *idle_task_stack,
      unsigned int idle_task_stack_size,
      TN_UWord *int_stack,
      unsigned int int_stack_size,
      TN_CBUserTaskCreate *cb_user_task_create,
      TN_CBIdle *cb_idle
      );
# 413 "TNeo/src/core/tn_sys.h"
void tn_tick_int_processing(void);
# 433 "TNeo/src/core/tn_sys.h"
enum TN_RCode tn_sys_tslice_set(int priority, int ticks);
# 445 "TNeo/src/core/tn_sys.h"
TN_TickCnt tn_sys_time_get(void);
# 465 "TNeo/src/core/tn_sys.h"
void tn_callback_deadlock_set(TN_CBDeadlock *cb);







void tn_callback_stack_overflow_set(TN_CBStackOverflow *cb);
# 482 "TNeo/src/core/tn_sys.h"
enum TN_StateFlag tn_sys_state_flags_get(void);
# 494 "TNeo/src/core/tn_sys.h"
enum TN_Context tn_sys_context_get(void);
# 510 "TNeo/src/core/tn_sys.h"
static inline int tn_is_task_context(void)
{
   return (tn_sys_context_get() == TN_CONTEXT_TASK);
}
# 529 "TNeo/src/core/tn_sys.h"
static inline int tn_is_isr_context(void)
{
   return (tn_sys_context_get() == TN_CONTEXT_ISR);
}
# 541 "TNeo/src/core/tn_sys.h"
struct TN_Task *tn_cur_task_get(void);
# 550 "TNeo/src/core/tn_sys.h"
TN_TaskBody *tn_cur_task_body_get(void);
# 570 "TNeo/src/core/tn_sys.h"
static inline TN_UWord tn_sched_dis_save(void)
{
   return tn_arch_sched_dis_save();
}
# 586 "TNeo/src/core/tn_sys.h"
static inline void tn_sched_restore(TN_UWord sched_state)
{
   tn_arch_sched_restore(sched_state);
}
# 52 "TNeo/src/tn.h" 2
# 1 "TNeo/src/core/tn_common.h" 1
# 53 "TNeo/src/tn.h" 2
# 1 "TNeo/src/core/tn_dqueue.h" 1
# 84 "TNeo/src/core/tn_dqueue.h"
# 1 "TNeo/src/core/tn_eventgrp.h" 1
# 108 "TNeo/src/core/tn_eventgrp.h"
# 1 "TNeo/src/core/tn_sys.h" 1
# 109 "TNeo/src/core/tn_eventgrp.h" 2
# 124 "TNeo/src/core/tn_eventgrp.h"
enum TN_EGrpWaitMode {



   TN_EVENTGRP_WMODE_OR = (1 << 0),



   TN_EVENTGRP_WMODE_AND = (1 << 1),




   TN_EVENTGRP_WMODE_AUTOCLR = (1 << 2),
};





enum TN_EGrpOp {




   TN_EVENTGRP_OP_SET,




   TN_EVENTGRP_OP_CLEAR,




   TN_EVENTGRP_OP_TOGGLE,
};
# 169 "TNeo/src/core/tn_eventgrp.h"
enum TN_EGrpAttr {
# 202 "TNeo/src/core/tn_eventgrp.h"
   TN_EVENTGRP_ATTR_NONE = (0),

};





struct TN_EventGrp {




   enum TN_ObjId id_event;


   struct TN_ListItem wait_queue;


   TN_UWord pattern;
# 230 "TNeo/src/core/tn_eventgrp.h"
};





struct TN_EGrpTaskWait {


   TN_UWord wait_pattern;


   enum TN_EGrpWaitMode wait_mode;


   TN_UWord actual_pattern;
};





struct TN_EGrpLink {


   struct TN_EventGrp *eventgrp;


   TN_UWord pattern;
};
# 288 "TNeo/src/core/tn_eventgrp.h"
enum TN_RCode tn_eventgrp_create_wattr(
      struct TN_EventGrp *eventgrp,
      enum TN_EGrpAttr attr,
      TN_UWord initial_pattern
      );
# 312 "TNeo/src/core/tn_eventgrp.h"
static inline enum TN_RCode tn_eventgrp_create(
      struct TN_EventGrp *eventgrp,
      TN_UWord initial_pattern
      )
{
   return tn_eventgrp_create_wattr(
         eventgrp,



         (TN_EVENTGRP_ATTR_NONE),

         initial_pattern
         );
}
# 346 "TNeo/src/core/tn_eventgrp.h"
enum TN_RCode tn_eventgrp_delete(struct TN_EventGrp *eventgrp);
# 382 "TNeo/src/core/tn_eventgrp.h"
enum TN_RCode tn_eventgrp_wait(
      struct TN_EventGrp *eventgrp,
      TN_UWord wait_pattern,
      enum TN_EGrpWaitMode wait_mode,
      TN_UWord *p_flags_pattern,
      TN_TickCnt timeout
      );
# 397 "TNeo/src/core/tn_eventgrp.h"
enum TN_RCode tn_eventgrp_wait_polling(
      struct TN_EventGrp *eventgrp,
      TN_UWord wait_pattern,
      enum TN_EGrpWaitMode wait_mode,
      TN_UWord *p_flags_pattern
      );
# 411 "TNeo/src/core/tn_eventgrp.h"
enum TN_RCode tn_eventgrp_iwait_polling(
      struct TN_EventGrp *eventgrp,
      TN_UWord wait_pattern,
      enum TN_EGrpWaitMode wait_mode,
      TN_UWord *p_flags_pattern
      );
# 440 "TNeo/src/core/tn_eventgrp.h"
enum TN_RCode tn_eventgrp_modify(
      struct TN_EventGrp *eventgrp,
      enum TN_EGrpOp operation,
      TN_UWord pattern
      );
# 453 "TNeo/src/core/tn_eventgrp.h"
enum TN_RCode tn_eventgrp_imodify(
      struct TN_EventGrp *eventgrp,
      enum TN_EGrpOp operation,
      TN_UWord pattern
      );
# 85 "TNeo/src/core/tn_dqueue.h" 2
# 105 "TNeo/src/core/tn_dqueue.h"
struct TN_DQueue {




   enum TN_ObjId id_dque;


   struct TN_ListItem wait_send_list;


   struct TN_ListItem wait_receive_list;



   void **data_fifo;


   int items_cnt;


   int filled_items_cnt;


   int head_idx;


   int tail_idx;


   struct TN_EGrpLink eventgrp_link;
};





struct TN_DQueueTaskWait {



   void *data_elem;
};
# 182 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_create(
      struct TN_DQueue *dque,
      void **data_fifo,
      int items_cnt
      );
# 207 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_delete(struct TN_DQueue *dque);
# 242 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_send(
      struct TN_DQueue *dque,
      void *p_data,
      TN_TickCnt timeout
      );
# 255 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_send_polling(
      struct TN_DQueue *dque,
      void *p_data
      );
# 267 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_isend_polling(
      struct TN_DQueue *dque,
      void *p_data
      );
# 303 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_receive(
      struct TN_DQueue *dque,
      void **pp_data,
      TN_TickCnt timeout
      );
# 316 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_receive_polling(
      struct TN_DQueue *dque,
      void **pp_data
      );
# 328 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_ireceive_polling(
      struct TN_DQueue *dque,
      void **pp_data
      );
# 348 "TNeo/src/core/tn_dqueue.h"
int tn_queue_free_items_cnt_get(
      struct TN_DQueue *dque
      );
# 367 "TNeo/src/core/tn_dqueue.h"
int tn_queue_used_items_cnt_get(
      struct TN_DQueue *dque
      );
# 391 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_eventgrp_connect(
      struct TN_DQueue *dque,
      struct TN_EventGrp *eventgrp,
      TN_UWord pattern
      );
# 410 "TNeo/src/core/tn_dqueue.h"
enum TN_RCode tn_queue_eventgrp_disconnect(
      struct TN_DQueue *dque
      );
# 54 "TNeo/src/tn.h" 2
# 1 "TNeo/src/core/tn_eventgrp.h" 1
# 55 "TNeo/src/tn.h" 2
# 1 "TNeo/src/core/tn_fmem.h" 1
# 80 "TNeo/src/core/tn_fmem.h"
struct TN_FMem {




   enum TN_ObjId id_fmp;


   struct TN_ListItem wait_queue;






   unsigned int block_size;


   int blocks_cnt;


   int free_blocks_cnt;



   void *start_addr;




   void *free_list;
};






struct TN_FMemTaskWait {



   void *data_elem;
};
# 221 "TNeo/src/core/tn_fmem.h"
enum TN_RCode tn_fmem_create(
      struct TN_FMem *fmem,
      void *start_addr,
      unsigned int block_size,
      int blocks_cnt
      );
# 247 "TNeo/src/core/tn_fmem.h"
enum TN_RCode tn_fmem_delete(struct TN_FMem *fmem);
# 275 "TNeo/src/core/tn_fmem.h"
enum TN_RCode tn_fmem_get(
      struct TN_FMem *fmem,
      void **p_data,
      TN_TickCnt timeout
      );
# 288 "TNeo/src/core/tn_fmem.h"
enum TN_RCode tn_fmem_get_polling(struct TN_FMem *fmem, void **p_data);
# 297 "TNeo/src/core/tn_fmem.h"
enum TN_RCode tn_fmem_iget_polling(struct TN_FMem *fmem, void **p_data);
# 321 "TNeo/src/core/tn_fmem.h"
enum TN_RCode tn_fmem_release(struct TN_FMem *fmem, void *p_data);
# 330 "TNeo/src/core/tn_fmem.h"
enum TN_RCode tn_fmem_irelease(struct TN_FMem *fmem, void *p_data);
# 346 "TNeo/src/core/tn_fmem.h"
int tn_fmem_free_blocks_cnt_get(struct TN_FMem *fmem);
# 363 "TNeo/src/core/tn_fmem.h"
int tn_fmem_used_blocks_cnt_get(struct TN_FMem *fmem);
# 56 "TNeo/src/tn.h" 2
# 1 "TNeo/src/core/tn_mutex.h" 1
# 109 "TNeo/src/core/tn_mutex.h"
enum TN_MutexProtocol {


   TN_MUTEX_PROT_CEILING = 1,


   TN_MUTEX_PROT_INHERIT = 2,
};





struct TN_Mutex {




   enum TN_ObjId id_mutex;


   struct TN_ListItem wait_queue;


   struct TN_ListItem mutex_queue;




   struct TN_ListItem deadlock_list;



   enum TN_MutexProtocol protocol;


   struct TN_Task *holder;



   int ceil_priority;


   int cnt;
};
# 189 "TNeo/src/core/tn_mutex.h"
enum TN_RCode tn_mutex_create(
      struct TN_Mutex *mutex,
      enum TN_MutexProtocol protocol,
      int ceil_priority
      );
# 213 "TNeo/src/core/tn_mutex.h"
enum TN_RCode tn_mutex_delete(struct TN_Mutex *mutex);
# 251 "TNeo/src/core/tn_mutex.h"
enum TN_RCode tn_mutex_lock(struct TN_Mutex *mutex, TN_TickCnt timeout);
# 260 "TNeo/src/core/tn_mutex.h"
enum TN_RCode tn_mutex_lock_polling(struct TN_Mutex *mutex);
# 286 "TNeo/src/core/tn_mutex.h"
enum TN_RCode tn_mutex_unlock(struct TN_Mutex *mutex);
# 57 "TNeo/src/tn.h" 2
# 1 "TNeo/src/core/tn_sem.h" 1
# 88 "TNeo/src/core/tn_sem.h"
struct TN_Sem {




   enum TN_ObjId id_sem;


   struct TN_ListItem wait_queue;


   int count;


   int max_count;
};
# 138 "TNeo/src/core/tn_sem.h"
enum TN_RCode tn_sem_create(
      struct TN_Sem *sem,
      int start_count,
      int max_count
      );
# 162 "TNeo/src/core/tn_sem.h"
enum TN_RCode tn_sem_delete(struct TN_Sem *sem);
# 188 "TNeo/src/core/tn_sem.h"
enum TN_RCode tn_sem_signal(struct TN_Sem *sem);
# 198 "TNeo/src/core/tn_sem.h"
enum TN_RCode tn_sem_isignal(struct TN_Sem *sem);
# 224 "TNeo/src/core/tn_sem.h"
enum TN_RCode tn_sem_wait(struct TN_Sem *sem, TN_TickCnt timeout);
# 233 "TNeo/src/core/tn_sem.h"
enum TN_RCode tn_sem_wait_polling(struct TN_Sem *sem);
# 242 "TNeo/src/core/tn_sem.h"
enum TN_RCode tn_sem_iwait_polling(struct TN_Sem *sem);
# 58 "TNeo/src/tn.h" 2
# 1 "TNeo/src/core/tn_tasks.h" 1
# 124 "TNeo/src/core/tn_tasks.h"
# 1 "TNeo/src/core/tn_dqueue.h" 1
# 125 "TNeo/src/core/tn_tasks.h" 2
# 1 "TNeo/src/core/tn_fmem.h" 1
# 126 "TNeo/src/core/tn_tasks.h" 2
# 141 "TNeo/src/core/tn_tasks.h"
enum TN_TaskState {




   TN_TASK_STATE_NONE = 0,


   TN_TASK_STATE_RUNNABLE = (1 << 0),





   TN_TASK_STATE_WAIT = (1 << 1),


   TN_TASK_STATE_SUSPEND = (1 << 2),


   TN_TASK_STATE_WAITSUSP = (TN_TASK_STATE_WAIT | TN_TASK_STATE_SUSPEND),


   TN_TASK_STATE_DORMANT = (1 << 3),


};





enum TN_WaitReason {


   TN_WAIT_REASON_NONE,


   TN_WAIT_REASON_SLEEP,



   TN_WAIT_REASON_SEM,



   TN_WAIT_REASON_EVENT,




   TN_WAIT_REASON_DQUE_WSEND,




   TN_WAIT_REASON_DQUE_WRECEIVE,



   TN_WAIT_REASON_MUTEX_C,



   TN_WAIT_REASON_MUTEX_I,




   TN_WAIT_REASON_WFIXMEM,




   TN_WAIT_REASONS_CNT
};




enum TN_TaskCreateOpt {




   TN_TASK_CREATE_OPT_START = (1 << 0),



   _TN_TASK_CREATE_OPT_IDLE = (1 << 1),
};




enum TN_TaskExitOpt {





   TN_TASK_EXIT_OPT_DELETE = (1 << 0),
};
# 330 "TNeo/src/core/tn_tasks.h"
struct TN_Task {



   TN_UWord *stack_cur_pt;






   enum TN_ObjId id_task;


   struct TN_ListItem task_queue;


   struct TN_Timer timer;



   struct TN_ListItem *pwait_queue;



   struct TN_ListItem create_queue;




   struct TN_ListItem mutex_queue;







   struct TN_ListItem deadlock_list;






   TN_UWord *stack_low_addr;



   TN_UWord *stack_high_addr;


   TN_TaskBody *task_func_addr;


   void *task_func_param;



   int base_priority;


   int priority;


   enum TN_TaskState task_state;



   enum TN_WaitReason task_wait_reason;


   enum TN_RCode task_wait_rc;





   int tslice_count;
# 420 "TNeo/src/core/tn_tasks.h"
   union {

      struct TN_EGrpTaskWait eventgrp;


      struct TN_DQueueTaskWait dqueue;


      struct TN_FMemTaskWait fmem;
   } subsys_wait;


   const char *name;
# 441 "TNeo/src/core/tn_tasks.h"
   unsigned priority_already_updated : 1;





   unsigned waited : 1;




};
# 551 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_create(
      struct TN_Task *task,
      TN_TaskBody *task_func,
      int priority,
      TN_UWord *task_stack_low_addr,
      int task_stack_size,
      void *param,
      enum TN_TaskCreateOpt opts
      );






enum TN_RCode tn_task_create_wname(
      struct TN_Task *task,
      TN_TaskBody *task_func,
      int priority,
      TN_UWord *task_stack_low_addr,
      int task_stack_size,
      void *param,
      enum TN_TaskCreateOpt opts,
      const char *name
      );
# 598 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_suspend(struct TN_Task *task);
# 622 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_resume(struct TN_Task *task);
# 648 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_sleep(TN_TickCnt timeout);
# 674 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_wakeup(struct TN_Task *task);
# 683 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_iwakeup(struct TN_Task *task);
# 708 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_activate(struct TN_Task *task);
# 717 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_iactivate(struct TN_Task *task);
# 748 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_release_wait(struct TN_Task *task);
# 757 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_irelease_wait(struct TN_Task *task);
# 790 "TNeo/src/core/tn_tasks.h"
void tn_task_exit(enum TN_TaskExitOpt opts);
# 817 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_terminate(struct TN_Task *task);
# 841 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_delete(struct TN_Task *task);
# 865 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_state_get(
      struct TN_Task *task,
      enum TN_TaskState *p_state
      );
# 900 "TNeo/src/core/tn_tasks.h"
enum TN_RCode tn_task_change_priority(struct TN_Task *task, int new_priority);
# 59 "TNeo/src/tn.h" 2
# 1 "TNeo/src/core/tn_timer.h" 1
# 60 "TNeo/src/tn.h" 2



# 1 "TNeo/src/core/tn_oldsymbols.h" 1
# 77 "TNeo/src/core/tn_oldsymbols.h"
typedef struct TN_ListItem CDLL_QUEUE;


typedef struct TN_Mutex TN_MUTEX;


typedef struct TN_DQueue TN_DQUE;


typedef struct TN_Task TN_TCB;


typedef struct TN_FMem TN_FMP;


typedef struct TN_Sem TN_SEM;
# 64 "TNeo/src/tn.h" 2
# 53 "TNeo/src/tn_app_check.c" 2



# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/string.h" 1 3 4




# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/yvals.h" 1 3 4
# 86 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/yvals.h" 3 4
typedef void *va_list;
# 102 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/yvals.h" 3 4

# 135 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/yvals.h" 3 4
typedef long long _Longlong;
typedef unsigned long long _ULonglong;
# 149 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/yvals.h" 3 4
typedef short unsigned int _Wchart;
typedef unsigned int _Wintt;
# 161 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/yvals.h" 3 4
typedef int _Ptrdifft;
typedef unsigned int _Sizet;



int _Setjmp(int *);


typedef va_list _Va_list;





void _Atexit(void (*)(void));


typedef struct _Mbstatet
 {
 _Wchart _Wchar;
 unsigned short _Byte, _State;
 } _Mbstatet;
# 191 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/yvals.h" 3 4
typedef struct _Fpost
 {
 long _Off;
 _Mbstatet _Wstate;
 } _Fpost;
# 212 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/yvals.h" 3 4

# 6 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/string.h" 2 3 4


# 21 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/string.h" 3 4
typedef _Sizet size_t;




int memcmp(const void *, const void *, size_t);
void * memcpy(void *, const void *, size_t);
void * memmove(void *, const void *, size_t);
void * memset(void *, int, size_t);
char * strcat(char *, const char *);
int strcmp(const char *, const char *);
int strcoll(const char *, const char *);
char * strcpy(char *, const char *);
size_t strcspn(const char *, const char *);
char * strerror(int);
size_t strlen(const char *);
char * strncat(char *, const char *, size_t);
int strncmp(const char *, const char *, size_t);
char * strncpy(char *, const char *, size_t);
size_t strspn(const char *, const char *);
char * strtok(char *, const char *);
size_t strxfrm(char *, const char *, size_t);
# 53 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/string.h" 3 4

# 88 "c:\\program files (x86)\\microchip\\xc16\\v1.30\\bin\\bin\\../..\\include\\lega-c/string.h" 3 4



void * memchr(const void *, int, size_t);
char * strchr(const char *, int);
char * strpbrk(const char *, const char *);
char * strrchr(const char *, int);
char * strstr(const char *, const char *);



# 57 "TNeo/src/tn_app_check.c" 2
# 69 "TNeo/src/tn_app_check.c"
static struct _TN_BuildCfg _build_cfg;
# 91 "TNeo/src/tn_app_check.c"
void you_should_add_file___tn_app_check_c___to_the_project(void)
{
}




const struct _TN_BuildCfg *tn_app_build_cfg_get(void)
{
   { memset((&_build_cfg), 0x00, sizeof(*(&_build_cfg))); (&_build_cfg)->priorities_cnt = 16; (&_build_cfg)->check_param = 1; (&_build_cfg)->debug = 0; (&_build_cfg)->use_mutexes = 1; (&_build_cfg)->mutex_rec = 1; (&_build_cfg)->mutex_deadlock_detect = 1; (&_build_cfg)->tick_lists_cnt_minus_one = (8 - 1); (&_build_cfg)->api_make_alig_arg = 2; (&_build_cfg)->profiler = 0; (&_build_cfg)->profiler_wait_time = 0; (&_build_cfg)->stack_overflow_check = 0; (&_build_cfg)->dynamic_tick = 0; (&_build_cfg)->old_events_api = 0; { (&_build_cfg)->arch.p24.p24_sys_ipl = 4; }; };
   return &_build_cfg;
}
