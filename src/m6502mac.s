.macro opLDX_abs x

.endm

.macro opLDA_abs x

.endm

.macro opLDY_abs x

.endm

.macro UpdateClock x

.endm

.macro opJSR_ind x

.endm

.macro opROL_abs x

.endm

.macro opAND_abs x
	ldr r1,=a26_a
	ldrb r2,[r1]
	ldr r3,=memory
	add r3,\x
	ldrb r3,[r3]
	and r4,r1,r2
	strb r4,[r1]
.endm

.macro readmem_abs
	ldr r0,=memory
	ldr r1,=a26_pc
	ldrb r2,[r0,r1]
	mov r0,r2
.endm
