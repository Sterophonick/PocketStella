#include "inc/6502macros.h"

.section .iwram,"ax",%progbits
.align 4
.code 32

_xx:
	
_E8:
  add a26_x,a26_x,#0x01000000
  mov 26_nz,a26_x,asr#24
  doCycles 2

.global op_table
op_table:


.global a26Execute
.type	a26Execute,function
a26Execute: