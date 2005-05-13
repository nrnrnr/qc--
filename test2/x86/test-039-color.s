.globl sp1
.globl sp2
.globl sp3
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
sp1:
	leal -12(%esp), %esp
	movl %eax,(%esp)
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %ebx,8(%esp)
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
.Lbranch_target_l21:
	movl $0,%ecx
	movl (%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l17
.Lbranch_target_l15:
	movl $1,%ecx
	movl (%esp),%eax
	subl %ecx,%eax
	call sp1
.Lcall_successor_l14:
	movl (%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	imull %ecx,%edx
	leal 12(%esp), %ebx
	movl $0,%ecx
	addl %ecx,%ebx
	movl 4(%esp),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
.Lbranch_target_l17:
	movl $0,%eax
	movl $1,%edx
	leal 12(%esp), %ebx
	movl $0,%ecx
	addl %ecx,%ebx
	movl 4(%esp),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l23:
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l24
.section .pcmap_data
.Lframe_l24:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff8
.long .Lstackdata_l23
.long 1
.long 3
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .text
sp2:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l26:
.Lproc_body_start_l25:
	movl $1,%ecx
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
	jmp sp2_help
.section .text
sp2_help:
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
.Linitialize_continuations_l37:
.Lproc_body_start_l36:
.Lbranch_target_l46:
	movl $1,%ebx
	movl (%esp),%eax
	cmpl %ebx,%eax
	je .Lbranch_target_l42
.Lbranch_target_l40:
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
	jmp sp2_help
.Lbranch_target_l42:
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
sp3:
	leal -8(%esp), %esp
	movl %eax,%ecx
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l52:
.Lproc_body_start_l51:
	movl $1,%eax
	movl $1,%edx
loop:
.Lbranch_target_l60:
	movl $1,%edi
	cmpl %edi,%ecx
	je .Lbranch_target_l56
.Lbranch_target_l54:
	addl %ecx,%eax
	imull %ecx,%edx
	movl $1,%edi
	subl %edi,%ecx
	jmp loop
.Lbranch_target_l56:
	leal 8(%esp), %edi
	movl $0,%ecx
	addl %ecx,%edi
	movl 4(%esp),%ecx
	movl %ecx,(%edi)
	movl (%esp),%edi
	leal 8(%esp), %esp
	ret
.section .text
sptest1:
	leal -40(%esp), %esp
	movl %eax,%ecx
	leal 40(%esp), %edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,24(%esp)
	leal 40(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,20(%esp)
	leal 40(%esp), %eax
	movl (%eax),%eax
	movl %eax,36(%esp)
	movl %ebp,32(%esp)
	movl %ebx,28(%esp)
.Linitialize_continuations_l66:
.Lproc_body_start_l65:
	movl 20(%esp),%eax
	call *%ecx
.Lcall_successor_l73:
	leal fmt,%ecx
	leal 40(%esp), %ebp
	movl $-40,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	leal 40(%esp), %ecx
	movl $-36,%ebx
	addl %ebx,%ecx
	movl 24(%esp),%ebx
	movl %ebx,(%ecx)
	leal 40(%esp), %ecx
	movl $-32,%ebx
	addl %ebx,%ecx
	movl 20(%esp),%ebx
	movl %ebx,(%ecx)
	leal 40(%esp), %ecx
	movl $-28,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l70:
	leal 40(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl 32(%esp),%ebp
	movl 28(%esp),%ebx
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l78:
.long 0
.section .pcmap
.long .Lcall_successor_l73
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l78
.long 2
.long 5
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffff4
.long 0
.long 0xfffffff0
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l70
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l78
.long 2
.long 5
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
sptest:
	leal -12(%esp), %esp
	movl %eax,(%esp)
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l82:
.Lproc_body_start_l81:
	leal -8(%esp), %esp
	leal sp1,%eax
	leal sp1lbl,%ecx
	leal 20(%esp), %esi
	movl $-20,%edx
	addl %edx,%esi
	movl %ecx,(%esi)
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call sptest1
.Lcall_successor_l92:
	leal -8(%esp), %esp
	leal sp2,%eax
	leal sp2lbl,%ecx
	leal 20(%esp), %esi
	movl $-20,%edx
	addl %edx,%esi
	movl %ecx,(%esi)
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call sptest1
.Lcall_successor_l89:
	leal -8(%esp), %esp
	leal sp3,%eax
	leal sp3lbl,%ecx
	leal 20(%esp), %esi
	movl $-20,%edx
	addl %edx,%esi
	movl %ecx,(%esi)
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call sptest1
.Lcall_successor_l86:
	leal 12(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl 4(%esp),%esi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l97:
.long 0
.section .pcmap
.long .Lcall_successor_l92
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l97
.long 1
.long 1
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l89
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l97
.long 1
.long 1
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l86
.long .Lframe_l100
.section .pcmap_data
.Lframe_l100:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l97
.long 1
.long 1
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 0
.long 0
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
	movl %eax,(%esp)
.Linitialize_continuations_l102:
.Lproc_body_start_l101:
	movl $1,%eax
	call sptest
.Lcall_successor_l112:
	movl $4,%eax
	call sptest
.Lcall_successor_l109:
	movl $10,%eax
	call sptest
.Lcall_successor_l106:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l118:
.long 0
.section .pcmap
.long .Lcall_successor_l112
.long .Lframe_l119
.section .pcmap_data
.Lframe_l119:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l118
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l109
.long .Lframe_l120
.section .pcmap_data
.Lframe_l120:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l118
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l106
.long .Lframe_l121
.section .pcmap_data
.Lframe_l121:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l118
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .data
sp1lbl:
.byte 115
.byte 112
.byte 49
.byte 0
sp2lbl:
.byte 115
.byte 112
.byte 50
.byte 0
sp3lbl:
.byte 115
.byte 112
.byte 51
.byte 0
fmt:
.byte 37
.byte 115
.byte 40
.byte 37
.byte 100
.byte 41
.byte 32
.byte 61
.byte 61
.byte 32
.byte 40
.byte 37
.byte 100
.byte 44
.byte 32
.byte 37
.byte 100
.byte 41
.byte 10
.byte 0
