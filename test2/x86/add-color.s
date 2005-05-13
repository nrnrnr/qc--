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
hello:
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 44
.byte 32
.byte 119
.byte 111
.byte 114
.byte 108
.byte 100
.byte 33
.byte 10
.byte 0
bye:
.byte 98
.byte 121
.byte 101
.byte 33
.byte 10
.byte 0
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 8(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
.Lbranch_target_l14:
	movl $1,%eax
	cmpl %eax,%ecx
	ja .Lbranch_target_l10
.Lbranch_target_l9:
	leal hello,%eax
	jmp .Lbranch_target_l8
.Lbranch_target_l10:
	leal bye,%eax
.Lbranch_target_l8:
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l18:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l18
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
