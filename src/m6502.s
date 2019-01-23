.global a2600_a
.global a2600_x
.global a2600_y
.global a2600_pc //u16
.global a2600_sp
.global memory //8192 bytes
.global a2600_syflag
.global addressing
.global op_byte1
.global op_byte2
.global op_byte3
.global op_addr //u16
.global op_table
.global a26_nz
.global stack
.arm

.global execute

.include "src/m6502mac.s"

_xx: //Illegal
	UpdateClock 3
	pop {r0-r10}
	bx lr

_00: //BRK impl
_01: //ORA X,ind
_05: //ORA zpg
_06: //ASL zpg

_08: //PHP impl
	//opPUSH a2600_pc
	UpdateClock 3
	
_09: //ORA #

_0A: //ASL A

	UpdateClock 2
	pop {r0-r10}
	bx lr

_0D: //ORA abs
_0E: //ASL abs
_10: //BPL rel
_11: //ORA ind,Y
_15: //ORA zpg,X
_16: //ASL zpg,X

_18: //CLC impl
	bic a26_flag,a26_flag,#C
	UpdateClock 2
	pop {r0-r10}
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
	opPOP a2600_pc
	UpdateClock 3
	pop {r0-r10}
	bx lr

_29: //AND #
_2A: //ROL A
_2C: //BIT abs
_2D: //AND abs
	readmem_abs
	opAND_abs r0
	UpdateClock 2
	pop {r0-r10}
	bx lr
_2E: //ROL abs
_30: //BMI rel
_31: //AND ind,Y
_35: //AND zpg,X
_36: //ROL zpg,X

_38: //SEC impl
	ldr r0,=a2600_pc
	ldrb r1,[r0]
	orr r1,#1
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r10}
	bx lr
	
_39: //AND abs,Y
_3D: //AND abs,X
_3E: //ROL abs,X
_40: //RTI implt
_41: //EOR X,ind
_45: //EOR zpg
_46: //LSR zpg

_48: //PHA impl
	opPUSH a2600_a
	UpdateClock 3
	pop {r0-r10}
	bx lr

_49: //EOR #
_4A: //LSR A

_4C: //JMP abs
	ldr r0,=op_addr
	ldrh r1,[r0]
	ldr r0,=a2600_pc
	ldrh r2,=#0xFFFF
	and r1,r2
	strh r1,[r0]
	UpdateClock 3
	pop {r0-r10}
	bx lr
	
.pool

_4D: //EOR abs
	ldr r0,=memory
	ldr r1,=byte2
	ldrb r1,[r1]
	ldrb r1,[r0,r1]
	ldr r0,=a2600_a
	ldrb r2,[r0]
	eor r3,r1,r2
	and r3,#255
	strb r3,[r0]
	UpdateClock 3
	pop {r0-r10}
	bx lr	

_4E: //LSR abs
_50: //BVC rel
_51: //EOR ind,Y
_55: //EOR zpg,X
_56: //LSR zpg, X

_58: //CLI impl
	bic a26_flag,a26_flag,#I
	UpdateClock 2
	pop {r0-r10}
	bx lr

_59: //EOR abs,Y
_5D: //EOR abs,X
_5E: //LSR abs,X
_60: //RTS impl
_61: //ADC X,ind
_65: //ADC zpg
_66: //ROR zpg

_68: //PLA impl
	opPOP a2600_a
	UpdateClock 4
	pop {r0-r10}
	bx lr

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
	orr a26_flag,a26_flag,#I
	UpdateClock 2
	pop {r0-r10}
	bx lr
	
_79: //ADC abs,Y
_7D: //ADC abs,X
_7E: //ROR abs,X
_81: //STA X,ind
_84: //STY zpg
_85: //STA zpg
_86: //STZ zpg

_88: //DEY impl
	sub a26_y,a26_y,#0x01000000
	UpdateClock 2
	pop {r0-r10} 
	bx lr

_8A: //TXA impl
	mov a26_a,a26_x
	UpdateClock 2
	pop {r0-r10}
	bx lr

_8C: //STY abs
_8D: //STA abs
_8E: //STX abs
	
	//UpdateClock 2
	pop {r0-r10}
	bx lr

_90: //BCC rel
	ldr r0,=a2600_pc
	ldrb r1,[r0]
	tst r1,#0
	ldreq r0,=a2600_pc
	ldreqb r1,[r0]
	ldreq r2,=op_byte2
	ldreqsb r3,[r2]
	addeq r1,r1,r3
	streqh r1,[r0]
	//UpdateClock 2
	pop {r0-r10}
	bx lr

_91: //STA ind,Y
_94: //STY zpg,X
_95: //STA zpg,X
_96: //STX zpg,Y

_98: //TYA impl
	mov a26_a,a26_y
	UpdateClock 2
	pop {r0-r10}
	bx lr

_99: //STA abs,Y

_9A: //TXS impl
	ldr r0,=a2600_x
	ldrb r1,[r0]
	ldr r0,=a2600_sp
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r10}
	bx lr

_9D: //STA abs,X
_A0: //LDY #
_A1: //LDA X,ind
_A2: //LDX #
_A4: //LDY zpg
_A5: //LDA zpg
_A6: //LDX zpg

_A8: //TAY impl
	mov a26_y,a26_a
	UpdateClock 2
	pop {r0-r10}
	bx lr

_A9: //LDA #

_AA: //TAX impl
	mov a26_y,a26_a
	eor a26_flag,#N
	eor a26_flag,#Z
	UpdateClock 2
	pop {r0-r10}
	bx lr
	
_AC: //LDY abs
_AD: //LDA abs
_AE: //LDX abs

_B0: //BCS rel
	ldr r0,=a2600_pc
	ldrb r1,[r0]
	tst r1,#1
	ldreq r0,=a2600_pc
	ldreqb r1,[r0]
	ldreq r2,=op_byte2
	ldreqsb r3,[r2]
	addeq r1,r1,r3
	streqh r1,[r0]
	//UpdateClock 2
	pop {r0-r10}
	bx lr

_B1: //LDA ind,Y
_B4: //LDY zpg,X
_B5: //LDA zpg,X
_B6: //LDX zpg,Y

_B8: //CLV impl
	bic a26_flag,a26_flag,#V
	UpdateClock 2
	pop {r0-r10}
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
	add a26_y,a26_y,#0x01000000
	UpdateClock 2
	pop {r0-r10}
	bx lr
	
_C9: //CMP #

_CA: //DEX impl
	sub a26_x,a26_x,#0x01000000
	UpdateClock 2
	pop {r0-r10}
	bx lr
	
	
_CC: //CPY abs
_CD: //CMP abs

_CE: //DEC abs
	ldr r0,=op_addr
	ldrh r1,[r0]
	ldr r0,=memory
	ldrb r2,[r0,r1]
	lsl r2,#16
	sub r2,#1<<16
	strb r2,[r0,r1]
	UpdateClock 3
	pop {r0-r10}
	bx lr	

_D0: //BNE rel
	ldr r0,=a2600_pc
	ldrb r1,[r0]
	tst r1,#1
	ldrne r0,=a2600_pc
	ldrneb r1,[r0]
	ldrne r2,=op_byte2
	ldrnesb r3,[r2]
	addne r1,r1,r3
	strneh r1,[r0]
	//UpdateClock 2
	pop {r0-r10}
	bx lr

_D1: //CMP ind,Y
_D5: //CMP zpg,X
_D6: //DEC zpg,X

_D8: //CLD impl
	bic a26_flag,a26_flag,#D
	UpdateClock 2
	pop {r0-r10}
	bx lr
	
_D9: //CMP abs,Y
_DD: //CMP abs,X

_DE: //DEC abs,X

	UpdateClock 3
	pop {r0-r10}
	bx lr	

_E0: //CPX #
_E1: //SBC X,ind
_E4: //CPX zpg
_E5: //SBC zpg

_E6: //INC zpg

	UpdateClock 5
	pop {r0-r10}
	bx lr	

_E8: //INX impl
	add a26_x,a26_x,#0x01000000
	cmp a26_x,#0
	orr a26_flag,#Z
	cmp a26_x,#255
	orr a26_flag,#N
	UpdateClock 2
	pop {r0-r10}
	bx lr
	
_E9: //SBC #

_EA: //NOP
	UpdateClock 2
	pop {r0-r10}
	bx lr
	
_EC: //CPX abs
_ED: //SBC abs
_EE: //INC abs
_F0: //BEQ rel
_F1: //SBC ind,Y
_F5: //SBC zpg,X
_F6: //INC zpg,X

_F8: //SED impl
	ldr r0,=a2600_pc
	ldrb r1,[r0]
	orr r1,r1,#0x8
	strb r1,[r0]
	UpdateClock 2
	pop {r0-r10}
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
	push {r0-r10}
	ldrb r0,[r0]
	ldr r1,=op_table
	mov r3,#4
	mul r4,r0,r3
	ldr r2,[r1,r4]
	
	ldr r4,=a2600_pc
	ldrh r4,[r4]
	lsl r4,#16
	
	ldr r5,=a2600_a
	ldrb r5,[r5]
	lsl r5,#24
	
	ldr r6,=a2600_x
	ldrb r6,[r5]
	lsl r6,#24	
	
	ldr r7,=a2600_y
	ldrb r7,[r7]
	lsl r7,#24
	
	ldr r8,=cycles
	ldrb r8,[r8]
	lsl r8,#24
	
	ldr r9,=memory
		
	ldr r10,=a2600_syflags
	ldrb r10,[r10]
	lsl r10,#24
	
	ldr r3,=stack
			
	bx r2
	bx lr
