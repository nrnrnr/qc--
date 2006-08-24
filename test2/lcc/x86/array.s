.globl main
.globl f
.globl g
.globl y
.globl x
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
.section .text
main:
	leal -88(%esp), %esp
	leal 88(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $0,%ecx
L.2:
	movl $0,%edx
L.6:
	movl %eax,8(%esp)
	movl $1000,%eax
	imull %ecx,%eax
	addl %edx,%eax
	movl %eax,12(%esp)
	movl $2,%eax
	movl %eax,16(%esp)
	movl %edx,%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	shll %cl, %eax
	movl $4,%ecx
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
L.7:
	movl $1,%eax
	addl %eax,%edx
.Lbranch_target_l20:
.Lbranch_target_l27:
	movl $4,%eax
	cmpl %eax,%edx
.Lbranch_target_l29:
	jl .LL.6_l28
.Lbranch_target_l19:
	movl $4,%eax
	movl 20(%esp),%ecx
	movl %ecx,%edx
	movl %eax,%ecx
	shll %cl, %edx
	leal x,%eax
	addl %eax,%edx
	movl $2,%eax
	movl %eax,28(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 28(%esp),%ecx
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.3:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l18:
.Lbranch_target_l26:
	movl $3,%eax
	cmpl %eax,%ecx
.Lbranch_target_l31:
	jl .LL.2_l30
.Lbranch_target_l17:
	call f
.Lcall_successor_l16:
	movl $0,%eax
L.10:
	movl $4,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal 88(%esp), %ecx
	movl %eax,20(%esp)
	movl $-48,%eax
	addl %eax,%ecx
	addl %ecx,%edx
	movl %edx,%eax
	movl $2,%ecx
	movl %eax,32(%esp)
	movl 20(%esp),%eax
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $0,%eax
L.14:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl $4,%ecx
	movl %eax,36(%esp)
	movl 20(%esp),%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	addl %eax,%edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
L.15:
	movl $1,%ecx
	movl 36(%esp),%edx
	addl %ecx,%edx
.Lbranch_target_l13:
.Lbranch_target_l25:
	movl $4,%ecx
	cmpl %ecx,%edx
.Lbranch_target_l33:
	jl .LL.14_l32
L.11:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l12:
.Lbranch_target_l24:
	movl $3,%eax
	cmpl %eax,%ecx
.Lbranch_target_l35:
	jl .LL.10_l34
.Lbranch_target_l11:
	leal 88(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	leal 88(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal y,%eax
	leal 88(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call g
.Lcall_successor_l10:
	movl $0,%eax
	leal 88(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %esp
	ret
.LL.10_l34:
	movl %ecx,%eax
	jmp L.10
.LL.14_l32:
	movl %edx,%eax
	jmp L.14
.LL.2_l30:
	movl 8(%esp),%eax
	jmp L.2
.LL.6_l28:
	movl 20(%esp),%ecx
	movl 8(%esp),%eax
	jmp L.6
.section .pcmap_data
.Lstackdata_l39:
.long 1
.long 0xffffffd0
.section .pcmap
.long .Lcall_successor_l16
.long .Lframe_l40
.section .pcmap_data
.Lframe_l40:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l39
.long 0
.long 9
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l41
.section .pcmap_data
.Lframe_l41:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l39
.long 0
.long 9
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
f:
	leal -48(%esp), %esp
	leal 48(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l43:
.Lproc_body_start_l42:
	movl $0,%ecx
L.29:
	movl $0,%edx
L.33:
	movl %eax,8(%esp)
	movl $2,%eax
	movl %eax,12(%esp)
	movl %edx,%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	shll %cl, %eax
	movl $4,%ecx
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	leal 48(%esp), %eax
	movl %eax,24(%esp)
	movl $-44,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal i_37,%eax
	leal 48(%esp), %ecx
	movl %eax,36(%esp)
	movl $-48,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,40(%esp)
	call printf
.Lcall_successor_l63:
L.34:
	movl $1,%eax
	movl 40(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l60:
.Lbranch_target_l70:
	movl $4,%eax
	cmpl %eax,%ecx
.Lbranch_target_l72:
	jl .LL.33_l71
L.30:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l59:
.Lbranch_target_l69:
	movl $3,%eax
	cmpl %eax,%ecx
.Lbranch_target_l74:
	jl .LL.29_l73
.Lbranch_target_l58:
	leal i_38,%eax
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l57:
	movl $0,%eax
L.39:
	movl $0,%ecx
L.43:
	movl $2,%edx
	movl %eax,16(%esp)
	movl %ecx,%eax
	movl %ecx,40(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	movl %eax,44(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%eax
	movl %edx,%ecx
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 44(%esp),%ecx
	addl %eax,%ecx
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal i_37,%eax
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l54:
L.44:
	movl $1,%eax
	movl 40(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l51:
.Lbranch_target_l68:
	movl $4,%eax
	cmpl %eax,%ecx
.Lbranch_target_l76:
	jl .LL.43_l75
L.40:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l50:
.Lbranch_target_l67:
	movl $3,%eax
	cmpl %eax,%ecx
.Lbranch_target_l78:
	jl .LL.39_l77
.Lbranch_target_l49:
	leal i_38,%eax
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l48:
	movl $0,%eax
	leal 48(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
.LL.39_l77:
	movl %ecx,%eax
	jmp L.39
.LL.43_l75:
	movl 16(%esp),%eax
	jmp L.43
.LL.29_l73:
	movl 8(%esp),%eax
	jmp L.29
.LL.33_l71:
	movl %ecx,%edx
	movl 16(%esp),%ecx
	movl 8(%esp),%eax
	jmp L.33
.section .pcmap_data
.Lstackdata_l82:
.long 0
.section .pcmap
.long .Lcall_successor_l63
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffd8
.long .Lstackdata_l82
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff8
.long 0xffffffe0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l57
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffd8
.long .Lstackdata_l82
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffd8
.long .Lstackdata_l82
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff8
.long 0xffffffe0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffd8
.long .Lstackdata_l82
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
g:
	leal -60(%esp), %esp
	leal 60(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l88:
.Lproc_body_start_l87:
	movl %eax,8(%esp)
	movl $0,%eax
L.51:
	movl %eax,12(%esp)
	movl $0,%eax
L.55:
	movl %eax,16(%esp)
	movl $2,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	shll %cl, %eax
	movl $4,%ecx
	movl %eax,28(%esp)
	movl 12(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl %eax,36(%esp)
	movl $-56,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal i_37,%eax
	leal 60(%esp), %ecx
	movl %eax,40(%esp)
	movl $-60,%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,44(%esp)
	call printf
.Lcall_successor_l108:
L.56:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l105:
.Lbranch_target_l115:
	movl $4,%eax
	cmpl %eax,%ecx
.Lbranch_target_l117:
	jl .LL.55_l116
L.52:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l104:
.Lbranch_target_l114:
	movl $3,%eax
	cmpl %eax,%ecx
.Lbranch_target_l119:
	jl .LL.51_l118
.Lbranch_target_l103:
	leal i_38,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l102:
	movl $0,%eax
L.59:
	movl $0,%ecx
L.63:
	movl $2,%edx
	movl %eax,12(%esp)
	movl %ecx,%eax
	movl %ecx,16(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	movl %eax,48(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl %edx,%ecx
	shll %cl, %eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 48(%esp),%edx
	addl %eax,%edx
	leal 60(%esp), %eax
	movl %eax,52(%esp)
	movl $-56,%eax
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal i_37,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l99:
L.64:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l96:
.Lbranch_target_l113:
	movl $4,%eax
	cmpl %eax,%ecx
.Lbranch_target_l121:
	jl .LL.63_l120
L.60:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l95:
.Lbranch_target_l112:
	movl $3,%eax
	cmpl %eax,%ecx
.Lbranch_target_l123:
	jl .LL.59_l122
.Lbranch_target_l94:
	leal i_38,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l93:
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.LL.59_l122:
	movl %ecx,%eax
	jmp L.59
.LL.63_l120:
	movl 12(%esp),%eax
	jmp L.63
.LL.51_l118:
	movl %ecx,%eax
	movl 24(%esp),%ecx
	movl 44(%esp),%edx
	jmp L.51
.LL.55_l116:
	movl %ecx,%eax
	movl 24(%esp),%ecx
	movl 44(%esp),%edx
	jmp L.55
.section .pcmap_data
.Lstackdata_l127:
.long 0
.section .pcmap
.long .Lcall_successor_l108
.long .Lframe_l128
.section .pcmap_data
.Lframe_l128:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff0
.long .Lstackdata_l127
.long 0
.long 5
.long 0
.long 1
.long 0xffffffcc
.long 0xffffffdc
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l102
.long .Lframe_l129
.section .pcmap_data
.Lframe_l129:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff0
.long .Lstackdata_l127
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l99
.long .Lframe_l130
.section .pcmap_data
.Lframe_l130:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff0
.long .Lstackdata_l127
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0xffffffdc
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l93
.long .Lframe_l131
.section .pcmap_data
.Lframe_l131:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff0
.long .Lstackdata_l127
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
.section .bss
.align 4
y:
.skip 12, 0
.align 4
x:
.skip 48, 0
.section .data
i_38:
.byte 10
.byte 0
i_37:
.byte 32
.byte 37
.byte 100
.byte 0
