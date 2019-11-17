//Emulation of the machine itself
#include <libheart.h>
#include "lang.h"
#include "emu.h"
#include "sound.h"
#include "vram.h"
#include "m6502.h"
#include "vmachine.h"
PAD keypad;
u8 memory[8192];

void a26Init()
{
	//memcpy(&memory[0], REG_POGOFILEPTR, 4096);
	memcpy(&memory[0], rom, 4096);
}

void emuMain()
{
	while(1)
	{
		//a26Execute();
		if(keyDown(KEY_L))
		{
			if(keyDown(KEY_R))
				emuMenu();
		}
	}
}

void a26TIA()
{
	if(memory[0])
	{
		hrt_VblankIntrWait();
	}
}