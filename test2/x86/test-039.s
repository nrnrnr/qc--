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
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l10:
.Lproc_body_start_l9:
	movl $0,%edx
	cmpl %edx,%eax
	je .Ljoin_l16
.Ljoin_l17:
	movl $1,%edx
	movl %edi,(%esp)
	movl %eax,%edi
	subl %edx,%edi
	movl %eax,4(%esp)
	movl %edi,%eax
	movl %ecx,8(%esp)
	call sp1
.Ljoin_l14:
	movl 4(%esp),%ecx
	addl %ecx,%eax
	imull %ecx,%edx
	leal 20(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl 8(%esp),%edi
	movl %edi,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.Ljoin_l16:
	movl $0,%eax
	movl $1,%edx
	movl %ecx,8(%esp)
	leal 20(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %edi,(%esp)
	movl 16(%esp),%edi
	addl %edi,%ecx
	movl 8(%esp),%edi
	movl %edi,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l22:
.long 0
.section .pcmap
.long .Ljoin_l14
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l22
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .text
sp2:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l26:
.Lproc_body_start_l25:
	movl $1,%ecx
	movl %edx,(%esp)
	leal 24(%esp), %edx
	movl %edx,4(%esp)
	movl $-4,%edx
	movl %edx,8(%esp)
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	leal 24(%esp), %ecx
	movl %edx,16(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	jmp sp2_help
.section .text
sp2_help:
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 48(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l38:
.Lproc_body_start_l37:
	movl %edx,4(%esp)
	movl $1,%edx
	cmpl %edx,%eax
	je .Ljoin_l41
.Ljoin_l42:
	movl $1,%edx
	movl %edx,8(%esp)
	movl %eax,%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	subl %ecx,%edx
	movl %eax,16(%esp)
	movl %edx,%eax
	movl (%esp),%edx
	movl 16(%esp),%ecx
	addl %ecx,%edx
	movl %edx,20(%esp)
	leal 48(%esp), %edx
	movl %edx,24(%esp)
	movl $4,%edx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	movl 28(%esp),%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edx
	movl 16(%esp),%ecx
	imull %ecx,%edx
	leal 48(%esp), %ecx
	movl %edx,32(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %esp
	jmp sp2_help
.Ljoin_l41:
	movl (%esp),%eax
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	leal 48(%esp), %ecx
	movl %ecx,36(%esp)
	movl $8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edi,44(%esp)
	movl 40(%esp),%edi
	addl %edi,%ecx
	movl 12(%esp),%edi
	movl %edi,(%ecx)
	movl 44(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .text
sp3:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l52:
.Lproc_body_start_l51:
	movl $1,%edx
	movl %ecx,(%esp)
	movl $1,%ecx
	jmp loop
loop:
	movl %ecx,4(%esp)
	movl $1,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l54
.Ljoin_l55:
	addl %eax,%edx
	movl 4(%esp),%ecx
	imull %eax,%ecx
	movl %edi,16(%esp)
	movl $1,%edi
	subl %edi,%eax
	jmp .Ljoin_l59
.Ljoin_l59:
	movl 16(%esp),%edi
	jmp loop
.Ljoin_l54:
	movl %edx,%eax
	movl 4(%esp),%edx
	leal 20(%esp), %ecx
	movl %ecx,8(%esp)
	movl $0,%ecx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	addl %edi,%ecx
	movl (%esp),%edi
	movl %edi,(%ecx)
	movl 16(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .text
sptest1:
	leal -52(%esp), %esp
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %ecx,20(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 52(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l66:
.Lproc_body_start_l65:
	movl %eax,24(%esp)
	movl %ecx,%eax
	movl %edx,32(%esp)
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	call *%ecx
.Ljoin_l73:
	leal fmt,%ecx
	movl %edi,36(%esp)
	leal 52(%esp), %edi
	movl %edi,40(%esp)
	movl $-52,%edi
	movl %edi,44(%esp)
	movl 40(%esp),%edi
	movl %esi,48(%esp)
	movl 44(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 52(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl 20(%esp),%esi
	movl %esi,(%edi)
	leal 52(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl 28(%esp),%esi
	movl %esi,(%edi)
	leal 52(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 52(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	call printf
.Ljoin_l70:
	leal 52(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%esi
	movl 36(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l78:
.long 0
.section .pcmap
.long .Ljoin_l73
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x8000000c
.long 0xffffffcc
.long 0xffffffec
.long .Lstackdata_l78
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0xffffffe0
.long 0xffffffe8
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l70
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x8000000c
.long 0xffffffcc
.long 0xffffffec
.long .Lstackdata_l78
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffffc
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
sptest:
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l83:
.Lproc_body_start_l82:
	leal -8(%esp), %esp
	leal sp1,%edx
	movl %eax,8(%esp)
	movl %edx,%eax
	leal sp1lbl,%edx
	movl %edi,12(%esp)
	leal 32(%esp), %edi
	movl %edi,16(%esp)
	movl $-32,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 32(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	movl 8(%esp),%esi
	movl %esi,(%edi)
	movl %ecx,28(%esp)
	call sptest1
.Ljoin_l93:
	leal -8(%esp), %esp
	leal sp2,%eax
	leal sp2lbl,%edi
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 32(%esp), %edi
	movl $-28,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	call sptest1
.Ljoin_l90:
	leal -8(%esp), %esp
	leal sp3,%eax
	leal sp3lbl,%edi
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 32(%esp), %edi
	movl $-28,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	call sptest1
.Ljoin_l87:
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l98:
.long 0
.section .pcmap
.long .Ljoin_l93
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l98
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0xffffffe8
.long 0
.section .pcmap
.long .Ljoin_l90
.long .Lframe_l100
.section .pcmap_data
.Lframe_l100:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l98
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0xffffffe8
.long 0
.section .pcmap
.long .Ljoin_l87
.long .Lframe_l101
.section .pcmap_data
.Lframe_l101:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l98
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l104:
.Lproc_body_start_l103:
	movl $1,%eax
	movl %ecx,(%esp)
	call sptest
.Ljoin_l114:
	movl $4,%eax
	call sptest
.Ljoin_l111:
	movl $10,%eax
	call sptest
.Ljoin_l108:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l120:
.long 0
.section .pcmap
.long .Ljoin_l114
.long .Lframe_l121
.section .pcmap_data
.Lframe_l121:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l120
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l111
.long .Lframe_l122
.section .pcmap_data
.Lframe_l122:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l120
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l108
.long .Lframe_l123
.section .pcmap_data
.Lframe_l123:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l120
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
