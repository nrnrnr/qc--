.globl f
.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
f:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l5:
proc_body_start_l4:
	negl %eax
	movl $-99,%ecx
	movl %edx,(%esp)
	movl %ecx,%edx
	movl $0,%ecx
	movl %ebx,4(%esp)
	leal 8(%esp), %ebx
	addl %ecx,%ebx
	movl (%esp),%ecx
	movl %ecx,(%ebx)
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l13:
.long 0
.section .text
.section .text
main:
	leal -20(%esp), %esp
	movl $4,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
initialize_continuations_l16:
proc_body_start_l15:
	movl $-33,%eax
	call f
join_l23:
	leal fmt,%ecx
	movl %ebx,12(%esp)
	movl $-20,%ebx
	movl %ebp,16(%esp)
	leal 20(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-16,%ecx
	leal 20(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $-12,%eax
	leal 20(%esp), %ebp
	addl %eax,%ebp
	movl %edx,(%ebp)
	call printf
join_l20:
	movl $0,%eax
	movl 16(%esp),%ebp
	movl 12(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
stackdata_l29:
.long 0
.section .pcmap
.long join_l23
.long frame_l30
.section .pcmap_data
frame_l30:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l29
.long 0x80000008
.long 0x80000004
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
.long 0
.long 0
.section .pcmap
.long join_l20
.long frame_l31
.section .pcmap_data
frame_l31:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l29
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0xfffffffc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 100
.byte 117
.byte 97
.byte 108
.byte 45
.byte 114
.byte 101
.byte 115
.byte 117
.byte 108
.byte 116
.byte 32
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 51
.byte 51
.byte 44
.byte 32
.byte 45
.byte 57
.byte 57
.byte 41
.byte 10
.byte 0
