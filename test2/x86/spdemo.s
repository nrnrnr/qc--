.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 28(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $1,%ecx
	cmpl %ecx,%edx
	ja Ljoin_l18
Ljoin_l19:
	movl $10,%eax
	jmp Ljoin_l16
Ljoin_l18:
	movl $4,%ecx
	addl %ecx,%eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call atol
Ljoin_l17:
	jmp Ljoin_l16
Ljoin_l16:
	movl %eax,16(%esp)
	call sp
Ljoin_l13:
	leal fmt,%ecx
	movl %ebx,20(%esp)
	leal 28(%esp), %ebx
	movl %ebp,24(%esp)
	movl $-28,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	leal 28(%esp), %ecx
	movl $-24,%ebx
	addl %ebx,%ecx
	movl 16(%esp),%ebx
	movl %ebx,(%ecx)
	leal 28(%esp), %ecx
	movl $-20,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
Ljoin_l10:
	movl $0,%eax
	leal 28(%esp), %ecx
	leal 28(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 20(%esp),%ebx
	movl 24(%esp),%ebp
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l25:
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l26
.section .pcmap_data
Lframe_l26:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l25
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l13
.long Lframe_l27
.section .pcmap_data
Lframe_l27:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l25
.long 0x80000008
.long 0x80000005
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
.long 0xfffffff4
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l10
.long Lframe_l28
.section .pcmap_data
Lframe_l28:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l25
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0x80000000
.section .text
.section .data
fmt:
.byte 115
.byte 117
.byte 109
.byte 32
.byte 117
.byte 112
.byte 32
.byte 116
.byte 111
.byte 32
.byte 37
.byte 100
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 112
.byte 114
.byte 111
.byte 100
.byte 117
.byte 99
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
.section .text
sp:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l31:
Lproc_body_start_l30:
	movl $0,%edx
	movl %ecx,(%esp)
	leal 12(%esp), %ecx
	movl %ebx,4(%esp)
	movl $-4,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $1,%ecx
	leal 12(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl 4(%esp),%ebx
	leal 12(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	jmp sphelp
.section .text
.section .text
sphelp:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 24(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 24(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l43:
Lproc_body_start_l42:
	movl %ecx,4(%esp)
	movl $0,%ecx
	movl %eax,8(%esp)
	movl (%esp),%eax
	cmpl %ecx,%eax
	je Ljoin_l46
Ljoin_l47:
	movl $1,%ecx
	movl %edx,12(%esp)
	movl %eax,%edx
	subl %ecx,%edx
	movl %edx,%eax
	movl 4(%esp),%edx
	movl (%esp),%ecx
	addl %ecx,%edx
	leal 24(%esp), %ecx
	movl %ebx,16(%esp)
	movl $4,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 8(%esp),%ecx
	movl (%esp),%edx
	imull %edx,%ecx
	leal 24(%esp), %edx
	movl $8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	jmp sphelp
Ljoin_l46:
	movl 4(%esp),%eax
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	leal 24(%esp), %ecx
	movl %edi,20(%esp)
	movl $8,%edi
	addl %edi,%ecx
	movl 12(%esp),%edi
	movl %edi,(%ecx)
	movl 20(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .text
