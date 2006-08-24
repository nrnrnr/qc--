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
p:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $1,%ecx
	movl $2,%edx
	movl %eax,(%esp)
	movl $0,%eax
	movl %eax,4(%esp)
	movl $0,%eax
.Lbranch_target_l8:
.Lbranch_target_l12:
	movl %eax,8(%esp)
	movl $2,%eax
	cmpl %eax,%edx
.Lbranch_target_l14:
	jae .Lbranch_target_l7
.L.Lbranch_target_l6_l13:
	movl 8(%esp),%eax
	jmp .Lbranch_target_l6
.Lbranch_target_l7:
	movl $3,%eax
	movl %eax,4(%esp)
	movl $4,%eax
.Lbranch_target_l6:
	addl %edx,%ecx
	movl 4(%esp),%edx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	movl %eax,8(%esp)
	call p
.Lcall_successor_l27:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l24:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l33:
.long 0
.section .pcmap
.long .Lcall_successor_l27
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l33
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l33
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 116
.byte 111
.byte 116
.byte 97
.byte 108
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
