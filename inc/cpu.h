#include <stdbool.h>

extern u8 videobuffer[160*192];
extern u8 cycles;
extern u8 a2600_a;
extern u8 a2600_x;
extern u8 a2600_y;
extern u16 a2600_pc;
extern u8 a2600_sp;
extern u8 memory[8192];
extern u8 op_byte1;
extern u8 op_byte2;
extern u8 op_byte3;
extern u16 op_addr;
extern u8 a2600_syflag;
extern u8 addrmode;
extern u8 a26_nz;
extern u8* stack;

extern void Initialize();
extern void m6502_execute();
extern void Keypad();
extern void render();

typedef struct
{
	u8 random_seed;
	u8 b_key;
	u8 sel_key;
	u8 strt_key;
	u8 brightness;
	u8 palette;
	u8 sound;
	u8 dblsize;
	u8 swapab;
	u8 vsync;
	u8 autosleep;
	u8 firstboot;
}emu;
extern emu* PocketStella;

extern char setLowerNibble(char orig, char nibble);
extern char setUpperNibble(char orig, char nibble);

void render();

extern void menu();
extern void RequestExit();

extern void debugger();

extern u32 autosleeptimer;

extern u8 updatevsync;

void execute(u8 op);

extern const unsigned short a26_pal[128]; //Palette for video
extern const unsigned char rom[4096];