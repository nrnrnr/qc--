.globl lits8
.globl lits8lim
.globl lits64
.globl lits64lim
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
lits8:
.byte 255
.byte -1
.byte -128
.byte 129
.byte 129
.byte 129
.byte -127
lits8lim:
.align 8
lits64:
.long 0xffffffff
.long 0xffffffff
.long 0xffffffff
.long 0xffffffff
.long 0xffffffff
.long 0x7fffffff
.long 0x0
.long 0x80000000
.long 0x0
.long 0x80000000
.long 0x0
.long 0xa0000000
lits64lim:
