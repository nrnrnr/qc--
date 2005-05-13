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
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 32(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 32(%esp), %edx
	movl (%edx),%edx
	movl %edx,28(%esp)
	movl %edi,24(%esp)
	movl %esi,20(%esp)
	movl %ebp,16(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
.Lbranch_target_l22:
	movl $1,%edx
	cmpl %edx,%ecx
	ja .Lbranch_target_l18
.Lbranch_target_l14:
	movl $10,%ebp
	jmp .Lbranch_target_l13
.Lbranch_target_l18:
	movl $4,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call atol
.Lcall_successor_l17:
	movl %eax,%ebp
.Lbranch_target_l13:
	movl %ebp,%eax
	call sp
.Lcall_successor_l12:
	leal fmt,%ecx
	leal 32(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 32(%esp), %ecx
	movl $-28,%esi
	addl %esi,%ecx
	movl %ebp,(%ecx)
	leal 32(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal 32(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l9:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%edi
	movl 20(%esp),%esi
	movl 16(%esp),%ebp
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l25:
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l26
.section .pcmap_data
.Lframe_l26:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l25
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l12
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l25
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l25
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 9
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 115
.byte 117
.byte 109
.byte 32
.byte 117
.byte 112
.byte 32
.byte 116
.byte 111
.byte 32
.byte 37
.byte 100
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 112
.byte 114
.byte 111
.byte 100
.byte 117
.byte 99
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
.section .text
sp:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l30:
.Lproc_body_start_l29:
	movl $0,%ecx
	leal 12(%esp), %edi
	movl $-4,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $1,%ecx
	leal 12(%esp), %edi
	movl $0,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl (%esp),%edi
	leal 12(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	jmp sphelp
.section .text
.section .text
sphelp:
	leal -16(%esp), %esp
	movl %eax,(%esp)
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %ebp,4(%esp)
	movl %ebx,8(%esp)
.Linitialize_continuations_l41:
.Lproc_body_start_l40:
.Lbranch_target_l50:
	movl $0,%ebx
	movl (%esp),%eax
	cmpl %ebx,%eax
	je .Lbranch_target_l46
.Lbranch_target_l44:
	movl $1,%ebx
	movl (%esp),%eax
	subl %ebx,%eax
	movl (%esp),%ebx
	addl %ebx,%ecx
	leal 16(%esp), %ebp
	movl $4,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl (%esp),%ecx
	imull %ecx,%edx
	leal 16(%esp), %ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 4(%esp),%ebp
	movl 8(%esp),%ebx
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	jmp sphelp
.Lbranch_target_l46:
	movl %ecx,%eax
	leal 16(%esp), %ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl 12(%esp),%ebx
	movl %ebx,(%ecx)
	movl 4(%esp),%ebp
	movl 8(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .text
