#include "Main.h"
INT16Q8 Kp=Q8(1), Ki=Q8(1), Kd=Q8(1), Kff=Q8(1); //������������ ��� ���������
INT16Q4 Vp=Q4(2), Vi=Q4(3), Vd=Q4(4), Vff, Vout; //�������., ������. � ���. ����������
INT16Q4 ViMax, ViMin, ViOff; //��������� ������������ ����������
BYTE IDec=250; //����������� ��������� ������������� ����������
INT16Q4 TRef=0, TMeas; //������� � ���������� �����������
INT16Q4 PidOut; //�������� �������� ����������
//��-��������� �������� ��� ��������� CR-AL.TCF
INT16Q8 TableV[32]={0xFE1C,0xFFB0,0x15E,0x319,0x4D6,0x68A,0x838,0x9E8,0xBA1,0xD5F,0xF22,0x10E7,0x12AF,0x1478,0x1643,0x180D,0x19D6,0x1B9D,0x1D61,0x1F22,0x20DE,0x2295,0x2448,0x25F6,0x27A0,0x2945,0x2AE5,0x2C80,0x2E17,0x2FA7,0x3131,0x32B4};
INT16Q4 TableT[32]={0xFCE0};
INT16Q8 TableInvDV[32];
INT16Q4 FFTableTemp[4];
INT16Q4 FFTableOut[4];
INT16Q16 AdcTcTomVCoef=Q16(0.00305194409); // 50mV/3FFF
BYTE DifShift=5;
bool TableVLoaded=0,TdTLoaded=0; 
BYTE TableDT=0x2A;
INT16Q4 TEnd;
INT32Q20 DeltaT, TAccumulator;
long VoutAcc;
bool FlagWait, FlagMainOff, FlagRefTempAchived;
bool ManualHeaterControl=0;
#define MulIShift4( A,  B) ((INT16Q4)((A*B)>>4))
long MulVarA, MulVarB;

INT16Q4 TempHistFifo[16]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
BYTE TempHistFifoIndex, TempHistFifoDecimCnt;
INT16Q4 TempHistFifoDecim;
double A;
BYTE i;
int DacVal;
UINT DacData0Presave;

//________________________________________________________________________________
//Task 1. PID-��������� �����������
void task_HeaterPid_body()
{	
	static INT16Q4 Temp1;
	//static int	debug=0;
#ifndef SIMULATION
		//ReadADC();
#endif
		ADCDataAveraged[0]=(ADCDataTemp[0][0]+ADCDataTemp[1][0]+ADCDataTemp[2][0]+ADCDataTemp[3][0])>>2;
		ADCDataAveraged[1]=(ADCDataTemp[0][1]+ADCDataTemp[1][1]+ADCDataTemp[2][1]+ADCDataTemp[3][1])>>2;
		ADCDataAveraged[2]=(ADCDataTemp[0][2]+ADCDataTemp[1][2]+ADCDataTemp[2][2]+ADCDataTemp[3][2])>>2;
		ADCDataAveraged[3]=(ADCDataTemp[0][3]+ADCDataTemp[1][3]+ADCDataTemp[2][3]+ADCDataTemp[3][3])>>2;
		
		if(!FlagMainOff)
		{
			if(!FlagWait)
			{
			//����������, � ����� ������� �������� �����������
			if(TRef==TEnd)
			{
				FlagRefTempAchived=1;
			}
			else
			{
				FlagRefTempAchived=0;
				if(TRef<TEnd)
				{
					//���������� ������� �����������
					TAccumulator+=DeltaT;
					TRef=*((INT16Q4*)&TAccumulator+1);
					if(TRef>TEnd)
					{
						TRef=TEnd;
						*((INT16Q4*)&TAccumulator+1)=TEnd;
					}
				}
				else
				{
					//���������� ������� �����������
					TAccumulator-=DeltaT;
					TRef=*((INT16Q4*)&TAccumulator+1);
					if(TRef<TEnd)
					{
						TRef=TEnd;
						*((INT16Q4*)&TAccumulator+1)=TEnd;
					}
				}
			}
	
			//*** Temp1=AdcTcTomVCoef*ADC8x14Data[0]
			MulIShift8(ADCDataAveraged[0], AdcTcTomVCoef, Temp1);
			TMeas=CalcTByV(Temp1);
            
			Vp=TRef-TMeas;
            //if(++debug%100==0)
			//ReportDebugInfo2((BYTE)(TMeas>>8), (BYTE)TMeas);
			TempHistFifoDecimCnt=(TempHistFifoDecimCnt+1)&0x3;
			if(TempHistFifoDecimCnt==0)
			{
				TempHistFifoIndex=(TempHistFifoIndex+1)&0x0F;
				Vd=TempHistFifoDecim-TempHistFifo[(TempHistFifoIndex-DifShift)&0xF];
				TempHistFifo[TempHistFifoIndex]=TempHistFifoDecim;
				TempHistFifoDecim=Vp;
			}
			else
			{
				TempHistFifoDecim+=Vp;
			}
			
			MulIShift8(Vi,IDec,Temp1);
			Vi=Vp+Temp1;
			if(Vp>ViOff || Vp<-ViOff)
				Vi=0;
			if(Vi>ViMax)
				Vi=ViMax;
			if(Vi<-ViMax)
				Vi=-ViMax;
			
			//*** PidOut=Kp*Vp+Ki*Vi+Kd*Vd;
			MulIShift8Res32(Kp,Vp,VoutAcc);
			MulIShift8Res32(Ki,Vi,MulVarB);
			VoutAcc+=MulVarB;
			MulIShift8Res32(Kd,Vd,MulVarB);
			VoutAcc+=MulVarB;
			if(VoutAcc>0x7FFFl)
				VoutAcc=0x7FFFl;
			else if(VoutAcc<(long)0xFFFF8000l)
				VoutAcc=(long)0xFFFF8000l;
			PidOut=VoutAcc;

			Vff=CalcFF(TRef);
			//*** Vout=PidOut+Kff*Vff;
			MulIShift8Res32(Kff,Vff,MulVarB);
			VoutAcc+=MulVarB;
			if(VoutAcc>0x7FFFl)
				VoutAcc=0x7FFFl;
			else if(VoutAcc<(int)0x8000)
				VoutAcc=(int)0x8000;
			Vout=VoutAcc;
			DacVal=Vout;
			if(DacVal>0x7FFF)
				DacVal=0x7FFF;
			if(DacVal<0)
				DacVal=0;
			if(!ManualHeaterControl)
				DacData[0]=DacVal;
			}
		}
		else //FlagMainOff
			if(!ManualHeaterControl)
				DacData[0]=0;
		
		DacData0Presave = DacData[0];
		Limiter();
#ifndef SIMULATION
		//LoadDac(0, DacData[0]);
#endif
		DacData[0] = DacData0Presave;
}

//������� ���������� - ��������� ���������� ��������� � ��. ���������� � ��� ������ 
//���������������� � ������������ � ������������� �� �� ������ ��������
INT16Q4 CalcTByV(INT16Q8 Voltage)
{
	INT16Q4 Tmp;
	if(Voltage>TableV[15])
	{
		if(Voltage>TableV[23])
			i=24;
		else
			i=16;
	}
	else
	{
		if(Voltage>TableV[7])
			i=8;
		else
			i=1;
	}
	while((Voltage>TableV[i]) && i<32)
		i++;
	i--; //������� ������ �����
		//TableT[i]+(Voltage-TableV[i])*TableInvDV[i]*TableDT
		MulVarA=Voltage-TableV[i];

MulVarB=(Voltage-TableV[i])*TableDT;
		MulIShift8((Voltage-TableV[i])*TableDT,TableInvDV[i],Tmp);
		//Mul48To4(Tmp,TableDT,Tmp);
MulVarA=Tmp;
MulVarB=Tmp*TableDT;
		
	return TableT[i]+Tmp/16;
}

/*INT16Q4 CalcTByV(INT16Q8 Voltage)
{
double A,B;
	INT16Q4 Tmp;
	if(Voltage>TableV[15])
	{
		if(Voltage>TableV[23])
			i=24;
		else
			i=16;
	}
	else
	{
		if(Voltage>TableV[7])
			i=8;
		else
			i=0;
	}
	while(Voltage>TableV[i])
		i++;
A=(Voltage-TableV[i-1])/256.;
B=(TableV[i]-TableV[i-1])/256.;
TempA=(int)(A/B*256);
	return 	TableT[i-1]+TempA*TableDT/16;

}*/

//��������� ������� TableT, ��� ���� ��� ������ ���� ������� TableT[0] � TableDT
void FillTableT(void)
{
	MulVarA=TableDT;
	MulVarA*=16;
	for (i=1; i<32; i++)
	{

		TableT[i]=TableT[0]+(MulVarA*i);
	}
}

//��������� ������� TableInvDV, ��� ���� ��� ������ ���� ������� �������� TableV[]
void FillTableInvDV(void)
{
	for (i=0; i<31; i++)
		TableInvDV[i]=0x010000l/(TableV[i+1]-TableV[i]);
	TableInvDV[31]=TableInvDV[30];
}

INT16Q4 CalcFF(INT16Q4 TRef)
{
	if(TRef<FFTableTemp[2])
	{
		if(TRef<FFTableTemp[0])
			return FFTableOut[0];
		if(TRef<FFTableTemp[1])
			return linterp(TRef,FFTableTemp[0],FFTableTemp[1],FFTableOut[0],FFTableOut[1]);
		return linterp(TRef,FFTableTemp[1],FFTableTemp[2],FFTableOut[1],FFTableOut[2]);
	}
	else
	{
		if(TRef<FFTableTemp[3])
			return linterp(TRef,FFTableTemp[2],FFTableTemp[3],FFTableOut[2],FFTableOut[3]);
		return FFTableOut[3];
	}
}
