#include <libheart.h>
#include "cpu.h"
u32 cycles;

u8 a26_a;
u8 a26_x;
u8 a26_y;
u16 a26_pc;
u8 a26_sp;
u8 memory[8192];
u8 op_byte1;
u8 op_byte2;
u8 op_byte3;
u16 op_addr;
u8 a26_cyflag;
u8 addressing;
u8 a26_nz;

void CPUExec()
{
	op_addr = (((memory[a26_pc]+1) << 8) | (memory[a26_pc]+2));
	execute(a26_pc);
}