.globl f
.globl main
.globl Cmm.global_area
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
Linitialize_continuations_l5:
Lproc_body_start_l4:
	negl %eax
	movl $-99,%ecx
	movl %edx,(%esp)
	movl %ecx,%edx
	leal 8(%esp), %ecx
	movl %ebx,4(%esp)
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%esp),%ebx
	movl %ebx,(%ecx)
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 20(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l16:
Lproc_body_start_l15:
	movl $-33,%eax
	call f
Ljoin_l23:
	leal fmt,%ecx
	movl %ebx,12(%esp)
	leal 20(%esp), %ebx
	movl %ebp,16(%esp)
	movl $-20,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	leal 20(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 20(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
Ljoin_l20:
	movl $0,%eax
	leal 20(%esp), %ecx
	leal 20(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 12(%esp),%ebx
	movl 16(%esp),%ebp
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l20
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
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
