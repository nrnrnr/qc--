.globl main
.globl err
.globl getword
.globl isletter
.globl lookup
.globl tprint
.globl strcmp
.globl next
.globl words
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -36(%esp), %esp
	nop
initialize_continuations_l3:
	movl $0,%eax
	movl $-4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal next,%edx
	movl %eax,(%edx)
	jmp L.3
L.3:
	nop
	movl $-24,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl $-36,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	nop
	call getword
join_l13:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l9
join_l10:
	nop
	movl $-4,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl $-36,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	nop
	call tprint
join_l8:
	nop
	nop
	nop
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	movl %ebx,8(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 36(%esp), %esp
	ret
join_l9:
	jmp L.2
L.2:
	nop
	movl $-24,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl $-36,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl $-32,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call lookup
join_l16:
	nop
	nop
	movl $1,%ecx
	movl (%eax),%edx
	addl %ecx,%edx
	movl %edx,(%eax)
	jmp L.3
.section .pcmap_data
stackdata_l23:
.long 2
.long 0xffffffe8
.long 0xfffffffc
.section .pcmap
.long join_l16
.long frame_l24
.section .pcmap_data
frame_l24:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l23
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .pcmap
.long join_l13
.long frame_l25
.section .pcmap_data
frame_l25:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l23
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .pcmap
.long join_l8
.long frame_l26
.section .pcmap_data
frame_l26:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l23
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .text
err:
	leal -16(%esp), %esp
	movl $4,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	nop
initialize_continuations_l29:
	nop
	leal i_10,%ecx
	movl $-16,%edx
	movl %eax,8(%esp)
	leal 16(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-12,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	nop
	call printf
join_l37:
	nop
	nop
	nop
	movl $1,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call exit
join_l34:
	nop
	nop
	nop
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	movl %ebx,12(%esp)
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
stackdata_l44:
.long 0
.section .pcmap
.long join_l37
.long frame_l45
.section .pcmap_data
frame_l45:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l44
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .pcmap
.long join_l34
.long frame_l46
.section .pcmap_data
frame_l46:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l44
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .text
getword:
	leal -24(%esp), %esp
	movl $4,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	nop
initialize_continuations_l49:
	jmp L.12
L.12:
L.13:
	nop
	nop
	movl %eax,4(%esp)
	call getchar
join_l71:
	nop
	nop
	movl %eax,%ecx
	movl $-1,%edx
	cmpl %edx,%eax
	je join_l67
join_l68:
	nop
	movl $-24,%eax
	leal 24(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	nop
	movl %ecx,8(%esp)
	call isletter
join_l66:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l63
join_l75:
	movl 8(%esp),%ecx
	jmp L.15
join_l63:
	jmp join_l76
join_l76:
	movl 4(%esp),%eax
	jmp L.12
join_l67:
	jmp L.15
L.15:
	movl 4(%esp),%eax
	movl %eax,%edx
	jmp L.19
L.19:
	nop
	movl %eax,4(%esp)
	movl $-24,%eax
	movl %ecx,8(%esp)
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	nop
	movl %edx,12(%esp)
	call isletter
join_l59:
	nop
	nop
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l55
join_l56:
	movl $0,%eax
	movl 12(%esp),%edx
	movb %al,(%edx)
	movl 4(%esp),%eax
	cmpl %eax,%edx
	jbe join_l53
join_l54:
	nop
	movl $1,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	movl %edi,20(%esp)
	leal 24(%esp), %edi
	addl %edx,%edi
	movl (%ecx),%edx
	movl %edx,(%edi)
	movl 20(%esp),%edi
	leal 24(%esp), %esp
	ret
join_l53:
	jmp L.20
L.20:
	nop
	movl $0,%eax
	leal 24(%esp), %edx
	movl $0,%ecx
	movl %ebx,16(%esp)
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl 16(%esp),%ebx
	leal 24(%esp), %esp
	ret
join_l55:
	jmp L.16
L.16:
	movl 12(%esp),%edx
	movl $1,%eax
	movl %ebx,16(%esp)
	movl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,%eax
	movb %al,(%edx)
L.17:
	nop
	nop
	call getchar
join_l62:
	nop
	nop
	movl %eax,%ecx
	movl %ebx,%edx
	movl 16(%esp),%ebx
	movl 4(%esp),%eax
	jmp L.19
.section .pcmap_data
stackdata_l80:
.long 0
.section .pcmap
.long join_l71
.long frame_l81
.section .pcmap_data
frame_l81:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l80
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l66
.long frame_l82
.section .pcmap_data
frame_l82:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l80
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l62
.long frame_l83
.section .pcmap_data
frame_l83:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l80
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l59
.long frame_l84
.section .pcmap_data
frame_l84:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l80
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
isletter:
	leal -8(%esp), %esp
	movl $4,%edx
	leal 8(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	nop
initialize_continuations_l87:
	movl $65,%ecx
	cmpl %ecx,%edx
	jl join_l97
join_l98:
	movl $90,%ecx
	cmpl %ecx,%edx
	jg join_l95
join_l96:
	movl $32,%ecx
	addl %ecx,%edx
	jmp L.30
join_l95:
	jmp L.30
join_l97:
	jmp L.30
L.30:
	movl $97,%ecx
	cmpl %ecx,%edx
	jl join_l93
join_l94:
	movl $122,%ecx
	cmpl %ecx,%edx
	jg join_l91
join_l92:
	nop
	movl %edx,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	movl %edi,4(%esp)
	leal 8(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 4(%esp),%edi
	leal 8(%esp), %esp
	ret
join_l91:
	jmp L.32
join_l93:
	jmp L.32
L.32:
	nop
	movl $0,%ecx
	movl %ecx,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	movl %ebx,(%esp)
	leal 8(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl (%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l106:
.long 0
.section .text
lookup:
	leal -40(%esp), %esp
	movl $4,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	nop
initialize_continuations_l109:
	movl (%ecx),%edx
	movl %eax,8(%esp)
	movl $0,%eax
	cmpl %eax,%edx
	je join_l147
join_l148:
	nop
	movl $12,%eax
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-36,%eax
	movl %edi,32(%esp)
	leal 40(%esp), %edi
	addl %eax,%edi
	movl (%edx),%eax
	movl %eax,(%edi)
	movl $-40,%eax
	leal 40(%esp), %edi
	addl %eax,%edi
	movl 8(%esp),%eax
	movl %eax,(%edi)
	nop
	movl %eax,8(%esp)
	movl %ecx,12(%esp)
	call strcmp
join_l146:
	nop
	nop
	movl $-4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-4,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jge join_l142
join_l143:
	nop
	movl $4,%edi
	movl 12(%esp),%eax
	movl (%eax),%eax
	addl %edi,%eax
	movl $-36,%edi
	leal 40(%esp), %ecx
	addl %edi,%ecx
	movl %eax,(%ecx)
	movl $-40,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	nop
	call lookup
join_l141:
	nop
	nop
	nop
	leal 40(%esp), %ecx
	movl $0,%edx
	leal 40(%esp), %edi
	addl %edx,%edi
	movl (%ecx),%edx
	movl %edx,(%edi)
	movl 32(%esp),%edi
	leal 40(%esp), %esp
	ret
join_l142:
	jmp L.39
L.39:
	movl $-4,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jle join_l136
join_l137:
	nop
	movl $8,%edi
	movl 12(%esp),%eax
	movl (%eax),%eax
	addl %edi,%eax
	movl $-36,%edi
	leal 40(%esp), %ecx
	addl %edi,%ecx
	movl %eax,(%ecx)
	movl $-40,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	nop
	call lookup
join_l135:
	nop
	nop
	nop
	leal 40(%esp), %ecx
	movl $0,%edx
	leal 40(%esp), %edi
	addl %edx,%edi
	movl (%ecx),%edx
	movl %edx,(%edi)
	movl 32(%esp),%edi
	leal 40(%esp), %esp
	ret
join_l136:
	jmp L.41
L.41:
	nop
	movl 12(%esp),%eax
	movl (%eax),%eax
	leal 40(%esp), %edx
	movl $0,%ecx
	leal 40(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 32(%esp),%edi
	leal 40(%esp), %esp
	ret
join_l147:
	jmp L.37
L.37:
	leal next,%eax
	movl (%eax),%edx
	movl $2000,%eax
	cmpl %eax,%edx
	jl join_l129
join_l130:
	nop
	leal i_45,%eax
	movl $-40,%edx
	movl %ecx,12(%esp)
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	call err
join_l128:
	nop
	nop
	movl 12(%esp),%ecx
	jmp L.43
join_l129:
	jmp L.43
L.43:
	movl $0,%eax
	leal words,%edx
	movl %ecx,12(%esp)
	movl $4,%ecx
	movl %ebx,16(%esp)
	leal next,%ebx
	movl (%ebx),%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	leal next,%ebx
	movl (%ebx),%edx
	movl %eax,%ecx
	shll %cl, %edx
	movl $0,%ecx
	movl $8,%eax
	leal words,%ebx
	addl %eax,%ebx
	movl %edx,%eax
	addl %ebx,%eax
	movl %ecx,(%eax)
	movl $4,%eax
	leal words,%ebx
	addl %eax,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	nop
	movl $-40,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	nop
	movl %ecx,8(%esp)
	call strlen
join_l125:
	nop
	nop
	nop
	movl $1,%ecx
	addl %ecx,%eax
	movl $-40,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call malloc
join_l122:
	nop
	nop
	movl $12,%ecx
	leal words,%edx
	addl %ecx,%edx
	movl $4,%ecx
	leal next,%ebx
	movl (%ebx),%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $12,%eax
	leal words,%ebx
	addl %eax,%ebx
	movl $4,%eax
	leal next,%edx
	movl (%edx),%ecx
	movl %ecx,20(%esp)
	movl %eax,%ecx
	movl 20(%esp),%eax
	shll %cl, %eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $0,%eax
	cmpl %eax,%ebx
	jne join_l118
join_l119:
	nop
	leal i_52,%eax
	movl $-40,%ebx
	leal 40(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	nop
	call err
join_l117:
	nop
	nop
	jmp L.49
join_l118:
	jmp L.49
L.49:
	nop
	movl $12,%eax
	leal words,%ecx
	addl %eax,%ecx
	movl $4,%eax
	leal next,%edx
	movl (%edx),%ebx
	movl %ecx,24(%esp)
	movl %eax,%ecx
	shll %cl, %ebx
	movl 24(%esp),%ecx
	addl %ecx,%ebx
	movl $-40,%ecx
	leal 40(%esp), %eax
	addl %ecx,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	nop
	call strcpy
join_l114:
	nop
	nop
	leal next,%eax
	movl (%eax),%ecx
	movl $1,%edx
	movl %ecx,%ebx
	addl %edx,%ebx
	movl %ebx,(%eax)
	leal words,%eax
	movl $4,%ebx
	movl %ecx,28(%esp)
	movl %ebx,%ecx
	movl 28(%esp),%ebx
	shll %cl, %ebx
	addl %eax,%ebx
	movl 12(%esp),%eax
	movl %ebx,(%eax)
	nop
	movl %ebx,%eax
	leal 40(%esp), %ebx
	movl $0,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .pcmap_data
stackdata_l155:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l146
.long frame_l156
.section .pcmap_data
frame_l156:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l155
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.section .pcmap
.long join_l141
.long frame_l157
.section .pcmap_data
frame_l157:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l155
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.section .pcmap
.long join_l135
.long frame_l158
.section .pcmap_data
frame_l158:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l155
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.section .pcmap
.long join_l128
.long frame_l159
.section .pcmap_data
frame_l159:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l155
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.section .pcmap
.long join_l125
.long frame_l160
.section .pcmap_data
frame_l160:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l155
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.section .pcmap
.long join_l122
.long frame_l161
.section .pcmap_data
frame_l161:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l155
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.section .pcmap
.long join_l117
.long frame_l162
.section .pcmap_data
frame_l162:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l155
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.section .pcmap
.long join_l114
.long frame_l163
.section .pcmap_data
frame_l163:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l155
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.section .text
tprint:
	leal -24(%esp), %esp
	movl $4,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	nop
initialize_continuations_l166:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l178
join_l179:
	nop
	movl $4,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	movl $-24,%ecx
	movl %eax,12(%esp)
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	nop
	call tprint
join_l177:
	nop
	nop
	nop
	leal i_68,%eax
	movl 12(%esp),%ecx
	movl (%ecx),%edx
	movl %ecx,12(%esp)
	movl $12,%ecx
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
	movl 12(%esp),%ebx
	movl %ebx,%ebp
	addl %ecx,%ebp
	movl $-16,%ecx
	movl %ebx,12(%esp)
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebp),%ecx
	movl %ecx,(%ebx)
	movl $-20,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $-24,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	nop
	call printf
join_l174:
	nop
	nop
	nop
	movl $8,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl $-24,%eax
	leal 24(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	nop
	call tprint
join_l171:
	nop
	nop
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	jmp L.66
join_l178:
	jmp L.66
L.66:
	nop
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	movl %ebx,16(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 16(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
stackdata_l186:
.long 0
.section .pcmap
.long join_l177
.long frame_l187
.section .pcmap_data
frame_l187:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l186
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff4
.section .pcmap
.long join_l174
.long frame_l188
.section .pcmap_data
frame_l188:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l186
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0xfffffffc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff4
.section .pcmap
.long join_l171
.long frame_l189
.section .pcmap_data
frame_l189:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l186
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0xfffffffc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .text
strcmp:
	leal -16(%esp), %esp
	movl $4,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	nop
initialize_continuations_l192:
	jmp L.72
L.72:
	movsbl (%edx),%eax
	movl %edx,(%esp)
	movsbl (%ecx),%edx
	cmpl %edx,%eax
	je join_l201
join_l202:
	movl (%esp),%eax
	movsbl (%eax),%edx
	movl %eax,(%esp)
	movl $0,%eax
	cmpl %eax,%edx
	jne join_l199
join_l200:
	nop
	movl $-1,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	movl %edi,8(%esp)
	leal 16(%esp), %edi
	addl %edx,%edi
	movl (%ecx),%edx
	movl %edx,(%edi)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
join_l199:
	jmp L.76
L.76:
	movsbl (%ecx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l196
join_l197:
	nop
	movl $1,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	movl %edi,8(%esp)
	leal 16(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
join_l196:
	jmp L.78
L.78:
	nop
	movsbl (%ecx),%eax
	movl (%esp),%ecx
	movsbl (%ecx),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	movl %ebx,4(%esp)
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 4(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l201:
	jmp L.71
L.71:
	movl (%esp),%edx
	movl $1,%eax
	movl %ecx,12(%esp)
	movl %edx,%ecx
	addl %eax,%ecx
	movsbl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l204
join_l205:
	nop
	movl $0,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	movl %edi,8(%esp)
	leal 16(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
join_l204:
	jmp L.74
L.74:
	movl $1,%eax
	movl 12(%esp),%edx
	addl %eax,%edx
	movl %ecx,(%esp)
	movl %edx,%ecx
	movl (%esp),%edx
	jmp L.72
.section .pcmap_data
stackdata_l213:
.long 0
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
