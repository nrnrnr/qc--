.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
foo:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $1,%edx
	cmpl %edx,%eax
	jne Lconj_true_l13
Ljoin_l17:
	jmp Ljoin_l9
Lconj_true_l13:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l8
Ljoin_l18:
	jmp Ljoin_l9
Ljoin_l9:
	movl $0,%eax
	jmp Ljoin_l7
Ljoin_l8:
	movl $999,%eax
	jmp Ljoin_l7
Ljoin_l7:
	movl $0,%edx
	movl %ecx,(%esp)
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l19:
.long 0
.section .text
.section .text
main:
	leal -28(%esp), %esp
	movl $4,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l22:
Lproc_body_start_l21:
	movl $0,%eax
	call foo
Ljoin_l35:
	movl $1,%ecx
	movl %eax,16(%esp)
	movl %ecx,%eax
	call foo
Ljoin_l32:
	movl $2,%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	call foo
Ljoin_l29:
	leal fmt,%ecx
	movl $-28,%edx
	movl %ebx,24(%esp)
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-24,%ecx
	leal 28(%esp), %ebx
	addl %ecx,%ebx
	movl 16(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-20,%ecx
	leal 28(%esp), %ebx
	addl %ecx,%ebx
	movl 20(%esp),%ecx
	movl %ecx,(%ebx)
	movl $-16,%ecx
	leal 28(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l26:
	movl $0,%eax
	movl 24(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l41:
.long 0
.section .pcmap
.long Ljoin_l35
.long Lframe_l42
.section .pcmap_data
Lframe_l42:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l41
.long 0x80000008
.long 0x80000005
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
.long 0
.section .pcmap
.long Ljoin_l32
.long Lframe_l43
.section .pcmap_data
Lframe_l43:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l41
.long 0x80000008
.long 0x80000005
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
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long Ljoin_l29
.long Lframe_l44
.section .pcmap_data
Lframe_l44:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l41
.long 0x80000008
.long 0x80000005
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
.long 0xfffffff4
.long 0xfffffff8
.long 0
.section .pcmap
.long Ljoin_l26
.long Lframe_l45
.section .pcmap_data
Lframe_l45:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l41
.long 0x80000008
.long 0x80000005
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
.long 0
.section .text
.section .data
fmt:
.byte 102
.byte 111
.byte 111
.byte 40
.byte 48
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 102
.byte 111
.byte 111
.byte 40
.byte 49
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 102
.byte 111
.byte 111
.byte 40
.byte 50
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
