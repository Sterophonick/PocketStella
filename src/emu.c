#include <libheart.h>
#include "m6502.h"
#include "vram.h"
#include "sound.h"
#include "emu.h"
#include "lang.h"
#include "vmachine.h"
emu* PocketStella = (emu*)0xE000000;
u8 emuMenuArrowPos;
u8 emuMenuKeyLockUp;
u8 emuMenuKeyLockDown;
u8 emuMenuKeyLockLeft;
u8 emuMenuKeyLockRight;
u8 emuMenuKeyLockA;
u8 CopyVRAM;
u32 autosleeptimer;

//Other Options
void emuMenuHelp();
void emuMenuControls();
void emuMenuDisplay();
void emuMenuOther();
void emuMenuReset();
void emuMenuBack();
void emuMenuExit();
void emuMenuSleep();

//Helpers
void emuMenuHelperReInit();
void emuMenuHelperRTC();
void emuMenuHelperFadeOut();
void emuMenuHelperFadeIn();

void emuMenu()
{
	emuMenuHelperFadeOut();
	hrt_InitTiledText(0);
	hrt_DSPSetBGMode(0);
	hrt_DSPDisableOBJ();
	REG_SOUND2CNT_H = 0;
	hrt_ClearTiledText();
	hrt_DSPDisableBG(2);
	hrt_DSPEnableBG(0);
	emuMenuHelperLoadMenu(gl_main_menu_options, 6);
	emuMenuHelperFadeIn();
	hrt_GetPad(&keypad);
	while(!hrt_IsKeyPressed(B))
	{
		emuMenuHelperMain(6, emuMenuMainOptions);
	}
	hrt_DMA_Copy(3, &VRAM[0x4000], VRAM, 0x4000, 0x80000000);
	hrt_BGSetMapBase(2,0x1F);
	hrt_SetBGX(3,24);
	hrt_DSPSetBGMode(2);
	hrt_BGSetSize(2, 1);
	hrt_DSPEnableBG(2);
	hrt_DSPDisableForceBlank();
	hrt_DSPEnableOBJ();
	hrt_DSPEnableLinearOBJ();
	emuMain();
}

void emuMenuHelp()
{
	emuMenuHelperFadeOut();
	hrt_ClearTiledText();
	emuMenuHelperLoadMenu(gl_help_text, 10);
	emuMenuHelperFadeIn();
	hrt_GetPad(&keypad);
	while(!hrt_IsKeyPressed(B))
	{
		hrt_VblankIntrWait();
		hrt_GetPad(&keypad);
	}
	emuMenu();
}

void emuMenuControls()
{
	emuMenuHelperFadeOut();
	hrt_ClearTiledText();
	emuMenuHelperLoadMenu(gl_controller_options, 5);
	hrt_PrintOnTilemap(8, 7, gl_keypad_options[PocketStella->a_auto]);
	emuMenuHelperFadeIn();
	hrt_GetPad(&keypad);
	while(!hrt_IsKeyPressed(B))
	{
		emuMenuHelperMain(4,emuMenuControllerOptions);
	}
	emuMenu();
}

void emuMenuDisplay()
{
	emuMenuHelperFadeOut();
	hrt_ClearTiledText();
	emuMenuHelperLoadMenu(gl_display_options, 2);
	hrt_PrintOnTilemap(12, 7, gl_brightness_options[PocketStella->brightness]);
	emuMenuHelperFadeIn();
	hrt_GetPad(&keypad);
	while(!hrt_IsKeyPressed(B))
	{
		emuMenuHelperMain(1,emuMenuDisplayOptions);
	}
	emuMenu();
}

void emuMenuOther()
{

}

void emuMenuReset()
{
	hrt_SoftReset();
}

void ATTR_NORETURN emuMenuBack()
{
	asm("bx lr");
}

void emuMenuSleep()
{
	hrt_Suspend();
}

void emuMenuExit()
{
	hrt_EZ4Exit();
}

void emuMenuControllerAAuto()
{
	PocketStella->a_auto++;
	if(PocketStella->a_auto > 2)
		PocketStella->a_auto = 0;
	hrt_PrintOnTilemap(13, 9, gl_autofire_options[PocketStella->a_auto]);
}

void emuMenuControllerMode()
{

}

void emuMenuDisplayBrightness()
{
	PocketStella->brightness++;
	if(PocketStella->brightness > 4)
		PocketStella->brightness = 0;
	hrt_PrintOnTilemap(12, 7, gl_brightness_options[PocketStella->brightness]);
}

void emuMenuHelperFadeOut()
{
	for(register int i=0;i<16;i++)
	{
		hrt_VblankIntrWait();
		hrt_SetFXLevel(i);
	}
}

void emuMenuHelperFadeIn()
{
	for(register int i=0;i<16;i++)
	{
		hrt_VblankIntrWait();
		hrt_SetFXLevel(16-i);
	}
}

void emuMenuHelperRTC() {
	char str[9];
	hrt_PrintRTCTimeIntoString(str);
	hrt_PrintOnTilemap(22, 0, str);
}