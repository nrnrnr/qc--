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
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l10:
Lproc_body_start_l9:
	movl $0,%ecx
	leal 40(%esp), %edx
	movl %edi,8(%esp)
	movl $-4,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $0,%edi
	leal next,%ecx
	movl %edi,(%ecx)
	jmp L.3
L.3:
	leal 40(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call getword
Ljoin_l20:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l16
Ljoin_l17:
	leal 40(%esp), %edi
	movl $-4,%eax
	addl %eax,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	call tprint
Ljoin_l15:
	movl $0,%eax
	leal 40(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 40(%esp), %esp
	ret
Ljoin_l16:
	jmp L.2
L.2:
	leal 40(%esp), %edi
	movl $-24,%eax
	addl %eax,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 40(%esp), %edi
	movl $-4,%eax
	addl %eax,%edi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call lookup
Ljoin_l23:
	movl (%eax),%edi
	movl $1,%edx
	addl %edx,%edi
	movl %edi,(%eax)
	movl 12(%esp),%eax
	jmp L.3
.section .pcmap_data
Lstackdata_l30:
.long 2
.long 0xffffffe8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l20
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long Lstackdata_l30
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long Lstackdata_l30
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long Lstackdata_l30
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.section .text
err:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l36:
Lproc_body_start_l35:
	leal i_10,%edx
	movl %edi,8(%esp)
	leal 28(%esp), %edi
	movl %edi,12(%esp)
	movl $-28,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 28(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %ecx,24(%esp)
	call printf
Ljoin_l44:
	movl $1,%edi
	leal 28(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call exit
Ljoin_l41:
	movl $0,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l51:
.long 0
.section .pcmap
.long Ljoin_l44
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long Lstackdata_l51
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
.section .pcmap
.long Ljoin_l41
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long Lstackdata_l51
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
getword:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l56:
Lproc_body_start_l55:
	jmp L.12
L.12:
L.13:
	movl %ecx,8(%esp)
	movl %eax,4(%esp)
	call getchar
Ljoin_l78:
	movl %eax,%ecx
	movl $-1,%edx
	cmpl %edx,%eax
	je Ljoin_l74
Ljoin_l75:
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl %ecx,12(%esp)
	call isletter
Ljoin_l73:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l70
Ljoin_l82:
	movl 12(%esp),%ecx
	jmp L.15
Ljoin_l70:
	jmp Ljoin_l83
Ljoin_l83:
	movl 8(%esp),%ecx
	movl 4(%esp),%eax
	jmp L.12
Ljoin_l74:
	jmp L.15
L.15:
	movl 4(%esp),%eax
	movl %eax,%edx
	jmp L.19
L.19:
	movl %edi,16(%esp)
	leal 36(%esp), %edi
	movl %edi,20(%esp)
	movl $-36,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %edx,32(%esp)
	call isletter
Ljoin_l66:
	movl %eax,%edx
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l62
Ljoin_l63:
	movl $0,%eax
	movl 32(%esp),%edx
	movb %al,(%edx)
	movl 4(%esp),%ecx
	cmpl %ecx,%edx
	jbe Ljoin_l60
Ljoin_l61:
	movl $1,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 36(%esp), %esp
	ret
Ljoin_l60:
	jmp L.20
L.20:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 36(%esp), %esp
	ret
Ljoin_l62:
	jmp L.16
L.16:
	movl 32(%esp),%edi
	movl $1,%esi
	movl %edi,%ecx
	addl %esi,%ecx
	movl %edx,%eax
	movb %al,(%edi)
L.17:
	movl %ecx,32(%esp)
	call getchar
Ljoin_l69:
	movl %eax,%ecx
	movl 16(%esp),%edi
	movl 28(%esp),%esi
	movl 32(%esp),%edx
	movl 4(%esp),%eax
	jmp L.19
.section .pcmap_data
Lstackdata_l87:
.long 0
.section .pcmap
.long Ljoin_l78
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long Lstackdata_l87
.long 0
.long 8
.long 0
.long 1
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l73
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long Lstackdata_l87
.long 0
.long 8
.long 0
.long 1
.long 0xffffffe0
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l66
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long Lstackdata_l87
.long 2
.long 8
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0xffffffe0
.long 0
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l69
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long Lstackdata_l87
.long 2
.long 8
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0xffffffe0
.long 0
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
isletter:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l94:
Lproc_body_start_l93:
	movl $65,%eax
	cmpl %eax,%edx
	jl Ljoin_l104
Ljoin_l105:
	movl $90,%eax
	cmpl %eax,%edx
	jg Ljoin_l102
Ljoin_l103:
	movl $32,%eax
	addl %eax,%edx
	jmp L.30
Ljoin_l102:
	jmp L.30
Ljoin_l104:
	jmp L.30
L.30:
	movl $97,%eax
	cmpl %eax,%edx
	jl Ljoin_l100
Ljoin_l101:
	movl $122,%eax
	cmpl %eax,%edx
	jg Ljoin_l98
Ljoin_l99:
	movl %edx,%eax
	leal 20(%esp), %edx
	movl %edx,12(%esp)
	movl $0,%edx
	movl %edx,16(%esp)
	movl 12(%esp),%edx
	movl %ecx,8(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
Ljoin_l98:
	jmp L.32
Ljoin_l100:
	jmp L.32
L.32:
	movl $0,%eax
	leal 20(%esp), %edx
	movl %edx,(%esp)
	movl $0,%edx
	movl %edx,4(%esp)
	movl (%esp),%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
.section .text
lookup:
	leal -56(%esp), %esp
	leal 56(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l116:
Lproc_body_start_l115:
	movl %edi,8(%esp)
	movl (%ecx),%edi
	movl %edi,12(%esp)
	movl $0,%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l154
Ljoin_l155:
	movl (%ecx),%edi
	movl $12,%esi
	addl %esi,%edi
	leal 56(%esp), %esi
	movl %edi,48(%esp)
	movl $-52,%edi
	addl %edi,%esi
	movl 48(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,32(%esp)
	movl %eax,24(%esp)
	movl %ecx,28(%esp)
	call strcmp
Ljoin_l153:
	leal 56(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 56(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jge Ljoin_l149
Ljoin_l150:
	movl 28(%esp),%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 56(%esp), %esi
	movl $-52,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	call lookup
Ljoin_l148:
	leal 56(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 56(%esp), %esp
	ret
Ljoin_l149:
	jmp L.39
L.39:
	leal 56(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l143
Ljoin_l144:
	movl 28(%esp),%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	leal 56(%esp), %esi
	movl $-52,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	call lookup
Ljoin_l142:
	leal 56(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 56(%esp), %esp
	ret
Ljoin_l143:
	jmp L.41
L.41:
	movl 28(%esp),%edx
	movl (%edx),%eax
	leal 56(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 56(%esp), %esp
	ret
Ljoin_l154:
	jmp L.37
L.37:
	leal next,%edi
	movl (%edi),%edi
	movl $2000,%esi
	cmpl %esi,%edi
	jl Ljoin_l136
Ljoin_l137:
	leal i_45,%edi
	leal 56(%esp), %esi
	movl %edi,20(%esp)
	movl $-56,%edi
	addl %edi,%esi
	movl 20(%esp),%edi
	movl %edi,(%esi)
	movl %edx,32(%esp)
	movl %eax,24(%esp)
	movl %ecx,28(%esp)
	call err
Ljoin_l135:
	movl 32(%esp),%edx
	movl 24(%esp),%eax
	movl 28(%esp),%ecx
	jmp L.43
Ljoin_l136:
	jmp L.43
L.43:
	movl $0,%edi
	leal next,%esi
	movl (%esi),%esi
	movl %edi,36(%esp)
	movl $4,%edi
	movl %ecx,28(%esp)
	movl %edi,%ecx
	shll %cl, %esi
	leal words,%edi
	addl %edi,%esi
	movl 36(%esp),%edi
	movl %edi,(%esi)
	leal next,%edi
	movl (%edi),%edi
	movl $4,%ecx
	shll %cl, %edi
	movl $0,%esi
	leal words,%ecx
	movl %edi,40(%esp)
	movl $8,%edi
	addl %edi,%ecx
	movl %esi,44(%esp)
	movl 40(%esp),%edi
	movl %edi,%esi
	addl %ecx,%esi
	movl 44(%esp),%ecx
	movl %ecx,(%esi)
	leal words,%esi
	movl $4,%edi
	addl %edi,%esi
	movl 40(%esp),%edi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,32(%esp)
	movl %eax,24(%esp)
	call strlen
Ljoin_l132:
	movl $1,%edi
	addl %edi,%eax
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call malloc
Ljoin_l129:
	leal next,%edi
	movl (%edi),%edi
	movl $4,%ecx
	shll %cl, %edi
	leal words,%esi
	movl $12,%edx
	addl %edx,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal next,%edi
	movl (%edi),%edi
	movl $4,%ecx
	shll %cl, %edi
	leal words,%esi
	movl $12,%eax
	addl %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l125
Ljoin_l126:
	leal i_52,%edi
	leal 56(%esp), %esi
	movl $-56,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call err
Ljoin_l124:
	jmp L.49
Ljoin_l125:
	jmp L.49
L.49:
	leal next,%edi
	movl (%edi),%edi
	movl $4,%ecx
	shll %cl, %edi
	leal words,%esi
	movl $12,%eax
	addl %eax,%esi
	addl %esi,%edi
	leal 56(%esp), %esi
	movl $-56,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 56(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	call strcpy
Ljoin_l121:
	leal next,%edx
	movl (%edx),%eax
	movl $1,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl %esi,(%edx)
	movl $4,%ecx
	shll %cl, %eax
	leal words,%edx
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %eax,(%edx)
	leal 56(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l162:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l153
.long Lframe_l163
.section .pcmap_data
Lframe_l163:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffe8
.long Lstackdata_l162
.long 2
.long 12
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffd0
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l148
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffe8
.long Lstackdata_l162
.long 2
.long 12
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffd0
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
.long Ljoin_l142
.long Lframe_l165
.section .pcmap_data
Lframe_l165:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffe8
.long Lstackdata_l162
.long 2
.long 12
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffd0
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
.long Ljoin_l135
.long Lframe_l166
.section .pcmap_data
Lframe_l166:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffe8
.long Lstackdata_l162
.long 2
.long 12
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffd0
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l132
.long Lframe_l167
.section .pcmap_data
Lframe_l167:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffe8
.long Lstackdata_l162
.long 2
.long 12
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffd0
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l129
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffe8
.long Lstackdata_l162
.long 2
.long 12
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffd0
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l124
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffe8
.long Lstackdata_l162
.long 2
.long 12
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffd0
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l121
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffe8
.long Lstackdata_l162
.long 2
.long 12
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffd0
.long 0
.long 0xffffffe4
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
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l173:
Lproc_body_start_l172:
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l185
Ljoin_l186:
	movl $4,%edx
	movl %edi,12(%esp)
	movl %eax,%edi
	addl %edx,%edi
	leal 44(%esp), %edx
	movl %edi,16(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl 16(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%edx)
	movl %ecx,24(%esp)
	movl %eax,20(%esp)
	call tprint
Ljoin_l184:
	leal i_68,%edi
	movl 20(%esp),%eax
	movl (%eax),%ecx
	movl $12,%edx
	movl %edi,28(%esp)
	movl %eax,%edi
	addl %edx,%edi
	leal 44(%esp), %edx
	movl %edi,32(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl 32(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%edx)
	leal 44(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 44(%esp), %edi
	movl $-44,%ecx
	addl %ecx,%edi
	movl 28(%esp),%ecx
	movl %ecx,(%edi)
	call printf
Ljoin_l181:
	movl $8,%edi
	movl 20(%esp),%eax
	addl %edi,%eax
	leal 44(%esp), %edi
	movl $-44,%ecx
	addl %ecx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	call tprint
Ljoin_l178:
	movl 12(%esp),%edi
	movl 24(%esp),%ecx
	jmp L.66
Ljoin_l185:
	jmp L.66
L.66:
	movl $0,%eax
	leal 44(%esp), %edx
	movl %edx,36(%esp)
	movl $0,%edx
	movl %edx,40(%esp)
	movl 36(%esp),%edx
	movl %ecx,24(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l193:
.long 0
.section .pcmap
.long Ljoin_l184
.long Lframe_l194
.section .pcmap_data
Lframe_l194:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffec
.long Lstackdata_l193
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xffffffe0
.long 0xffffffe8
.long 0
.long 0
.section .pcmap
.long Ljoin_l181
.long Lframe_l195
.section .pcmap_data
Lframe_l195:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffec
.long Lstackdata_l193
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xffffffe0
.long 0xffffffe8
.long 0
.long 0
.section .pcmap
.long Ljoin_l178
.long Lframe_l196
.section .pcmap_data
Lframe_l196:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffec
.long Lstackdata_l193
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.section .text
strcmp:
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 28(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l199:
Lproc_body_start_l198:
	jmp L.72
L.72:
	movl %ecx,(%esp)
	movsbl (%edx),%ecx
	movl %edx,4(%esp)
	movl %ecx,8(%esp)
	movl (%esp),%edx
	movsbl (%edx),%ecx
	movl 8(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l208
Ljoin_l209:
	movl 4(%esp),%edx
	movsbl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l206
Ljoin_l207:
	movl $-1,%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
Ljoin_l206:
	jmp L.76
L.76:
	movl (%esp),%edx
	movsbl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l203
Ljoin_l204:
	movl $1,%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
Ljoin_l203:
	jmp L.78
L.78:
	movl 4(%esp),%edx
	movsbl (%edx),%edx
	movl (%esp),%ecx
	movsbl (%ecx),%ecx
	subl %ecx,%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
Ljoin_l208:
	jmp L.71
L.71:
	movl 4(%esp),%edx
	movl $1,%ecx
	movl %ecx,16(%esp)
	movl %edx,%ecx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movsbl (%edx),%edx
	movl %edx,24(%esp)
	movl $0,%edx
	movl %ecx,4(%esp)
	movl 24(%esp),%ecx
	cmpl %edx,%ecx
	jne Ljoin_l211
Ljoin_l212:
	movl $0,%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
Ljoin_l211:
	jmp L.74
L.74:
	movl $1,%edx
	movl (%esp),%ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
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
