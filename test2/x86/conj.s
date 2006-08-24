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
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
.Lbranch_target_l9:
.Lbranch_target_l14:
	movl $1,%edx
	cmpl %edx,%eax
	jne .Lbranch_target_l13
	jmp .Lbranch_target_l7
.Lbranch_target_l13:
	movl $0,%edx
	cmpl %edx,%eax
	jne .Lbranch_target_l8
.Lbranch_target_l7:
	movl $0,%eax
	jmp .Lbranch_target_l6
.Lbranch_target_l8:
	movl $999,%eax
.Lbranch_target_l6:
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
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	movl $0,%ecx
	movl %eax,16(%esp)
	movl %ecx,%eax
	call foo
.Lcall_successor_l33:
	movl $1,%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	call foo
.Lcall_successor_l30:
	movl $2,%ecx
	movl %eax,24(%esp)
	movl %ecx,%eax
	call foo
.Lcall_successor_l27:
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
.Lcall_successor_l24:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l39:
.long 0
.section .pcmap
.long .Lcall_successor_l33
.long .Lframe_l40
.section .pcmap_data
.Lframe_l40:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l39
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
.long .Lcall_successor_l30
.long .Lframe_l41
.section .pcmap_data
.Lframe_l41:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l39
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
.long .Lcall_successor_l27
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l39
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
.long .Lcall_successor_l24
.long .Lframe_l43
.section .pcmap_data
.Lframe_l43:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l39
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
