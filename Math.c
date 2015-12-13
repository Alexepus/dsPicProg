#include "Main.h"

// Линейная интерполяция
// A - аргумент, для которого нужно найти приближенное значение
// ALeft - аргумент, которому соответствует значение BLeft
// ARight - аргумент, которому соответствует значение BRight
// ALeft < ARight
int linterp(int A, int ALeft, int ARight, int BLeft, int BRight)
{
	BYTE Count;
	int NewVal;
	for(Count=0; Count<9; Count++)
	{
		NewVal=(ALeft+ARight)>>1;
		if(A<NewVal)
		{
			ARight=NewVal;
			BRight=(BLeft+BRight)>>1;
		}
		else
		{
			ALeft=NewVal;
			BLeft=(BLeft+BRight)>>1;
		}
	}
	return BLeft;
}

