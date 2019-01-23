a26_pc .req r4
a26_mem .req r9
a26_a .req r5
a26_x .req r6
a26_y .req r7
a26_flag .req r10
a26_cyc .req r8
a26_stack .req r3

.equ C, 0b00000001  
.equ Z, 0b00000010
.equ I, 0b00000100
.equ D, 0b00001000
.equ B, 0b00010000
.equ R, 0b00100000
.equ V, 0b01000000
.equ N, 0b10000000

.macro opLDX_abs x

.endm

.macro opLDA_abs x

.endm

.macro opLDY_abs x

.endm

.macro UpdateClock x
	
	pop {r0-r10}
	bx lr

.endm

.macro opJSR_ind x

.endm

.macro opROL_abs x

.endm

.macro opAND_abs x

.endm

.macro readmem_abs

.endm

.macro opPUSH value

.endm

.macro opPOP value

.endm

.macro setIMM
.endm

.macro setZPG
.endm

.macro setZPGX
.endm

.macro setABS
.endm

.macro setABSX
.endm

.macro setABSY
.endm

.macro setINX
.endm

.macro setINY
.endm
