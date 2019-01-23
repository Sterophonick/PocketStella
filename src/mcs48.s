.global a26_a
.global a26_x
.global a26_y
.global a26_pc //u16
.global a26_sp
.global memory //8192 bytes
.global a26_cyflag
.global addressing
.global op_byte1
.global op_byte2
.global op_byte3
.global op_addr //u16
.global op_table
.global a26_nz
.arm

.global execute

.include "src/m6502mac.s"

_xx: //Illegal
_00: //BRK impl
_01: //ORA X,ind
_05: //ORA zpg
_06: //ASL zpg
_08: //PHP impl
_09: //ORA #

_0A: //ASL A
	ldr r0,=a26_a
	ldrb r1,[r0]
	adds r1,r1,r1
	strb r1,[r0]
	ldr r2,=a26_nz
	mov r3,r1,asr#24
	orr r1,#1
	UpdateClock 2
	pop {r0-r6}
	bx lr

_0D: //ORA abs
_0E: //ASL abs
_10: //BPL rel
_11: //ORA ind,Y
_15: //ORA zpg,X
_16: //ASL zpg,X
_18: //CLC impl
	ldr r0,=a26_cyflag
	ldrb r1,[r0]
	bic r1,#1
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr
_19: //ORA abs,Y
_1D: //ORA abs,X
_1E: //ASL abs,X
_20: //JSR abs
_21: //AND X,ind
_24: //BIT zpg
_25: //AND zpg
_26: //ROL zpg
_28: //PLP impl
_29: //AND #
_2A: //ROL A
_2C: //BIT abs
_2D: //AND abs
	readmem_abs
	opAND_abs r0
	UpdateClock 2
	pop {r0-r6}
	bx lr
_2E: //ROL abs
_30: //BMI rel
_31: //AND ind,Y
_35: //AND zpg,X
_36: //ROL zpg,X

_38: //SEC impl
	ldr r0,=a26_cyflag
	ldrb r1,[r0]
	orr r1,#1
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr
	
_39: //AND abs,Y
_3D: //AND abs,X
_3E: //ROL abs,X
_40: //RTI implt
_41: //EOR X,ind
_45: //EOR zpg
_46: //LSR zpg
_48: //PHA impl
_49: //EOR #
_4A: //LSR A
_4C: //JMP abs
_4D: //EOR abs
_4E: //LSR abs
_50: //BVC rel
_51: //EOR ind,Y
_55: //EOR zpg,X
_56: //LSR zpg, X

_58: //CLI impl
	ldr r0,=a26_cyflag
	ldrb r1,[r0]
	bic r1,#4
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr

_59: //EOR abs,Y
_5D: //EOR abs,X
_5E: //LSR abs,X
_60: //RTS impl
_61: //ADC X,ind
_65: //ADC zpg
_66: //ROR zpg
_68: //PLA impl
_69: //ADC #
_6A: //ROR A
_6C: //JMP ind
_6D: //ADC abs
_6E: //ROR abs
_70: //BVS rel
_71: //ADC ind,Y
_75: //ADC zpg,X
_76: //ROR zpg,X

_78: //SEI impl
	ldr r0,=a26_cyflag
	ldrb r1,[r0]
	orr r1,#4
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr
	
_79: //ADC abs,Y
_7D: //ADC abs,X
_7E: //ROR abs,X
_81: //STA X,ind
_84: //STY zpg
_85: //STA zpg
_86: //STZ zpg

_88: //DEY impl
	ldr r0,=a26_y
	ldrb r1,[r0]
	sub r1,#1
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr	

_8A: //XA impl
_8C: //STY abs
_8D: //STA abs
_8E: //STX abs
_90: //BCC rel
_91: //STA ind,Y
_94: //STY zpg,X
_95: //STA zpg,X
_96: //STX zpg,Y
_98: //TYA impl
_99: //STA abs,Y

_9A: //TXS impl
	ldr r0,=a26_x
	ldrb r1,[r0]
	ldr r0,=a26_sp
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr

_9D: //STA abs,X
_A0: //LDY #
_A1: //LDA X,ind
_A2: //LDX #
_A4: //LDY zpg
_A5: //LDA zpg
_A6: //LDX zpg
_A8: //TAY impl
_A9: //LDA #
_AA: //TAX impl
_AC: //LDY abs
_AD: //LDA abs
_AE: //LDX abs
_B0: //BCS rel
_B1: //LDA ind,Y
_B4: //LDY zpg,X
_B5: //LDA zpg,X
_B6: //LDX zpg,Y

_B8: //CLV impl
	ldr r0,=a26_cyflag
	ldrb r1,[r0]
	orr r1,#0x40
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr
	
_B9: //LDA abs,Y
_BA: //TSX impl
_BC: //LDY abs,X
_BD: //LDA abs,X
_BE: //LDX abs,Y
_C0: //CPY #
_C1: //CMP X,ind
_C4: //CPY zpg
_C5: //CMP zpg
_C6: //DEC zpg
_C8: //INY impl
_C9: //CMP #
_CA: //DEC impl
_CC: //CPY abs
_CD: //CMP abs
_CE: //DEC abs
_D0: //BNE rel
_D1: //CMP ind,Y
_D5: //CMP zpg,X
_D6: //DEC zpg,X

_D8: //CLD impl
	ldr r0,=a26_cyflag
	ldrb r1,[r0]
	bic r1,#8
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr
	
_D9: //CMP abs,Y
_DD: //CMP abs,X
_DE: //DEC abs,X
_E0: //CPX #
_E1: //SBC X,ind
_E4: //CPX zpg
_E5: //SBC zpg
_E6: //INC zpg

_E8: //INX impl
	ldr r0,=a26_x
	ldrb r1,[r0]
	add r1,#1
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr
	
_E9: //SBC #

_EA: //NOP
	UpdateClock 2
	pop {r0-r6}
	bx lr
	
_EC: //CPX abs
_ED: //SBC abs
_EE: //INC abs
_F0: //BEQ rel
_F1: //SBC ind,Y
_F5: //SBC zpg,X
_F6: //INC zpg,X

_F8: //SED impl
	ldr r0,=a26_cyflag
	ldrb r1,[r0]
	orr r1,r1,#0x8
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r6}
	bx lr
	
_F9: //SBC abs,Y
_FD: //SBC abs,X
_FE: //INC abs,X

op_table:
	.word _00,_01,_xx,_xx,_xx,_05,_06,_xx,_08,_09,_0A,_xx,_xx,_0D,_0E,_xx
	.word _10,_11,_xx,_xx,_xx,_15,_16,_xx,_18,_19,_xx,_xx,_xx,_1D,_1E,_xx
	.word _20,_21,_xx,_xx,_24,_25,_26,_xx,_28,_29,_2A,_xx,_2C,_2D,_2E,_xx
	.word _30,_31,_xx,_xx,_xx,_35,_36,_xx,_38,_39,_xx,_xx,_xx,_3D,_3E,_xx
	.word _40,_41,_xx,_xx,_xx,_45,_46,_xx,_48,_49,_4A,_xx,_4C,_4D,_4E,_xx
	.word _50,_51,_xx,_xx,_xx,_55,_56,_xx,_58,_59,_xx,_xx,_xx,_5D,_5E,_xx
	.word _60,_61,_xx,_xx,_xx,_65,_66,_xx,_68,_69,_6A,_xx,_6C,_6D,_6E,_xx
	.word _70,_71,_xx,_xx,_xx,_75,_76,_xx,_78,_79,_xx,_xx,_xx,_7D,_7E,_xx
	.word _xx,_81,_xx,_xx,_84,_85,_86,_xx,_88,_xx,_8A,_xx,_8C,_8D,_8E,_xx
	.word _90,_91,_xx,_xx,_94,_95,_96,_xx,_98,_99,_9A,_xx,_xx,_9D,_xx,_xx
	.word _A0,_A1,_A2,_xx,_A4,_A5,_A6,_xx,_A8,_A9,_AA,_xx,_AC,_AD,_AE,_xx
	.word _B0,_B1,_xx,_xx,_B4,_B5,_B6,_xx,_B8,_B9,_BA,_xx,_BC,_BD,_BE,_xx
	.word _C0,_C1,_xx,_xx,_C4,_C5,_C6,_xx,_C8,_C9,_CA,_xx,_CC,_CD,_CE,_xx
	.word _D0,_D1,_xx,_xx,_xx,_D5,_D6,_xx,_D8,_D9,_xx,_xx,_xx,_DD,_DE,_xx
	.word _E0,_E1,_xx,_xx,_E4,_E5,_E6,_xx,_E8,_E9,_EA,_xx,_EC,_ED,_EE,_xx
	.word _F0,_F1,_xx,_xx,_xx,_F5,_F6,_xx,_F8,_F9,_xx,_xx,_xx,_FD,_FE,_xx
	
execute: //r0: opcode
	push {r0-r6}
	ldrb r0,[r0]
	ldr r1,=op_table
	mov r3,#4
	mul r4,r0,r3
	ldr r2,[r1,r4]
	bx r2
	bx lr
