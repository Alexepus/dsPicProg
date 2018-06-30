#include "Main.h"
bool FlagManualLeakerMode = false;

void task_LeakerPid_body(void)
{
	ADCDataAveraged[4]=(ADCDataTemp[0][4]+ADCDataTemp[1][4]+ADCDataTemp[2][4]+ADCDataTemp[3][4])>>2;
	ADCDataAveraged[5]=(ADCDataTemp[0][5]+ADCDataTemp[1][5]+ADCDataTemp[2][5]+ADCDataTemp[3][5])>>2;    
}
