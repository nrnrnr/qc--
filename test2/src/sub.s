.globl f
.globl main
.section .data
Cmm.ref_to_global_area:
/* reference to global-register signature */
.long Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .text
f:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%edx
	movl (%ecx),%edx
initialize_continuations_l4:
proc_body_start_l3:
	negl %eax
	movl $-99,%ecx
	movl %edx,(%esp)
	movl $-99,%edx
	movl $0,%ecx
	leal 8(%esp), %ecx
	leal 8(%esp), %ecx
	addl $0,%ecx
	movl %ebx,4(%esp)
	movl (%esp),%ebx
	movl %ebx,(%ecx)
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l12:
.long 0
.section .text
.section .text
main:
	leal -16(%esp), %esp
	movl $4,%ecx
	leal 16(%esp), %ecx
	leal 16(%esp), %ecx
	addl $4,%ecx
	movl 20(%esp),%ecx
	movl 20(%esp),%ecx
	movl $8,%ecx
	leal 16(%esp), %ecx
	leal 16(%esp), %ecx
	addl $8,%ecx
	movl 24(%esp),%ecx
	movl 24(%esp),%ecx
initialize_continuations_l16:
proc_body_start_l15:
	movl $-33,%ecx
	movl $-33,%eax
	call f
join_l23:
	leal fmt,%ecx
	movl %ebx,12(%esp)
	movl $-16,%ebx
	leal 16(%esp), %ebx
	leal 16(%esp), %ebx
	addl $-16,%ebx
	movl %ecx,(%ebx)
	movl $-12,%ecx
	leal 16(%esp), %ecx
	leal 16(%esp), %ecx
	addl $-12,%ecx
	movl %eax,(%ecx)
	movl $-8,%eax
	leal 16(%esp), %eax
	leal 16(%esp), %eax
	addl $-8,%eax
	movl %edx,(%eax)
	call printf
join_l20:
	movl $0,%eax
	movl $0,%eax
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
stackdata_l29:
.long 0
.section .pcmap
.long join_l23
.long frame_l30
.section .pcmap_data
frame_l30:
.long 0xfffffff0
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
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l29
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffffc
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
