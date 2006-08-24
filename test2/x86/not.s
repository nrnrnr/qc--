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
ge:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
.Lbranch_target_l10:
.Lbranch_target_l14:
	cmpl %ecx,%eax
	jl .Lbranch_target_l7
.Lbranch_target_l9:
	movl $1,%eax
	leal 20(%esp), %ecx
	movl %ecx,12(%esp)
	movl $4,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %edx,8(%esp)
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
.Lbranch_target_l7:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl %ecx,(%esp)
	movl $4,%ecx
	movl %ecx,4(%esp)
	movl (%esp),%ecx
	movl %edx,8(%esp)
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	leal -4(%esp), %esp
	movl $987,%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	movl $33,%ecx
	leal 48(%esp), %edx
	movl %ecx,24(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	call ge
.Lcall_successor_l33:
	leal -4(%esp), %esp
	movl $33,%ecx
	movl %eax,28(%esp)
	movl %ecx,%eax
	movl $987,%ecx
	leal 48(%esp), %edx
	movl %ecx,32(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	call ge
.Lcall_successor_l30:
	leal -4(%esp), %esp
	movl $987,%ecx
	movl %eax,36(%esp)
	movl %ecx,%eax
	movl $987,%ecx
	leal 48(%esp), %edx
	movl %ecx,40(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	call ge
.Lcall_successor_l27:
	leal answer,%ecx
	leal 44(%esp), %edx
	movl %eax,40(%esp)
	movl $-44,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l24:
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
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
.long 0xffffffd4
.long 0xffffffe4
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
.long 0xffffffd4
.long 0xffffffe4
.long .Lstackdata_l39
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l27
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe4
.long .Lstackdata_l39
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0xffffffec
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l43
.section .pcmap_data
.Lframe_l43:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffe4
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
answer:
.byte 57
.byte 56
.byte 55
.byte 32
.byte 62
.byte 61
.byte 32
.byte 51
.byte 51
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 32
.byte 51
.byte 51
.byte 32
.byte 62
.byte 61
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 62
.byte 61
.byte 32
.byte 57
.byte 56
.byte 55
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
