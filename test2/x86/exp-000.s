.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
q:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %eax,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	movl %ecx,(%esp)
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
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
Linitialize_continuations_l16:
Lproc_body_start_l15:
	movl $-559038737,%ecx
	movl $-4,%edx
	leal 20(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $2,%eax
	movl $-4,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %eax,8(%esp)
	movl %edx,%eax
	movl $0,%edx
	movl 8(%esp),%ecx
	divl %ecx, %eax
	call q
Ljoin_l23:
	leal fmt,%ecx
	movl $-20,%edx
	movl %ebx,12(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-16,%ecx
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l20:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 12(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 1
.long 0xfffffffc
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
.long 0x80000003
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
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 108
.byte 111
.byte 111
.byte 107
.byte 117
.byte 112
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 32
.byte 40
.byte 115
.byte 104
.byte 111
.byte 117
.byte 108
.byte 100
.byte 32
.byte 98
.byte 101
.byte 32
.byte 48
.byte 120
.byte 100
.byte 101
.byte 97
.byte 100
.byte 98
.byte 101
.byte 101
.byte 102
.byte 41
.byte 10
.byte 0
