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
a:
.skip 20, 0
b:
.long 0xc0831271
.long 0x400921ca
fmt:
.byte 112
.byte 105
.byte 32
.byte 119
.byte 105
.byte 116
.byte 104
.byte 32
.byte 50
.byte 32
.byte 117
.byte 108
.byte 112
.byte 115
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 49
.byte 56
.byte 103
.byte 10
.byte 0
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
	movl %eax,12(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal fmt,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal b,%eax
	leal 16(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l14:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l15
.section .pcmap_data
.Lframe_l15:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l14
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
