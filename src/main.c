#include <libheart.h>
#include "m6502.h"
#include "vram.h"
#include "sound.h"
#include "emu.h"
#include "lang.h"
#include "vmachine.h" 
INCBIN(rom, "doc/rom.bin"); //This is the test ROM, Cat Trax. Not included.

int main() 
{
	hrt_Init();
	hrt_EnableRTC();
	hrt_DSPSetBGMode(4);
	hrt_DSPEnableBG(2);
	hrt_DSPDisableForceBlank();
	hrt_SetKeyStructPointer(keypad);
	hrt_FXEnableBG(2,0);
	hrt_FXEnableBG(0,0);
	hrt_FXSetBlendMode(FX_MODE_DARKEN);
	emuMain();
	return 0;
}