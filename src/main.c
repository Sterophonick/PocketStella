#include <libheart.h>
#include "cpu.h"

int main()
{
	hrt_Init();
	hrt_InitTiledText(2);
	hrt_DSPSetBGMode(4);
	hrt_DSPEnableBG(2);
	hrt_DSPDisableForceBlank();
	hrt_LoadBGPal((void*)a26_pal, 128);
	while(1)
	{
		hrt_VblankIntrWait();
		GetKeypad();
		MergeKeyData();
		for(cycles=0;cycles<4000000/60;)
		{
			CPUExec();
			if(keyDown(KEY_R))
			{
				if(keyDown(KEY_L)) menu();
			}
		}
	}
	return 0;
}