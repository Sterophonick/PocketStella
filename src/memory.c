#include <libheart.h>
#include "cpu.h"
#include "lang.h"
u8 cyc;
u8 a2600_a;
u8 a2600_x;
u8 a2600_y;
u16 a2600_pc;
u8 a2600_sp;
u8 memory[8192];
u8 op_byte1;
u8 op_byte2;
u8 op_byte3;
u16 op_addr;
u8 a2600_syflag;
u8 addrmode;
u8 a26_nz;
u8* stack = &memory[0x100];

void rombanks()
{
	
}

/*SYFLAG Bits
7 = Negative
6 = Overflow
5 - Ignored
4 = Break
3 = Decimal (Use BCD for arithetics)
2 = Interrupt (Irq disable)
1 = Zero
0 = Carry
*/

/*Memory map
$0000 - $007F: TIA Registers
$0080 - $00FF: 128 Byte RAM
$0200 - $02FF: RIOT Registers
$1000 - $1FFF: ROM (4kb)
*/