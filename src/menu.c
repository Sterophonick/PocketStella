#include <libheart.h>
#include "cpu.h"
#include "lang.h"

#define MAIN_MENU_SIZE 9

emu* PocketStella = (emu*)0xE000000;
void help();
void OtherSettings();
void DisplaySettings();
void drawclock();
void ControllerSettings();
void RemapButtons();

u8 updatevsync=0;

	u8 returns[3];
	u8 disploop;
	u8 arpos;

void menu()
{
	hrt_InitTiledText(2);
	hrt_DSPSetBGMode(0);
	hrt_DSPEnableBG(2);
	for(disploop = 0; disploop < MAIN_MENU_SIZE; disploop++)
	{
		hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_main_menu_options[disploop]);
	}
	hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
	hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
	arpos = 0;
	for(int i=0;i<16;i++)
	{
		hrt_VblankIntrWait();
		hrt_SetFXLevel(16-i);
	}
	while(!(keyDown(KEY_B)))
	{
		hrt_VblankIntrWait();
		drawclock();
		hrt_PrintOnTilemap(0, 7+arpos, "*");
		if(keyDown(KEY_DOWN))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(!(arpos > 7))
			{
				arpos++;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_DOWN))
			{
				hrt_VblankIntrWait();
			}
		}
		if(keyDown(KEY_UP))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(arpos > 0)
			{
				arpos--;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_UP))
			{
				hrt_VblankIntrWait();
			}
		}
		if(keyDown(KEY_A))
		{
			if(arpos == 0)
			{
				ControllerSettings();
			}
			if(arpos == 1)
			{
				DisplaySettings();
			}
			if(arpos == 2)
			{
				OtherSettings();
			}
			if(arpos == 5)
			{
				help();
			}
			if(arpos == 6)
			{
				hrt_Suspend();
			}
			if(arpos == 7)
			{	
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				Initialize();
				break;
			}
			if(arpos == 8)
			{
				hrt_FXSetBlendMode(FX_MODE_BRIGHTEN);
				hrt_FXEnableBackdrop(0);
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_EZ4Exit();
			}
		}
	}
	hrt_FillScreen(0x0000);
	hrt_DSPSetBGMode(4);
	hrt_DSPEnableBG(2);
	hrt_DSPDisableForceBlank();
	render();
	hrt_FXSetBlendMode(FX_MODE_DARKEN);
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
}

void help()
{
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < 10; disploop++)
				{
					hrt_PrintOnTilemap(0, 2+disploop, (char*)gl_help_text[disploop]);
				}
				hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
				hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
				hrt_PrintOnTilemap(0, 0, (char*)gl_menu_titles[4]);
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
				while(!(keyDown(KEY_B)))
				{
					hrt_VblankIntrWait();
				}
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < MAIN_MENU_SIZE; disploop++)
				{
					hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_main_menu_options[disploop]);
				}
				hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
				hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
				arpos = 0;
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
}

void OtherSettings()
{
				arpos = 0;
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < 5; disploop++)
				{
					hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_other_options[disploop]);
				}
				hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
				hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
				hrt_PrintOnTilemap(0, 0, (char*)gl_menu_titles[2]);
				hrt_PrintOnTilemap(8, 7, (char*)gl_vsync_options[PocketStella->vsync]);
				hrt_PrintOnTilemap(11, 9, (char*)gl_cycles_frame_options[PocketStella->swapab]);
				hrt_PrintOnTilemap(8, 10, (char*)gl_vsync_options[PocketStella->sound]);
				hrt_PrintOnTilemap(12, 8, (char*)gl_autosleep_options[PocketStella->autosleep]);
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
				while(!(keyDown(KEY_B)))
				{
					hrt_VblankIntrWait();
		hrt_PrintOnTilemap(0, 7+arpos, "*");
		if(keyDown(KEY_DOWN))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(!(arpos > 3))
			{
				arpos++;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_DOWN))
			{
				hrt_VblankIntrWait();
			}
		}
		if(keyDown(KEY_UP))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(arpos > 0)
			{
				arpos--;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_UP))
			{
				hrt_VblankIntrWait();
			}
				}
					if(keyDown(KEY_A))
					{
						if(arpos == 0)
						{
							updatevsync = 1;
							PocketStella->vsync++;
							if(PocketStella->vsync > 2)
							{
								PocketStella->vsync = 0;
							}
							hrt_PrintOnTilemap(8, 7, (char*)gl_vsync_options[PocketStella->vsync]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 1)
						{
							PocketStella->autosleep++;
							if(PocketStella->autosleep > 4)
							{
								PocketStella->autosleep = 0;
							}
							hrt_PrintOnTilemap(12, 8, (char*)gl_autosleep_options[PocketStella->autosleep]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 2)
						{
							PocketStella->swapab++;
							if(PocketStella->swapab > 1)
							{
								PocketStella->swapab = 0;
							}
							hrt_PrintOnTilemap(11, 9, (char*)gl_vsync_options[PocketStella->swapab]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 3)
						{
							PocketStella->sound++;
							if(PocketStella->sound > 1)
							{
								PocketStella->sound = 0;
							}
							hrt_PrintOnTilemap(8, 10, (char*)gl_vsync_options[PocketStella->sound]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 4)
						{
							break;
						}
					}
				}
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < MAIN_MENU_SIZE; disploop++)
				{
					hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_main_menu_options[disploop]);
				}
				hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
				hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
				arpos = 0;
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
}

void DisplaySettings()
{
				arpos = 0;
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < 4; disploop++)
				{
					hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_display_options[disploop]);
				}
				hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
				hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
				hrt_PrintOnTilemap(0, 0, (char*)gl_menu_titles[1]);
				hrt_PrintOnTilemap(10, 7, (char*)gl_palettes[PocketStella->palette]);
				hrt_PrintOnTilemap(13, 8, (char*)gl_brightness_options[PocketStella->brightness]);
				hrt_PrintOnTilemap(14, 9, (char*)gl_vsync_options[PocketStella->dblsize]);
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
				while(!(keyDown(KEY_B)))
				{
		hrt_PrintOnTilemap(0, 7+arpos, "*");
		if(keyDown(KEY_DOWN))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(!(arpos > 2))
			{
				arpos++;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_DOWN))
			{
				hrt_VblankIntrWait();
			}
		}
		if(keyDown(KEY_UP))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(arpos > 0)
			{
				arpos--;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_UP))
			{
				hrt_VblankIntrWait();
			}
				}
					if(keyDown(KEY_A))
					{
						if(arpos == 0)
						{
							PocketStella->palette++;
							if(PocketStella->palette > 6)
							{
								PocketStella->palette = 0;
							}
							hrt_PrintOnTilemap(10, 7, (char*)gl_palettes[PocketStella->palette]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 1)
						{
							PocketStella->brightness++;
							if(PocketStella->brightness > 4)
							{
								PocketStella->brightness = 0;
							}
							hrt_PrintOnTilemap(13, 8, (char*)gl_brightness_options[PocketStella->brightness]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 2)
						{
							updatevsync = 1;
							PocketStella->dblsize++;
							if(PocketStella->dblsize > 1)
							{
								PocketStella->dblsize = 0;
							}
							hrt_PrintOnTilemap(14, 9, (char*)gl_vsync_options[PocketStella->dblsize]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 3)
						{
							break;
						}
					}
				}
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < MAIN_MENU_SIZE; disploop++)
				{
					hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_main_menu_options[disploop]);
				}
				hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
				hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
				arpos = 0;
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
}

void ControllerSettings()
{
				arpos = 0;
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < 2; disploop++)
				{
					hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_controller_options[disploop]);
				}
				hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
				hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
				hrt_PrintOnTilemap(0, 0, (char*)gl_menu_titles[0]);
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
				while(!(keyDown(KEY_B)))
				{
		hrt_PrintOnTilemap(0, 7+arpos, "*");
		if(keyDown(KEY_DOWN))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(!(arpos > 0))
			{
				arpos++;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_DOWN))
			{
				hrt_VblankIntrWait();
			}
		}
		if(keyDown(KEY_UP))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(arpos > 0)
			{
				arpos--;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_UP))
			{
				hrt_VblankIntrWait();
			}
				}
					if(keyDown(KEY_A))
					{
						if(arpos == 0)
						{
							RemapButtons();
						}
						if(arpos == 1)
						{
							break;
						}
					}
				}
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				while(keyDown(KEY_A))
				{
					hrt_VblankIntrWait();
				}
	for(disploop = 0; disploop < MAIN_MENU_SIZE; disploop++)
	{
		hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_main_menu_options[disploop]);
	}
	hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
	hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
	arpos = 0;
	for( int i=0;i<16;i++)
	{
		hrt_VblankIntrWait();
		hrt_SetFXLevel(16-i);
	}
}

void RequestExit()
{
	hrt_InitTiledText(2);
	hrt_DSPSetBGMode(0);
	hrt_ClearTiledText();
	hrt_DSPEnableBG(2);
	hrt_PrintOnTilemap(0, 0, (char*)gl_request_ext);
	hrt_SleepF(60);
	hrt_EZ4Exit();
}

void debugger()
{
	/*
	hrt_InitTiledText(2);
	hrt_DSPSetBGMode(0);
	hrt_ClearTiledText();
	hrt_DSPEnableBG(2);
	hrt_PrintOnTilemap(0, 0, "PC: %x", Chip8.pc);
	hrt_PrintOnTilemap(0, 1, "OP: %x", Chip8.opcode);
	while(1);
	*/
}

void drawclock()
{
	char str[9];
	hrt_PrintRTCTimeIntoString(str);
	hrt_PrintOnTilemap(22, 0, str);
}

void RemapButtons()
{
				arpos = 0;
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < 4; disploop++)
				{
					hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_keypad_menu[disploop]);
				}
				hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);
				hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);
				hrt_PrintOnTilemap(0, 0, (char*)gl_menu_titles[5]);
				hrt_PrintOnTilemap(4, 7, (char*)gl_keypad_options[PocketStella->b_key]);
				hrt_PrintOnTilemap(9, 7+1, (char*)gl_keypad_options[PocketStella->sel_key]);
				hrt_PrintOnTilemap(8, 7+2, (char*)gl_keypad_options[PocketStella->strt_key]);
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
				while(!(keyDown(KEY_B)))
				{

		hrt_PrintOnTilemap(0, 7+arpos, "*");
		if(keyDown(KEY_DOWN))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(!(arpos > 2))
			{
				arpos++;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_DOWN))
			{
				hrt_VblankIntrWait();
			}
		}
		if(keyDown(KEY_UP))
		{
			hrt_PrintOnTilemap(0, 7+arpos, " ");
			if(arpos > 0)
			{
				arpos--;
			}
			hrt_PrintOnTilemap(0, 7+arpos, "*");
			while(keyDown(KEY_UP))
			{
				hrt_VblankIntrWait();
			}
				}
					if(keyDown(KEY_A))
					{
						if(arpos == 0)
						{
							PocketStella->b_key++;
							if(PocketStella->b_key > 0xF)
							{
								PocketStella->b_key = 0;
							}
							hrt_PrintOnTilemap(4, 7, (char*)gl_keypad_options[PocketStella->b_key]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 1)
						{
							PocketStella->sel_key++;
							if(PocketStella->sel_key > 0xF)
							{
								PocketStella->sel_key = 0;
							}
							hrt_PrintOnTilemap(9, 7+1, (char*)gl_keypad_options[PocketStella->sel_key]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 2)
						{
							PocketStella->strt_key++;
							if(PocketStella->strt_key > 0xF)
							{
								PocketStella->strt_key = 0;
							}
							hrt_PrintOnTilemap(8, 7+2, (char*)gl_keypad_options[PocketStella->strt_key]);
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
						}
						if(arpos == 3)
						{
							while(keyDown(KEY_A))
							{
								hrt_VblankIntrWait();
							}
							break;
						}
					}
				}
							while(keyDown(KEY_B))
							{
								hrt_VblankIntrWait();
							}
				arpos = 0;
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(i);
				}
				hrt_ClearTiledText();
				for(disploop = 0; disploop < 2; disploop++)
				{
					hrt_PrintOnTilemap(1, 7+disploop, (char*)gl_controller_options[disploop]);
				}
				for(int i=0;i<16;i++)
				{
					hrt_VblankIntrWait();
					hrt_SetFXLevel(16-i);
				}
}

void SaveState(void)
{

}
void LoadState(void)
{

}