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
	hrt_SetKeyStructPointer(keypad);
	emuMain();
	return 0;
}