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
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $0,%ecx
	leal 8(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,4(%esp)
	call exit
.Lcall_successor_l6:
	int $3
.section .pcmap_data
.Lstackdata_l13:
.long 0
.section .pcmap
.long .Lcall_successor_l6
.long .Lframe_l14
.section .pcmap_data
.Lframe_l14:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l13
.long 4
.long 0
.long 0
.long 1
.long 11
.long 0
.long 10
.long 0
.long 9
.long 0
.long 7
.long 0
.long 0
.section .text
