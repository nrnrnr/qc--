.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	movl $4,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $3,%eax
	call tryout
Ljoin_l12:
	movl $4,%eax
	call tryout
Ljoin_l9:
	movl $0,%eax
	ret
.section .pcmap_data
Lstackdata_l18:
.long 0
.section .pcmap
.long Ljoin_l12
.long Lframe_l19
.section .pcmap_data
Lframe_l19:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long Lstackdata_l18
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long Lstackdata_l18
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .text
.section .text
tryout:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l23:
Lproc_body_start_l22:
	movl $1,%ecx
	movl %edx,8(%esp)
	movl %eax,%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l29
Ljoin_l30:
	leal z,%ecx
	jmp Ljoin_l28
Ljoin_l29:
	leal nz,%ecx
	jmp Ljoin_l28
Ljoin_l28:
	movl $-16,%edx
	movl %eax,12(%esp)
	leal 16(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-12,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	call printf
Ljoin_l27:
	movl $0,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l36:
.long 0
.section .pcmap
.long Ljoin_l27
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0xfffffff0
.long 0x80000004
.long 0xfffffff8
.long Lstackdata_l36
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .text
.section .data
nz:
.byte 37
.byte 100
.byte 32
.byte 108
.byte 111
.byte 119
.byte 32
.byte 98
.byte 105
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 110
.byte 111
.byte 110
.byte 122
.byte 101
.byte 114
.byte 111
.byte 10
.byte 0
z:
.byte 37
.byte 100
.byte 32
.byte 108
.byte 111
.byte 119
.byte 32
.byte 98
.byte 105
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 10
.byte 0
