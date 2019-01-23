#include <libheart.h>
#include "cpu.h"
#include "lang.h"
void Initialize()
{
	memset(memory, 0, 8192);
	memcpy(&memory[0x1000], rom, 4096);
	a2600_a = 0;
	a2600_x = 0;
	a2600_y = 0;
	a2600_pc = 0;
	a2600_syflag = 0x20;
}

void m6502_Execute()
{
	op_byte2 = memory[a2600_pc++];
	op_addr = memory[a2600_pc++] << 8 | op_byte2;
}