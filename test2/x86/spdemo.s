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
	movl $4,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	leal 28(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $1,%eax
	cmpl %eax,%ecx
	ja Ljoin_l18
Ljoin_l19:
	movl $10,%eax
	jmp Ljoin_l16
Ljoin_l18:
	movl $4,%eax
	addl %eax,%edx
	movl $-28,%eax
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call atol
Ljoin_l17:
	jmp Ljoin_l16
Ljoin_l16:
	movl %eax,16(%esp)
	call sp
Ljoin_l13:
	leal fmt,%ecx
	movl %ebx,20(%esp)
	movl $-28,%ebx
	movl %ebp,24(%esp)
	leal 28(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-24,%ecx
	leal 28(%esp), %ebp
	addl %ecx,%ebp
	movl 16(%esp),%ecx
	movl %ecx,(%ebp)
	movl $-20,%ecx
	leal 28(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $-16,%eax
	leal 28(%esp), %ebp
	addl %eax,%ebp
	movl %edx,(%ebp)
	call printf
Ljoin_l10:
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	leal 28(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
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
	movl $-4,%ecx
	movl %ebx,4(%esp)
	leal 12(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $1,%edx
	movl $0,%ebx
	leal 12(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 4(%esp),%ebx
	movl $-8,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	jmp sphelp
.section .text
.section .text
sphelp:
	leal -24(%esp), %esp
	movl $4,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 24(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l43:
Lproc_body_start_l42:
	movl %edx,4(%esp)
	movl $0,%edx
	movl %ecx,8(%esp)
	movl (%esp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l46
Ljoin_l47:
	movl $1,%edx
	movl %eax,12(%esp)
	movl %ecx,%eax
	subl %edx,%eax
	movl 4(%esp),%edx
	addl %ecx,%edx
	movl %ecx,(%esp)
	movl $4,%ecx
	movl %ebx,16(%esp)
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl 8(%esp),%edx
	movl (%esp),%ebx
	imull %ebx,%edx
	movl $8,%ebx
	leal 24(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	movl $0,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %esp
	jmp sphelp
Ljoin_l46:
	movl %eax,12(%esp)
	movl 4(%esp),%eax
	movl 8(%esp),%edx
	movl $8,%ecx
	movl %edi,20(%esp)
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl 12(%esp),%ecx
	movl %ecx,(%edi)
	movl 20(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .text
