.globl main
.globl err
.globl getword
.globl isletter
.globl lookup
.globl tprint
.globl strcmp
.globl next
.globl words
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
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal next,%ecx
	movl %eax,(%ecx)
L.3:
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	leal 36(%esp), %edx
	movl $-36,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call getword
.Lcall_successor_l18:
.Lbranch_target_l25:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne L.2
.Lbranch_target_l15:
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %edx
	movl $-36,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tprint
.Lcall_successor_l14:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %esp
	ret
L.2:
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	leal 36(%esp), %edx
	movl $-36,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call lookup
.Lcall_successor_l21:
	movl (%eax),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl %edx,(%eax)
	jmp L.3
.section .pcmap_data
.Lstackdata_l29:
.long 2
.long 0xffffffe8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
err:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l34:
.Lproc_body_start_l33:
	leal i_10,%ecx
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l42:
	movl $1,%ecx
	leal 16(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call exit
.Lcall_successor_l39:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l49:
.long 0
.section .pcmap
.long .Lcall_successor_l42
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l49
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l51
.section .pcmap_data
.Lframe_l51:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l49
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.section .text
getword:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %ebp,8(%esp)
	movl %ebx,16(%esp)
.Linitialize_continuations_l53:
.Lproc_body_start_l52:
L.12:
L.13:
	call getchar
.Lcall_successor_l71:
	movl %eax,%ebp
.Lbranch_target_l75:
	movl $-1,%ecx
	cmpl %ecx,%eax
	je L.15
.Lbranch_target_l68:
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	call isletter
.Lcall_successor_l67:
.Lbranch_target_l76:
	movl $0,%ecx
	cmpl %ecx,%eax
	je L.12
L.15:
	movl 4(%esp),%ebx
L.19:
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	call isletter
.Lcall_successor_l61:
	movl %eax,%ebp
.Lbranch_target_l77:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne L.16
.Lbranch_target_l58:
	movl $0,%eax
	movb %al,(%ebx)
.Lbranch_target_l78:
	movl 4(%esp),%eax
	cmpl %eax,%ebx
	jbe L.20
.Lbranch_target_l57:
	movl $1,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%ebp
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
L.20:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%ebp
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
L.16:
	movl %ebx,%ecx
	movl $1,%eax
	movl %ecx,%ebx
	addl %eax,%ebx
	movl %ebp,%eax
	movb %al,(%ecx)
L.17:
	call getchar
.Lcall_successor_l64:
	movl %eax,%ebp
	jmp L.19
.section .pcmap_data
.Lstackdata_l82:
.long 0
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l82
.long 2
.long 8
.long 0
.long 1
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffffc
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l67
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l82
.long 2
.long 8
.long 0
.long 1
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffffc
.long 0xfffffff0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l61
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l82
.long 2
.long 8
.long 0
.long 1
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffffc
.long 0xfffffff0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l64
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l82
.long 2
.long 8
.long 0
.long 1
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffffc
.long 0xfffffff0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
isletter:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
	movl %ebx,(%esp)
.Linitialize_continuations_l88:
.Lproc_body_start_l87:
.Lbranch_target_l101:
	movl $65,%edx
	cmpl %edx,%eax
	jl L.30
.Lbranch_target_l95:
.Lbranch_target_l99:
	movl $90,%edx
	cmpl %edx,%eax
	jg L.30
.Lbranch_target_l94:
	movl $32,%edx
	addl %edx,%eax
L.30:
.Lbranch_target_l102:
	movl $97,%edx
	cmpl %edx,%eax
	jl L.32
.Lbranch_target_l93:
.Lbranch_target_l100:
	movl $122,%edx
	cmpl %edx,%eax
	jg L.32
.Lbranch_target_l92:
	leal 4(%esp), %ebx
	movl $0,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
L.32:
	movl $0,%eax
	leal 4(%esp), %ebx
	movl $0,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .text
lookup:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 28(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	leal 28(%esp), %eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl %ebx,20(%esp)
.Linitialize_continuations_l109:
.Lproc_body_start_l108:
.Lbranch_target_l149:
	movl 8(%esp),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je L.37
.Lbranch_target_l143:
	movl 8(%esp),%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call strcmp
.Lcall_successor_l142:
	leal 28(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l147:
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jge L.39
.Lbranch_target_l139:
	movl 8(%esp),%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call lookup
.Lcall_successor_l138:
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 28(%esp), %esp
	ret
L.39:
.Lbranch_target_l150:
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jle L.41
.Lbranch_target_l134:
	movl 8(%esp),%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call lookup
.Lcall_successor_l133:
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 28(%esp), %esp
	ret
L.41:
	movl 8(%esp),%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 28(%esp), %esp
	ret
L.37:
.Lbranch_target_l151:
	leal next,%eax
	movl (%eax),%ecx
	movl $2000,%eax
	cmpl %eax,%ecx
	jl L.43
.Lbranch_target_l128:
	leal i_45,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call err
.Lcall_successor_l127:
L.43:
	movl $0,%edx
	leal next,%eax
	movl (%eax),%eax
	movl $4,%ecx
	shll %cl, %eax
	leal words,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal next,%eax
	movl (%eax),%eax
	movl $4,%ecx
	shll %cl, %eax
	movl $0,%ecx
	leal words,%ebx
	movl $8,%edx
	addl %edx,%ebx
	movl %eax,%edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal words,%edx
	movl $4,%ebx
	addl %ebx,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call strlen
.Lcall_successor_l124:
	movl $1,%ecx
	addl %ecx,%eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call malloc
.Lcall_successor_l121:
	leal next,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	shll %cl, %edx
	leal words,%ecx
	movl $12,%ebx
	addl %ebx,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
.Lbranch_target_l148:
	leal next,%eax
	movl (%eax),%eax
	movl $4,%ecx
	shll %cl, %eax
	leal words,%ecx
	movl $12,%edx
	addl %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.49
.Lbranch_target_l118:
	leal i_52,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call err
.Lcall_successor_l117:
L.49:
	leal next,%eax
	movl (%eax),%edx
	movl $4,%ecx
	shll %cl, %edx
	leal words,%eax
	movl $12,%ecx
	addl %ecx,%eax
	addl %eax,%edx
	leal 28(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call strcpy
.Lcall_successor_l114:
	leal next,%edx
	movl (%edx),%eax
	movl $1,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	shll %cl, %eax
	leal words,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %eax,(%ecx)
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l155:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l142
.long .Lframe_l156
.section .pcmap_data
.Lframe_l156:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 1
.long 12
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0xfffffff0
.long 0xffffffec
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
.long 0
.section .pcmap
.long .Lcall_successor_l138
.long .Lframe_l157
.section .pcmap_data
.Lframe_l157:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 1
.long 12
.long 0
.long 1
.long 7
.long 0xfffffff8
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
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l133
.long .Lframe_l158
.section .pcmap_data
.Lframe_l158:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 1
.long 12
.long 0
.long 1
.long 7
.long 0xfffffff8
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
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l127
.long .Lframe_l159
.section .pcmap_data
.Lframe_l159:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 1
.long 12
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0xfffffff0
.long 0xffffffec
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
.long 0
.section .pcmap
.long .Lcall_successor_l124
.long .Lframe_l160
.section .pcmap_data
.Lframe_l160:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 1
.long 12
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0xfffffff0
.long 0xffffffec
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
.long 0
.section .pcmap
.long .Lcall_successor_l121
.long .Lframe_l161
.section .pcmap_data
.Lframe_l161:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 1
.long 12
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0xfffffff0
.long 0xffffffec
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
.long 0
.section .pcmap
.long .Lcall_successor_l117
.long .Lframe_l162
.section .pcmap_data
.Lframe_l162:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 1
.long 12
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0xfffffff0
.long 0xffffffec
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
.long 0
.section .pcmap
.long .Lcall_successor_l114
.long .Lframe_l163
.section .pcmap_data
.Lframe_l163:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 1
.long 12
.long 0
.long 1
.long 7
.long 0xfffffff8
.long 0
.long 0xffffffec
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
.long 0
.section .text
tprint:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 28(%esp), %eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	movl %esi,20(%esp)
	movl %ebp,16(%esp)
.Linitialize_continuations_l165:
.Lproc_body_start_l164:
.Lbranch_target_l181:
	movl $0,%ecx
	movl 12(%esp),%eax
	cmpl %ecx,%eax
	je L.66
.Lbranch_target_l177:
	movl $4,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tprint
.Lcall_successor_l176:
	leal i_68,%ecx
	movl 12(%esp),%eax
	movl (%eax),%edx
	movl $12,%ebp
	movl 12(%esp),%eax
	addl %ebp,%eax
	leal 28(%esp), %esi
	movl $-20,%ebp
	addl %ebp,%esi
	movl (%eax),%eax
	movl %eax,(%esi)
	leal 28(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l173:
	movl $8,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tprint
.Lcall_successor_l170:
L.66:
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%esi
	movl 16(%esp),%ebp
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l185:
.long 0
.section .pcmap
.long .Lcall_successor_l176
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l185
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 9
.long 0xfffffff4
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l173
.long .Lframe_l187
.section .pcmap_data
.Lframe_l187:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l185
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 9
.long 0xfffffff4
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l170
.long .Lframe_l188
.section .pcmap_data
.Lframe_l188:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long .Lstackdata_l185
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 9
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .text
strcmp:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 8(%esp), %edx
	movl (%edx),%edx
	movl %ebp,(%esp)
	movl %ebx,4(%esp)
.Linitialize_continuations_l190:
.Lproc_body_start_l189:
L.72:
.Lbranch_target_l205:
	movsbl (%eax),%ebp
	movsbl (%ecx),%ebx
	cmpl %ebx,%ebp
	je L.71
.Lbranch_target_l197:
.Lbranch_target_l203:
	movsbl (%eax),%ebp
	movl $0,%ebx
	cmpl %ebx,%ebp
	jne L.76
.Lbranch_target_l196:
	movl $-1,%eax
	leal 8(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl (%esp),%ebp
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
L.76:
.Lbranch_target_l206:
	movsbl (%ecx),%ebp
	movl $0,%ebx
	cmpl %ebx,%ebp
	jne L.78
.Lbranch_target_l194:
	movl $1,%eax
	leal 8(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl (%esp),%ebp
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
L.78:
	movsbl (%eax),%eax
	movsbl (%ecx),%ecx
	subl %ecx,%eax
	leal 8(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl (%esp),%ebp
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
L.71:
	movl %eax,%ebx
	movl $1,%ebp
	movl %ebx,%eax
	addl %ebp,%eax
.Lbranch_target_l204:
	movsbl (%ebx),%ebp
	movl $0,%ebx
	cmpl %ebx,%ebp
	jne L.74
.Lbranch_target_l199:
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl (%esp),%ebp
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
L.74:
	movl $1,%ebx
	addl %ebx,%ecx
	jmp L.72
.section .text
.section .bss
.align 4
next:
.skip 4, 0
.align 4
words:
.skip 32000, 0
.section .data
i_68:
.byte 37
.byte 100
.byte 9
.byte 37
.byte 115
.byte 10
.byte 0
i_52:
.byte 111
.byte 117
.byte 116
.byte 32
.byte 111
.byte 102
.byte 32
.byte 119
.byte 111
.byte 114
.byte 100
.byte 32
.byte 115
.byte 116
.byte 111
.byte 114
.byte 97
.byte 103
.byte 101
.byte 0
i_45:
.byte 111
.byte 117
.byte 116
.byte 32
.byte 111
.byte 102
.byte 32
.byte 110
.byte 111
.byte 100
.byte 101
.byte 32
.byte 115
.byte 116
.byte 111
.byte 114
.byte 97
.byte 103
.byte 101
.byte 0
i_10:
.byte 63
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
