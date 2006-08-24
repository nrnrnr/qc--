.globl words
.globl wordlist
.globl x
.globl y
.globl main
.globl f
.globl g
.globl h
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.section .data
.align 4
words:
.long 1
.long 2
.long 3
.byte 105
.byte 102
.byte 0
.skip 3, 0
.skip 2, 0
.long 4
.long 5
.skip 4, 0
.byte 102
.byte 111
.byte 114
.skip 3, 0
.skip 2, 0
.long 6
.long 7
.long 8
.byte 101
.byte 108
.byte 115
.byte 101
.byte 0
.skip 1, 0
.skip 2, 0
.long 9
.long 10
.long 11
.byte 119
.byte 104
.byte 105
.byte 108
.byte 101
.skip 1, 0
.skip 2, 0
.long 0
.skip 8, 0
.skip 8, 0
.align 4
wordlist:
.long words
.align 4
x:
.long 1
.long 2
.long 3
.long 4
.long 0
.long 5
.long 6
.skip 12, 0
.long 7
.skip 16, 0
.align 4
y:
.long x
.long 0x14 + x
.long 0x28 + x
.long 0
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	movl $0,%ecx
L.8:
.Lbranch_target_l16:
.Lbranch_target_l28:
	movl $2,%edx
	movl %eax,8(%esp)
	movl %ecx,%eax
	movl %ecx,12(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne L.5
.Lbranch_target_l15:
	call f
.Lcall_successor_l14:
	leal wordlist,%eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call g
.Lcall_successor_l11:
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
L.5:
	movl $0,%eax
L.12:
	movl $2,%ecx
.Lbranch_target_l21:
.Lbranch_target_l29:
	movl %eax,%edx
	movl %eax,20(%esp)
	movl %ecx,16(%esp)
	movl 16(%esp),%eax
	movl %eax,%ecx
	shll %cl, %edx
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 16(%esp),%ecx
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne L.9
.Lbranch_target_l20:
	leal i_14,%eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l19:
L.6:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
.LL.8_l31:
	movl 8(%esp),%eax
	jmp L.8
L.9:
	movl $2,%eax
	movl 20(%esp),%ecx
	movl %ecx,%edx
	movl %eax,%ecx
	shll %cl, %edx
	movl %eax,24(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl 24(%esp),%ecx
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %eax,%edx
	leal 28(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal i_13,%eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l24:
L.10:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
.LL.12_l30:
	movl %ecx,%eax
	jmp L.12
.section .pcmap_data
.Lstackdata_l35:
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l35
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l35
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l19
.long .Lframe_l38
.section .pcmap_data
.Lframe_l38:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l35
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l35
.long 0
.long 4
.long 0
.long 1
.long 0xfffffff8
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .text
.section .data
.align 4
L.20:
.long i_21
.long i_22
.long i_23
.long i_24
.long 0
.section .text
f:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l41:
.Lproc_body_start_l40:
	leal L.20,%ecx
L.28:
.Lbranch_target_l45:
.Lbranch_target_l52:
	movl (%ecx),%edx
	movl %eax,8(%esp)
	movl $0,%eax
	cmpl %eax,%edx
	jne L.25
.Lbranch_target_l44:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
L.25:
	leal 20(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	leal i_29,%eax
	leal 20(%esp), %edx
	movl %eax,12(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,16(%esp)
	call printf
.Lcall_successor_l48:
L.26:
	movl $4,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
.LL.28_l53:
	movl 8(%esp),%eax
	jmp L.28
.section .pcmap_data
.Lstackdata_l57:
.long 0
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l57
.long 0
.long 1
.long 0
.long 1
.long 0xfffffffc
.long 0
.section .text
g:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l60:
.Lproc_body_start_l59:
L.35:
.Lbranch_target_l67:
.Lbranch_target_l79:
	movl (%eax),%edx
	movl %eax,8(%esp)
	movl $0,%eax
	cmpl %eax,%edx
	jne L.32
.Lbranch_target_l66:
	movl %ecx,16(%esp)
	call h
.Lcall_successor_l65:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
L.32:
	movl $0,%eax
L.39:
.Lbranch_target_l72:
.Lbranch_target_l80:
	movl $3,%edx
	cmpl %edx,%eax
	jb L.36
.Lbranch_target_l71:
	leal i_29,%eax
	leal 40(%esp), %edx
	movl %eax,28(%esp)
	movl $-40,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	movl $12,%eax
	movl %eax,32(%esp)
	movl 8(%esp),%edx
	movl %edx,%eax
	movl %ecx,16(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl %eax,36(%esp)
	movl $-36,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l70:
L.33:
	movl $20,%eax
	movl 8(%esp),%ecx
	addl %eax,%ecx
.LL.35_l82:
	movl %ecx,%eax
	movl 16(%esp),%ecx
	jmp L.35
L.36:
	movl $2,%edx
	movl %eax,12(%esp)
	movl %ecx,16(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	leal 40(%esp), %edx
	movl %eax,20(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl 20(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal i_40,%eax
	leal 40(%esp), %edx
	movl %eax,24(%esp)
	movl $-40,%eax
	addl %eax,%edx
	movl 24(%esp),%eax
	movl %eax,(%edx)
	call printf
.Lcall_successor_l75:
L.37:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
.LL.39_l81:
	movl %ecx,%eax
	movl 16(%esp),%ecx
	jmp L.39
.section .pcmap_data
.Lstackdata_l86:
.long 0
.section .pcmap
.long .Lcall_successor_l65
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l86
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l70
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l86
.long 0
.long 2
.long 0
.long 1
.long 0xffffffe0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l75
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe8
.long .Lstackdata_l86
.long 0
.long 2
.long 0
.long 1
.long 0xffffffe0
.long 0xffffffe4
.long 0
.section .text
h:
	leal -48(%esp), %esp
	leal 48(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l91:
.Lproc_body_start_l90:
	movl $0,%ecx
L.46:
.Lbranch_target_l95:
.Lbranch_target_l102:
	movl $5,%edx
	cmpl %edx,%ecx
	jb L.43
.Lbranch_target_l94:
	movl $0,%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	leal 48(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
L.43:
	movl $20,%edx
	imull %ecx,%edx
	movl %eax,20(%esp)
	leal i_47,%eax
	movl %eax,24(%esp)
	leal words,%eax
	movl %eax,28(%esp)
	movl %edx,%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal words,%ecx
	movl %eax,36(%esp)
	movl $4,%eax
	addl %eax,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal words,%ecx
	movl %eax,40(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	leal 48(%esp), %ecx
	movl %eax,44(%esp)
	movl $-36,%eax
	addl %eax,%ecx
	movl 44(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal words,%eax
	movl $12,%ecx
	addl %ecx,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l98:
L.44:
	movl $1,%eax
	movl 32(%esp),%ecx
	addl %eax,%ecx
.LL.46_l103:
	movl 20(%esp),%eax
	jmp L.46
.section .pcmap_data
.Lstackdata_l107:
.long 0
.section .pcmap
.long .Lcall_successor_l98
.long .Lframe_l108
.section .pcmap_data
.Lframe_l108:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffe4
.long .Lstackdata_l107
.long 0
.long 2
.long 0
.long 1
.long 0xfffffff0
.long 0
.long 0
.section .text
.section .data
i_47:
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
i_40:
.byte 37
.byte 100
.byte 32
.byte 0
i_29:
.byte 37
.byte 115
.byte 10
.byte 0
i_24:
.byte 119
.byte 104
.byte 105
.byte 108
.byte 101
.byte 0
i_23:
.byte 101
.byte 108
.byte 115
.byte 101
.byte 0
i_22:
.byte 102
.byte 111
.byte 114
.byte 0
i_21:
.byte 105
.byte 102
.byte 0
i_14:
.byte 10
.byte 0
i_13:
.byte 32
.byte 37
.byte 100
.byte 0
