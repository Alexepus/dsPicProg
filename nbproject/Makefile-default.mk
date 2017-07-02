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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/dsPicProg.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/dsPicProg.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Main.c PowerLimiter.c ProcessUartMsg.c UART.c DAC.c Spi.c HardwareInit.c Math.c HeaterPID.c AddressBus.c LeakerPid.c ADC.c AnalogIo.c Timer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Main.o ${OBJECTDIR}/PowerLimiter.o ${OBJECTDIR}/ProcessUartMsg.o ${OBJECTDIR}/UART.o ${OBJECTDIR}/DAC.o ${OBJECTDIR}/Spi.o ${OBJECTDIR}/HardwareInit.o ${OBJECTDIR}/Math.o ${OBJECTDIR}/HeaterPID.o ${OBJECTDIR}/AddressBus.o ${OBJECTDIR}/LeakerPid.o ${OBJECTDIR}/ADC.o ${OBJECTDIR}/AnalogIo.o ${OBJECTDIR}/Timer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Main.o.d ${OBJECTDIR}/PowerLimiter.o.d ${OBJECTDIR}/ProcessUartMsg.o.d ${OBJECTDIR}/UART.o.d ${OBJECTDIR}/DAC.o.d ${OBJECTDIR}/Spi.o.d ${OBJECTDIR}/HardwareInit.o.d ${OBJECTDIR}/Math.o.d ${OBJECTDIR}/HeaterPID.o.d ${OBJECTDIR}/AddressBus.o.d ${OBJECTDIR}/LeakerPid.o.d ${OBJECTDIR}/ADC.o.d ${OBJECTDIR}/AnalogIo.o.d ${OBJECTDIR}/Timer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Main.o ${OBJECTDIR}/PowerLimiter.o ${OBJECTDIR}/ProcessUartMsg.o ${OBJECTDIR}/UART.o ${OBJECTDIR}/DAC.o ${OBJECTDIR}/Spi.o ${OBJECTDIR}/HardwareInit.o ${OBJECTDIR}/Math.o ${OBJECTDIR}/HeaterPID.o ${OBJECTDIR}/AddressBus.o ${OBJECTDIR}/LeakerPid.o ${OBJECTDIR}/ADC.o ${OBJECTDIR}/AnalogIo.o ${OBJECTDIR}/Timer.o

# Source Files
SOURCEFILES=Main.c PowerLimiter.c ProcessUartMsg.c UART.c DAC.c Spi.c HardwareInit.c Math.c HeaterPID.c AddressBus.c LeakerPid.c ADC.c AnalogIo.c Timer.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/dsPicProg.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ64MC804
MP_LINKER_FILE_OPTION=,--script=p33FJ64MC804.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Main.c  -o ${OBJECTDIR}/Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/PowerLimiter.o: PowerLimiter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PowerLimiter.o.d 
	@${RM} ${OBJECTDIR}/PowerLimiter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PowerLimiter.c  -o ${OBJECTDIR}/PowerLimiter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/PowerLimiter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/PowerLimiter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ProcessUartMsg.o: ProcessUartMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ProcessUartMsg.o.d 
	@${RM} ${OBJECTDIR}/ProcessUartMsg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ProcessUartMsg.c  -o ${OBJECTDIR}/ProcessUartMsg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ProcessUartMsg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/ProcessUartMsg.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/UART.o: UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.o.d 
	@${RM} ${OBJECTDIR}/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  UART.c  -o ${OBJECTDIR}/UART.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/UART.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/UART.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/DAC.o: DAC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DAC.o.d 
	@${RM} ${OBJECTDIR}/DAC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DAC.c  -o ${OBJECTDIR}/DAC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/DAC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/DAC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Spi.o: Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Spi.o.d 
	@${RM} ${OBJECTDIR}/Spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Spi.c  -o ${OBJECTDIR}/Spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/Spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/HardwareInit.o: HardwareInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HardwareInit.o.d 
	@${RM} ${OBJECTDIR}/HardwareInit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  HardwareInit.c  -o ${OBJECTDIR}/HardwareInit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/HardwareInit.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/HardwareInit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Math.o: Math.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Math.o.d 
	@${RM} ${OBJECTDIR}/Math.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Math.c  -o ${OBJECTDIR}/Math.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Math.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/Math.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/HeaterPID.o: HeaterPID.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HeaterPID.o.d 
	@${RM} ${OBJECTDIR}/HeaterPID.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  HeaterPID.c  -o ${OBJECTDIR}/HeaterPID.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/HeaterPID.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/HeaterPID.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/AddressBus.o: AddressBus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AddressBus.o.d 
	@${RM} ${OBJECTDIR}/AddressBus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AddressBus.c  -o ${OBJECTDIR}/AddressBus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/AddressBus.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/AddressBus.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/LeakerPid.o: LeakerPid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LeakerPid.o.d 
	@${RM} ${OBJECTDIR}/LeakerPid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  LeakerPid.c  -o ${OBJECTDIR}/LeakerPid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/LeakerPid.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/LeakerPid.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ADC.o: ADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADC.o.d 
	@${RM} ${OBJECTDIR}/ADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ADC.c  -o ${OBJECTDIR}/ADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ADC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/ADC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/AnalogIo.o: AnalogIo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AnalogIo.o.d 
	@${RM} ${OBJECTDIR}/AnalogIo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AnalogIo.c  -o ${OBJECTDIR}/AnalogIo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/AnalogIo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/AnalogIo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Timer.o: Timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer.o.d 
	@${RM} ${OBJECTDIR}/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timer.c  -o ${OBJECTDIR}/Timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/Timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Main.c  -o ${OBJECTDIR}/Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Main.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/PowerLimiter.o: PowerLimiter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PowerLimiter.o.d 
	@${RM} ${OBJECTDIR}/PowerLimiter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PowerLimiter.c  -o ${OBJECTDIR}/PowerLimiter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/PowerLimiter.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/PowerLimiter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ProcessUartMsg.o: ProcessUartMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ProcessUartMsg.o.d 
	@${RM} ${OBJECTDIR}/ProcessUartMsg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ProcessUartMsg.c  -o ${OBJECTDIR}/ProcessUartMsg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ProcessUartMsg.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/ProcessUartMsg.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/UART.o: UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.o.d 
	@${RM} ${OBJECTDIR}/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  UART.c  -o ${OBJECTDIR}/UART.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/UART.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/UART.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/DAC.o: DAC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DAC.o.d 
	@${RM} ${OBJECTDIR}/DAC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DAC.c  -o ${OBJECTDIR}/DAC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/DAC.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/DAC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Spi.o: Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Spi.o.d 
	@${RM} ${OBJECTDIR}/Spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Spi.c  -o ${OBJECTDIR}/Spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Spi.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/Spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/HardwareInit.o: HardwareInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HardwareInit.o.d 
	@${RM} ${OBJECTDIR}/HardwareInit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  HardwareInit.c  -o ${OBJECTDIR}/HardwareInit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/HardwareInit.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/HardwareInit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Math.o: Math.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Math.o.d 
	@${RM} ${OBJECTDIR}/Math.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Math.c  -o ${OBJECTDIR}/Math.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Math.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/Math.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/HeaterPID.o: HeaterPID.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HeaterPID.o.d 
	@${RM} ${OBJECTDIR}/HeaterPID.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  HeaterPID.c  -o ${OBJECTDIR}/HeaterPID.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/HeaterPID.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/HeaterPID.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/AddressBus.o: AddressBus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AddressBus.o.d 
	@${RM} ${OBJECTDIR}/AddressBus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AddressBus.c  -o ${OBJECTDIR}/AddressBus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/AddressBus.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/AddressBus.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/LeakerPid.o: LeakerPid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LeakerPid.o.d 
	@${RM} ${OBJECTDIR}/LeakerPid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  LeakerPid.c  -o ${OBJECTDIR}/LeakerPid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/LeakerPid.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/LeakerPid.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ADC.o: ADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADC.o.d 
	@${RM} ${OBJECTDIR}/ADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ADC.c  -o ${OBJECTDIR}/ADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ADC.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/ADC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/AnalogIo.o: AnalogIo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AnalogIo.o.d 
	@${RM} ${OBJECTDIR}/AnalogIo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AnalogIo.c  -o ${OBJECTDIR}/AnalogIo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/AnalogIo.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/AnalogIo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Timer.o: Timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer.o.d 
	@${RM} ${OBJECTDIR}/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timer.c  -o ${OBJECTDIR}/Timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Timer.o.d"        -g -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O3 -funroll-loops -msmart-io=1 -Wall -msfr-warn=off -mno-override-inline 
	@${FIXDEPS} "${OBJECTDIR}/Timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/dsPicProg.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/dsPicProg.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/dsPicProg.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/dsPicProg.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -save-temps=obj -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/dsPicProg.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
