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
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $3,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	call tryout
.Lcall_successor_l11:
	movl $4,%eax
	call tryout
.Lcall_successor_l8:
	movl $0,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l17:
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l18
.section .pcmap_data
.Lframe_l18:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l17
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l17
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
.Linitialize_continuations_l21:
.Lproc_body_start_l20:
.Lbranch_target_l29:
.Lbranch_target_l33:
	movl $1,%edx
	movl %eax,8(%esp)
	andl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne .Lbranch_target_l28
.Lbranch_target_l27:
	leal z,%eax
	jmp .Lbranch_target_l26
.Lbranch_target_l28:
	leal nz,%eax
.Lbranch_target_l26:
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
.Lcall_successor_l25:
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
.long .Lcall_successor_l25
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
