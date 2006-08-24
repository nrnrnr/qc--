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
.section .data
truth:
.byte 116
.byte 114
.byte 117
.byte 116
.byte 104
.byte 0
falsehood:
.byte 102
.byte 97
.byte 108
.byte 115
.byte 101
.byte 104
.byte 111
.byte 111
.byte 100
.byte 0
fmt:
.byte 37
.byte 37
.byte 116
.byte 114
.byte 117
.byte 101
.byte 32
.byte 103
.byte 105
.byte 118
.byte 101
.byte 115
.byte 32
.byte 37
.byte 115
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 37
.byte 37
.byte 102
.byte 97
.byte 108
.byte 115
.byte 101
.byte 32
.byte 103
.byte 105
.byte 118
.byte 101
.byte 115
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
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
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
.Lbranch_target_l14:
.Lbranch_target_l13:
	leal truth,%ecx
.Lbranch_target_l11:
.Lbranch_target_l9:
	leal falsehood,%edx
.Lbranch_target_l8:
	movl %eax,12(%esp)
	leal fmt,%eax
	movl %eax,16(%esp)
	leal 32(%esp), %eax
	movl %eax,20(%esp)
	movl $-32,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l21:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l22
.section .pcmap_data
.Lframe_l22:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l21
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
