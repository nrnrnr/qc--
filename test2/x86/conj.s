.globl main
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
.section .text
foo:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $1,%edx
	cmpl %edx,%eax
	jne .Ljoin_l13
.Ljoin_l18:
	jmp .Ljoin_l9
.Ljoin_l13:
	movl $0,%edx
	cmpl %edx,%eax
	jne .Ljoin_l8
.Ljoin_l17:
	jmp .Ljoin_l9
.Ljoin_l9:
	movl $0,%eax
	jmp .Ljoin_l7
.Ljoin_l8:
	movl $999,%eax
	jmp .Ljoin_l7
.Ljoin_l7:
	leal 4(%esp), %edx
	movl %ecx,(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l22:
.Lproc_body_start_l21:
	movl $0,%ecx
	movl %eax,16(%esp)
	movl %ecx,%eax
	call foo
.Ljoin_l35:
	movl $1,%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	call foo
.Ljoin_l32:
	movl $2,%ecx
	movl %eax,24(%esp)
	movl %ecx,%eax
	call foo
.Ljoin_l29:
	leal fmt,%ecx
	leal 32(%esp), %edx
	movl %eax,28(%esp)
	movl $-32,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Ljoin_l26:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l41:
.long 0
.section .pcmap
.long .Ljoin_l35
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l41
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l32
.long .Lframe_l43
.section .pcmap_data
.Lframe_l43:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l41
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l29
.long .Lframe_l44
.section .pcmap_data
.Lframe_l44:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l41
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Ljoin_l26
.long .Lframe_l45
.section .pcmap_data
.Lframe_l45:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l41
.long 0
.long 5
.long 0
.long 1
.long 0
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
