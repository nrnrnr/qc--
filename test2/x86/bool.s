.globl main
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
initialize_continuations_l4:
proc_body_start_l3:
	movl $3,%eax
	call tryout
join_l11:
	movl $4,%eax
	call tryout
join_l8:
	movl $0,%eax
	ret
.section .pcmap_data
stackdata_l17:
.long 0
.section .pcmap
.long join_l11
.long frame_l18
.section .pcmap_data
frame_l18:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long stackdata_l17
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
.long join_l8
.long frame_l19
.section .pcmap_data
frame_l19:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long stackdata_l17
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
initialize_continuations_l23:
proc_body_start_l22:
	movl $1,%ecx
	movl %edx,8(%esp)
	movl %eax,%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne join_l29
join_l30:
	leal z,%ecx
	jmp join_l28
join_l29:
	leal nz,%ecx
	jmp join_l28
join_l28:
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
join_l27:
	movl $0,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
stackdata_l36:
.long 0
.section .pcmap
.long join_l27
.long frame_l37
.section .pcmap_data
frame_l37:
.long 0xfffffff0
.long 0x80000004
.long 0xfffffff8
.long stackdata_l36
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
