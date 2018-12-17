extern void menu();
extern void CPUExec();
extern void GetKeypad();
extern void MergeKeyData();
extern u32 cycles;
extern void execute(u8 r0);

extern u8 a26_a;
extern u8 a26_x;
extern u8 a26_y;
extern u16 a26_pc;
extern u8 a26_sp;
extern u8 memory[8192];
extern u8 op_byte1;
extern u8 op_byte2;
extern u8 op_byte3;
extern u16 op_addr;
extern u8 a26_cyflag;
extern u8 addressing;
extern u8 a26_nz;

extern void* op_table[256];

extern unsigned short a26_pal[128]; //NTSC A26 Palette
extern u8 vbuf[160*192];