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
main:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $3,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	call tryout
.Ljoin_l12:
	movl $4,%eax
	call tryout
.Ljoin_l9:
	movl $0,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l18:
.long 0
.section .pcmap
.long .Ljoin_l12
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l18
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l9
.long .Lframe_l20
.section .pcmap_data
.Lframe_l20:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l18
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .text
tryout:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l23:
.Lproc_body_start_l22:
	movl $1,%edx
	movl %eax,8(%esp)
	andl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne .Ljoin_l29
.Ljoin_l30:
	leal z,%eax
	jmp .Ljoin_l28
.Ljoin_l29:
	leal nz,%eax
	jmp .Ljoin_l28
.Ljoin_l28:
	leal 20(%esp), %edx
	movl %eax,12(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	movl %ecx,16(%esp)
	call printf
.Ljoin_l27:
	leal 20(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l36:
.long 0
.section .pcmap
.long .Ljoin_l27
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l36
.long 0
.long 2
.long 0
.long 1
.long 0
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
