#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-no_eds.mk)" "nbproject/Makefile-local-no_eds.mk"
include nbproject/Makefile-local-no_eds.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=no_eds
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=a
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=a
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../src/arch/pic24_dspic/tn_arch_pic24.S ../../../src/arch/pic24_dspic/tn_arch_pic24_c.c ../../../src/core/tn_mutex.c ../../../src/core/tn_sem.c ../../../src/core/tn_tasks.c ../../../src/core/tn_dqueue.c ../../../src/core/tn_sys.c ../../../src/core/tn_list.c ../../../src/core/tn_eventgrp.c ../../../src/core/tn_fmem.c ../../../src/core/tn_timer.c ../../../src/core/tn_timer_static.c ../../../src/core/tn_timer_dyn.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o ${OBJECTDIR}/_ext/608447161/tn_mutex.o ${OBJECTDIR}/_ext/608447161/tn_sem.o ${OBJECTDIR}/_ext/608447161/tn_tasks.o ${OBJECTDIR}/_ext/608447161/tn_dqueue.o ${OBJECTDIR}/_ext/608447161/tn_sys.o ${OBJECTDIR}/_ext/608447161/tn_list.o ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o ${OBJECTDIR}/_ext/608447161/tn_fmem.o ${OBJECTDIR}/_ext/608447161/tn_timer.o ${OBJECTDIR}/_ext/608447161/tn_timer_static.o ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.d ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o.d ${OBJECTDIR}/_ext/608447161/tn_mutex.o.d ${OBJECTDIR}/_ext/608447161/tn_sem.o.d ${OBJECTDIR}/_ext/608447161/tn_tasks.o.d ${OBJECTDIR}/_ext/608447161/tn_dqueue.o.d ${OBJECTDIR}/_ext/608447161/tn_sys.o.d ${OBJECTDIR}/_ext/608447161/tn_list.o.d ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o.d ${OBJECTDIR}/_ext/608447161/tn_fmem.o.d ${OBJECTDIR}/_ext/608447161/tn_timer.o.d ${OBJECTDIR}/_ext/608447161/tn_timer_static.o.d ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o ${OBJECTDIR}/_ext/608447161/tn_mutex.o ${OBJECTDIR}/_ext/608447161/tn_sem.o ${OBJECTDIR}/_ext/608447161/tn_tasks.o ${OBJECTDIR}/_ext/608447161/tn_dqueue.o ${OBJECTDIR}/_ext/608447161/tn_sys.o ${OBJECTDIR}/_ext/608447161/tn_list.o ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o ${OBJECTDIR}/_ext/608447161/tn_fmem.o ${OBJECTDIR}/_ext/608447161/tn_timer.o ${OBJECTDIR}/_ext/608447161/tn_timer_static.o ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o

# Source Files
SOURCEFILES=../../../src/arch/pic24_dspic/tn_arch_pic24.S ../../../src/arch/pic24_dspic/tn_arch_pic24_c.c ../../../src/core/tn_mutex.c ../../../src/core/tn_sem.c ../../../src/core/tn_tasks.c ../../../src/core/tn_dqueue.c ../../../src/core/tn_sys.c ../../../src/core/tn_list.c ../../../src/core/tn_eventgrp.c ../../../src/core/tn_fmem.c ../../../src/core/tn_timer.c ../../../src/core/tn_timer_static.c ../../../src/core/tn_timer_dyn.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-no_eds.mk dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ64MC804
MP_LINKER_FILE_OPTION=,--script=p33FJ64MC804.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o: ../../../src/arch/pic24_dspic/tn_arch_pic24_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1523703241" 
	@${RM} ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/arch/pic24_dspic/tn_arch_pic24_c.c  -o ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_mutex.o: ../../../src/core/tn_mutex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_mutex.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_mutex.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_mutex.c  -o ${OBJECTDIR}/_ext/608447161/tn_mutex.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_mutex.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_mutex.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_sem.o: ../../../src/core/tn_sem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_sem.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_sem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_sem.c  -o ${OBJECTDIR}/_ext/608447161/tn_sem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_sem.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_sem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_tasks.o: ../../../src/core/tn_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_tasks.c  -o ${OBJECTDIR}/_ext/608447161/tn_tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_dqueue.o: ../../../src/core/tn_dqueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_dqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_dqueue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_dqueue.c  -o ${OBJECTDIR}/_ext/608447161/tn_dqueue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_dqueue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_dqueue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_sys.o: ../../../src/core/tn_sys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_sys.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_sys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_sys.c  -o ${OBJECTDIR}/_ext/608447161/tn_sys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_sys.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_sys.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_list.o: ../../../src/core/tn_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_list.c  -o ${OBJECTDIR}/_ext/608447161/tn_list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_eventgrp.o: ../../../src/core/tn_eventgrp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_eventgrp.c  -o ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_eventgrp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_eventgrp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_fmem.o: ../../../src/core/tn_fmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_fmem.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_fmem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_fmem.c  -o ${OBJECTDIR}/_ext/608447161/tn_fmem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_fmem.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_fmem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_timer.o: ../../../src/core/tn_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_timer.c  -o ${OBJECTDIR}/_ext/608447161/tn_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_timer_static.o: ../../../src/core/tn_timer_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_timer_static.c  -o ${OBJECTDIR}/_ext/608447161/tn_timer_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_timer_static.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_timer_static.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o: ../../../src/core/tn_timer_dyn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_timer_dyn.c  -o ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o: ../../../src/arch/pic24_dspic/tn_arch_pic24_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1523703241" 
	@${RM} ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/arch/pic24_dspic/tn_arch_pic24_c.c  -o ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24_c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_mutex.o: ../../../src/core/tn_mutex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_mutex.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_mutex.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_mutex.c  -o ${OBJECTDIR}/_ext/608447161/tn_mutex.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_mutex.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_mutex.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_sem.o: ../../../src/core/tn_sem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_sem.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_sem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_sem.c  -o ${OBJECTDIR}/_ext/608447161/tn_sem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_sem.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_sem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_tasks.o: ../../../src/core/tn_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_tasks.c  -o ${OBJECTDIR}/_ext/608447161/tn_tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_tasks.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_dqueue.o: ../../../src/core/tn_dqueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_dqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_dqueue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_dqueue.c  -o ${OBJECTDIR}/_ext/608447161/tn_dqueue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_dqueue.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_dqueue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_sys.o: ../../../src/core/tn_sys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_sys.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_sys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_sys.c  -o ${OBJECTDIR}/_ext/608447161/tn_sys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_sys.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_sys.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_list.o: ../../../src/core/tn_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_list.c  -o ${OBJECTDIR}/_ext/608447161/tn_list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_list.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_eventgrp.o: ../../../src/core/tn_eventgrp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_eventgrp.c  -o ${OBJECTDIR}/_ext/608447161/tn_eventgrp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_eventgrp.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_eventgrp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_fmem.o: ../../../src/core/tn_fmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_fmem.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_fmem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_fmem.c  -o ${OBJECTDIR}/_ext/608447161/tn_fmem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_fmem.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_fmem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_timer.o: ../../../src/core/tn_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_timer.c  -o ${OBJECTDIR}/_ext/608447161/tn_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_timer.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_timer_static.o: ../../../src/core/tn_timer_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_timer_static.c  -o ${OBJECTDIR}/_ext/608447161/tn_timer_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_timer_static.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_timer_static.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o: ../../../src/core/tn_timer_dyn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/608447161" 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o.d 
	@${RM} ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/core/tn_timer_dyn.c  -o ${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o.d"        -g -omf=elf -ffunction-sections -mlarge-code -mlarge-data -mconst-in-code -Os -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/608447161/tn_timer_dyn.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o: ../../../src/arch/pic24_dspic/tn_arch_pic24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1523703241" 
	@${RM} ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.d 
	@${RM} ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../../src/arch/pic24_dspic/tn_arch_pic24.S  -o ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -Wa,-MD,"${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.d" "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o: ../../../src/arch/pic24_dspic/tn_arch_pic24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1523703241" 
	@${RM} ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.d 
	@${RM} ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../../src/arch/pic24_dspic/tn_arch_pic24.S  -o ${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.d"  -omf=elf -I"../../../src/arch" -I"../../../src" -I"../../../src/core" -I"../../../src/core/internal" -Wa,-MD,"${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.d" "${OBJECTDIR}/_ext/1523703241/tn_arch_pic24.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  -omf=elf -r dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  -omf=elf -r dist/${CND_CONF}/${IMAGE_TYPE}/tneo_pic24_dspic.X.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/no_eds
	${RM} -r dist/no_eds

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
