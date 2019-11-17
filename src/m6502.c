//MOS Technology 6502 simulation
//Credits to https://www.masswerk.at/6502/6502_instruction_set.html

#include <libheart.h>
#include "lang.h"
#include "emu.h"
#include "sound.h"
#include "vram.h"
#include "m6502.h"
#include "vmachine.h"
u8 a26AC = 0;
u8 a26X = 0;
u8 a26Y = 0;
u16 a26PC = 0;
u8 a26SR = 0;
u8 a26SP = 0;

#define ADC
#define AND
#define ASL
#define BCC
#define BCS
#define BEQ
#define BIT
#define BMI
#define BNE
#define BPL
#define BRK
#define BVC
#define BVS
#define CLC
#define CLD
#define CLI
#define CLV
#define CMP
#define CPX
#define CPY
#define DEC
#define DEX
#define DEY
#define EOR
#define INC
#define INX
#define INY
#define JMP
#define JSR
#define LDA
#define LDX
#define LDY
#define LSR
#define NOP
#define ORA
#define PHA
#define PHP
#define PLA
#define PLP
#define ROL
#define ROR
#define RTI
#define RTS
#define SBC
#define SEC
#define SED
#define SEI
#define STA
#define STX
#define STY
#define TAX
#define TAY
#define TSX
#define TXA
#define TSX
#define TYA

void _und()
{

}

void a26Execute()
{
	
}