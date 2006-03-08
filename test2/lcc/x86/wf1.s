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
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
	movl $0,%ecx
	leal 36(%esp), %edx
	movl %eax,8(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $0,%eax
	leal next,%ecx
	movl %eax,(%ecx)
L.3:
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
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
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tprint
.Lcall_successor_l14:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
L.2:
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call lookup
.Lcall_successor_l21:
	movl (%eax),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl %ecx,(%eax)
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
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l34:
.Lproc_body_start_l33:
	leal i_10,%edx
	movl %eax,8(%esp)
	leal 24(%esp), %eax
	movl %eax,12(%esp)
	movl $-24,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 24(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l42:
	movl $1,%eax
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call exit
.Lcall_successor_l39:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
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
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l49
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l51
.section .pcmap_data
.Lframe_l51:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l49
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
getword:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l53:
.Lproc_body_start_l52:
L.12:
L.13:
	movl %eax,4(%esp)
	movl %ecx,8(%esp)
	call getchar
.Lcall_successor_l71:
	movl %eax,%ecx
.Lbranch_target_l78:
	movl $-1,%edx
	cmpl %edx,%eax
	je .LL.15_l80
.Lbranch_target_l68:
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl %ecx,12(%esp)
	call isletter
.Lcall_successor_l67:
.Lbranch_target_l77:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .LL.12_l79
	jmp L.15
.LL.12_l79:
	movl 4(%esp),%eax
	movl 8(%esp),%ecx
	jmp L.12
.LL.15_l80:
	movl %ecx,12(%esp)
L.15:
	movl 4(%esp),%eax
	movl %eax,%ecx
L.19:
	leal 24(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,16(%esp)
	call isletter
.Lcall_successor_l61:
	movl %eax,%ecx
.Lbranch_target_l76:
	movl $0,%edx
	cmpl %edx,%eax
	jne L.16
.Lbranch_target_l58:
	movl $0,%eax
	movl 16(%esp),%ecx
	movb %al,(%ecx)
.Lbranch_target_l75:
	movl 4(%esp),%eax
	cmpl %eax,%ecx
	jbe L.20
.Lbranch_target_l57:
	movl $1,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
L.20:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
L.16:
	movl 16(%esp),%eax
	movl $1,%edx
	movl %eax,20(%esp)
	addl %edx,%eax
	movl %eax,16(%esp)
	movl %ecx,%eax
	movl 20(%esp),%ecx
	movb %al,(%ecx)
L.17:
	call getchar
.Lcall_successor_l64:
.LL.19_l81:
	movl %eax,12(%esp)
	movl 4(%esp),%eax
	movl 16(%esp),%ecx
	jmp L.19
.section .pcmap_data
.Lstackdata_l85:
.long 0
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff0
.long .Lstackdata_l85
.long 0
.long 8
.long 0
.long 1
.long 0xffffffec
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
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff0
.long .Lstackdata_l85
.long 0
.long 8
.long 0
.long 1
.long 0xffffffec
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l61
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff0
.long .Lstackdata_l85
.long 0
.long 8
.long 0
.long 1
.long 0xffffffec
.long 0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l64
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff0
.long .Lstackdata_l85
.long 0
.long 8
.long 0
.long 1
.long 0xffffffec
.long 0
.long 0xfffffff8
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
.Linitialize_continuations_l91:
.Lproc_body_start_l90:
.Lbranch_target_l103:
	movl $65,%edx
	cmpl %edx,%eax
	jl L.30
.Lbranch_target_l98:
.Lbranch_target_l105:
	movl $90,%edx
	cmpl %edx,%eax
	jg L.30
.Lbranch_target_l97:
	movl $32,%edx
	addl %edx,%eax
L.30:
.Lbranch_target_l102:
	movl $97,%edx
	cmpl %edx,%eax
	jl L.32
.Lbranch_target_l96:
.Lbranch_target_l104:
	movl $122,%edx
	cmpl %edx,%eax
	jg L.32
.Lbranch_target_l95:
	leal 4(%esp), %edx
	movl %ecx,(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
L.32:
	movl $0,%eax
	leal 4(%esp), %edx
	movl %ecx,(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
lookup:
	leal -68(%esp), %esp
	leal 68(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l112:
.Lproc_body_start_l111:
.Lbranch_target_l152:
	movl %eax,8(%esp)
	movl (%ecx),%eax
	movl %eax,12(%esp)
	movl $0,%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	je L.37
.Lbranch_target_l146:
	movl 16(%esp),%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	leal 68(%esp), %eax
	movl %eax,52(%esp)
	movl $-64,%eax
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,24(%esp)
	call strcmp
.Lcall_successor_l145:
	leal 68(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l154:
	leal 68(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jge L.39
.Lbranch_target_l142:
	movl 16(%esp),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call lookup
.Lcall_successor_l141:
	leal 68(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
L.39:
.Lbranch_target_l151:
	leal 68(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jle L.41
.Lbranch_target_l137:
	movl 16(%esp),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call lookup
.Lcall_successor_l136:
	leal 68(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
L.41:
	movl 16(%esp),%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
L.37:
.Lbranch_target_l150:
	leal next,%eax
	movl (%eax),%eax
	movl $2000,%ecx
	cmpl %ecx,%eax
	jl .LL.43_l155
.Lbranch_target_l131:
	leal i_45,%eax
	leal 68(%esp), %ecx
	movl %eax,20(%esp)
	movl $-68,%eax
	addl %eax,%ecx
	movl 20(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,24(%esp)
	call err
.Lcall_successor_l130:
	jmp L.43
.LL.43_l155:
	movl %edx,24(%esp)
L.43:
	movl $0,%eax
	leal next,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	movl %ecx,28(%esp)
	movl %edx,%ecx
	movl 28(%esp),%edx
	shll %cl, %edx
	leal words,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal next,%eax
	movl (%eax),%eax
	movl $4,%ecx
	shll %cl, %eax
	movl $0,%ecx
	leal words,%edx
	movl %eax,32(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl 32(%esp),%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	leal words,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 32(%esp),%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 68(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call strlen
.Lcall_successor_l127:
	movl $1,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call malloc
.Lcall_successor_l124:
	leal next,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	movl %ecx,36(%esp)
	movl %edx,%ecx
	movl 36(%esp),%edx
	shll %cl, %edx
	leal words,%ecx
	movl %eax,40(%esp)
	movl $12,%eax
	addl %eax,%ecx
	addl %ecx,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
.Lbranch_target_l153:
	leal next,%eax
	movl (%eax),%eax
	movl $4,%ecx
	shll %cl, %eax
	leal words,%ecx
	movl $12,%edx
	addl %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne L.49
.Lbranch_target_l121:
	leal i_52,%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call err
.Lcall_successor_l120:
L.49:
	leal next,%eax
	movl (%eax),%eax
	movl $4,%ecx
	shll %cl, %eax
	leal words,%ecx
	movl $12,%edx
	addl %edx,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-64,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call strcpy
.Lcall_successor_l117:
	leal next,%eax
	movl (%eax),%ecx
	movl $1,%edx
	movl %eax,44(%esp)
	movl %ecx,%eax
	addl %edx,%eax
	movl 44(%esp),%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl %ecx,48(%esp)
	movl %eax,%ecx
	movl 48(%esp),%eax
	shll %cl, %eax
	leal words,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l159:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l145
.long .Lframe_l160
.section .pcmap_data
.Lframe_l160:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd4
.long .Lstackdata_l159
.long 0
.long 12
.long 0
.long 1
.long 0xffffffc4
.long 0xffffffcc
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
.long .Lcall_successor_l141
.long .Lframe_l161
.section .pcmap_data
.Lframe_l161:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd4
.long .Lstackdata_l159
.long 0
.long 12
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
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l136
.long .Lframe_l162
.section .pcmap_data
.Lframe_l162:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd4
.long .Lstackdata_l159
.long 0
.long 12
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
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l130
.long .Lframe_l163
.section .pcmap_data
.Lframe_l163:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd4
.long .Lstackdata_l159
.long 0
.long 12
.long 0
.long 1
.long 0xffffffc4
.long 0xffffffcc
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
.long .Lframe_l164
.section .pcmap_data
.Lframe_l164:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd4
.long .Lstackdata_l159
.long 0
.long 12
.long 0
.long 1
.long 0xffffffc4
.long 0xffffffcc
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
.long .Lframe_l165
.section .pcmap_data
.Lframe_l165:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd4
.long .Lstackdata_l159
.long 0
.long 12
.long 0
.long 1
.long 0xffffffc4
.long 0xffffffcc
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
.long .Lcall_successor_l120
.long .Lframe_l166
.section .pcmap_data
.Lframe_l166:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd4
.long .Lstackdata_l159
.long 0
.long 12
.long 0
.long 1
.long 0xffffffc4
.long 0xffffffcc
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
.long .Lframe_l167
.section .pcmap_data
.Lframe_l167:
.long 0x80000004
.long 0xffffffbc
.long 0xffffffd4
.long .Lstackdata_l159
.long 0
.long 12
.long 0
.long 1
.long 0
.long 0xffffffcc
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
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l169:
.Lproc_body_start_l168:
.Lbranch_target_l185:
	movl $0,%edx
	cmpl %edx,%ecx
	je .LL.66_l186
.Lbranch_target_l181:
	movl $4,%edx
	movl %eax,12(%esp)
	movl %ecx,%eax
	addl %edx,%eax
	leal 36(%esp), %edx
	movl %eax,16(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl 16(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl %ecx,20(%esp)
	call tprint
.Lcall_successor_l180:
	leal i_68,%eax
	movl 20(%esp),%ecx
	movl (%ecx),%edx
	movl %eax,24(%esp)
	movl $12,%eax
	movl %eax,28(%esp)
	movl %ecx,%eax
	movl 28(%esp),%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl %eax,32(%esp)
	movl $-28,%eax
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 36(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l177:
	movl $8,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tprint
.Lcall_successor_l174:
	jmp L.66
.LL.66_l186:
	movl %eax,12(%esp)
L.66:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l190:
.long 0
.section .pcmap
.long .Lcall_successor_l180
.long .Lframe_l191
.section .pcmap_data
.Lframe_l191:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l190
.long 0
.long 2
.long 0
.long 1
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l177
.long .Lframe_l192
.section .pcmap_data
.Lframe_l192:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l190
.long 0
.long 2
.long 0
.long 1
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l174
.long .Lframe_l193
.section .pcmap_data
.Lframe_l193:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l190
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
strcmp:
	leal -52(%esp), %esp
	leal 52(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l195:
.Lproc_body_start_l194:
L.72:
.Lbranch_target_l209:
	movl %eax,(%esp)
	movsbl (%eax),%eax
	movl %eax,4(%esp)
	movsbl (%ecx),%eax
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	cmpl %eax,%ecx
	je L.71
.Lbranch_target_l202:
.Lbranch_target_l211:
	movl (%esp),%eax
	movsbl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.76
.Lbranch_target_l201:
	movl $-1,%eax
	leal 52(%esp), %ecx
	movl %ecx,44(%esp)
	movl $0,%ecx
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	movl %edx,24(%esp)
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
L.76:
.Lbranch_target_l208:
	movl 8(%esp),%eax
	movsbl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.78
.Lbranch_target_l199:
	movl $1,%eax
	leal 52(%esp), %ecx
	movl %ecx,36(%esp)
	movl $0,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,24(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
L.78:
	movl (%esp),%eax
	movsbl (%eax),%eax
	movl 8(%esp),%ecx
	movsbl (%ecx),%ecx
	subl %ecx,%eax
	leal 52(%esp), %ecx
	movl %ecx,28(%esp)
	movl $0,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,24(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
L.71:
	movl (%esp),%eax
	movl $1,%ecx
	movl %eax,12(%esp)
	addl %ecx,%eax
.Lbranch_target_l210:
	movl 12(%esp),%ecx
	movsbl (%ecx),%ecx
	movl %eax,(%esp)
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.74
.Lbranch_target_l204:
	movl $0,%eax
	leal 52(%esp), %ecx
	movl %ecx,16(%esp)
	movl $0,%ecx
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	movl %edx,24(%esp)
	movl 20(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
L.74:
	movl $1,%eax
	movl 8(%esp),%ecx
	addl %eax,%ecx
.LL.72_l212:
	movl (%esp),%eax
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
