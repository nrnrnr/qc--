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
	leal -72(%esp), %esp
	leal 72(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl %edi,16(%esp)
	movl %esi,12(%esp)
	movl %ebp,8(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $0,%eax
	movl %eax,%esi
L.2:
	movl $0,%eax
	movl %eax,%ebp
L.6:
	movl $1000,%eax
	imull %esi,%eax
	addl %ebp,%eax
	movl $2,%ecx
	movl %ebp,%edi
	shll %cl, %edi
	movl $4,%ecx
	movl %esi,%edx
	shll %cl, %edx
	leal x,%ecx
	addl %ecx,%edx
	addl %edx,%edi
	movl %eax,(%edi)
L.7:
	movl $1,%ecx
	movl %ebp,%eax
	addl %ecx,%eax
	movl %eax,%ebp
.Lbranch_target_l20:
	movl $4,%eax
	cmpl %eax,%ebp
	jl L.6
.Lbranch_target_l16:
	movl $4,%ecx
	movl %esi,%edx
	shll %cl, %edx
	leal x,%eax
	addl %eax,%edx
	movl $2,%ecx
	movl %esi,%eax
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.3:
	movl $1,%ecx
	movl %esi,%eax
	addl %ecx,%eax
	movl %eax,%esi
.Lbranch_target_l21:
	movl $3,%eax
	cmpl %eax,%esi
	jl L.2
.Lbranch_target_l15:
	call f
.Lcall_successor_l14:
	movl $0,%eax
	movl %eax,%esi
L.10:
	movl $4,%ecx
	movl %esi,%eax
	shll %cl, %eax
	leal 72(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	addl %ecx,%eax
	movl %eax,%edx
	movl $2,%ecx
	movl %esi,%ebp
	shll %cl, %ebp
	leal y,%ecx
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $0,%eax
	movl %eax,%ebp
L.14:
	movl $2,%ecx
	movl %ebp,%eax
	shll %cl, %eax
	movl $4,%ecx
	movl %esi,%edi
	shll %cl, %edi
	leal x,%ecx
	addl %ecx,%edi
	movl %eax,%ecx
	addl %edi,%ecx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
L.15:
	movl $1,%eax
	addl %eax,%ebp
.Lbranch_target_l22:
	movl $4,%eax
	cmpl %eax,%ebp
	jl L.14
L.11:
	movl $1,%eax
	addl %eax,%esi
.Lbranch_target_l23:
	movl $3,%eax
	cmpl %eax,%esi
	jl L.10
.Lbranch_target_l11:
	leal 72(%esp), %ecx
	movl $-48,%eax
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal y,%ecx
	leal 72(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call g
.Lcall_successor_l10:
	movl $0,%eax
	leal 72(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	movl 8(%esp),%ebp
	leal 72(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 1
.long 0xffffffd0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffb8
.long 0xffffffcc
.long .Lstackdata_l27
.long 3
.long 9
.long 0
.long 1
.long 11
.long 0xffffffc8
.long 10
.long 0xffffffc4
.long 9
.long 0xffffffc0
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
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffb8
.long 0xffffffcc
.long .Lstackdata_l27
.long 3
.long 9
.long 0
.long 1
.long 11
.long 0xffffffc8
.long 10
.long 0xffffffc4
.long 9
.long 0xffffffc0
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
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
.Linitialize_continuations_l31:
.Lproc_body_start_l30:
	movl $0,%esi
L.29:
	movl $0,%edi
L.33:
	movl $2,%ecx
	movl %edi,%edx
	shll %cl, %edx
	movl $4,%ecx
	movl %esi,%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	addl %eax,%edx
	leal 20(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal i_37,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l47:
L.34:
	movl $1,%eax
	addl %eax,%edi
.Lbranch_target_l51:
	movl $4,%eax
	cmpl %eax,%edi
	jl L.33
L.30:
	movl $1,%eax
	addl %eax,%esi
.Lbranch_target_l52:
	movl $3,%eax
	cmpl %eax,%esi
	jl L.29
.Lbranch_target_l44:
	leal i_38,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l43:
	movl $0,%esi
L.39:
	movl $0,%edi
L.43:
	movl $2,%ecx
	movl %edi,%edx
	shll %cl, %edx
	movl %esi,%eax
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %eax,%edx
	leal 20(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal i_37,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l40:
L.44:
	movl $1,%eax
	addl %eax,%edi
.Lbranch_target_l53:
	movl $4,%eax
	cmpl %eax,%edi
	jl L.43
L.40:
	movl $1,%eax
	addl %eax,%esi
.Lbranch_target_l54:
	movl $3,%eax
	cmpl %eax,%esi
	jl L.39
.Lbranch_target_l37:
	leal i_38,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l36:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l58:
.long 0
.section .pcmap
.long .Lcall_successor_l47
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l58
.long 2
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0x4000000b
.long 0x4000000a
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l58
.long 2
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l40
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l58
.long 2
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0x4000000b
.long 0x4000000a
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l36
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l58
.long 2
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .text
g:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	leal 28(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 28(%esp), %eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
.Linitialize_continuations_l64:
.Lproc_body_start_l63:
	movl $0,%ebx
L.51:
	movl $0,%ebp
L.55:
	movl $2,%ecx
	movl %ebp,%edx
	shll %cl, %edx
	movl $4,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	addl %eax,%edx
	leal 28(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal i_37,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l80:
L.56:
	movl $1,%eax
	addl %eax,%ebp
.Lbranch_target_l84:
	movl $4,%eax
	cmpl %eax,%ebp
	jl L.55
L.52:
	movl $1,%eax
	addl %eax,%ebx
.Lbranch_target_l85:
	movl $3,%eax
	cmpl %eax,%ebx
	jl L.51
.Lbranch_target_l77:
	leal i_38,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l76:
	movl $0,%ebx
L.59:
	movl $0,%ebp
L.63:
	movl $2,%ecx
	movl %ebp,%edx
	shll %cl, %edx
	movl %ebx,%eax
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %eax,%edx
	leal 28(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal i_37,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l73:
L.64:
	movl $1,%eax
	addl %eax,%ebp
.Lbranch_target_l86:
	movl $4,%eax
	cmpl %eax,%ebp
	jl L.63
L.60:
	movl $1,%eax
	addl %eax,%ebx
.Lbranch_target_l87:
	movl $3,%eax
	cmpl %eax,%ebx
	jl L.59
.Lbranch_target_l70:
	leal i_38,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l69:
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l91:
.long 0
.section .pcmap
.long .Lcall_successor_l80
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l91
.long 2
.long 5
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 7
.long 0xfffffff4
.long 0xffffffec
.long 0xfffffff0
.long 0x40000009
.long 0x40000007
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l76
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l91
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
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l73
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l91
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
.long 0x40000009
.long 0x40000007
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l69
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l91
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
