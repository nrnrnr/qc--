.globl main
.globl backslash
.globl f
.globl g
.globl h
.globl big
.globl limit
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l10:
Lproc_body_start_l9:
	leal i_6,%ecx
	jmp L.5
L.5:
	movsbl (%ecx),%edx
	movl %edi,12(%esp)
	movl $0,%edi
	cmpl %edi,%edx
	jne Ljoin_l30
Ljoin_l31:
	movl %eax,16(%esp)
	call f
Ljoin_l29:
	call g
Ljoin_l26:
	call h
Ljoin_l23:
	movl $16777216,%edi
	jmp L.11
L.11:
	movl $117440512,%eax
	movl %edi,%ecx
	andl %eax,%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l16
Ljoin_l17:
	call limit
Ljoin_l15:
	movl $0,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%edi
	leal 28(%esp), %esp
	ret
Ljoin_l16:
	jmp L.8
L.8:
	leal 28(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call big
Ljoin_l20:
L.9:
	movl $16777216,%edx
	addl %edx,%edi
	jmp L.11
Ljoin_l30:
	jmp L.2
L.2:
	movsbl (%ecx),%edi
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl 20(%esp),%edi
	movl %edi,(%edx)
	movl %eax,16(%esp)
	movl %ecx,24(%esp)
	call backslash
Ljoin_l37:
	movl 24(%esp),%edi
	movsbl (%edi),%ecx
	leal 28(%esp), %edx
	movl $-24,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal i_7,%edi
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 28(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l34:
L.3:
	movl $1,%edi
	movl 24(%esp),%edx
	addl %edi,%edx
	movl %edx,%ecx
	movl 12(%esp),%edi
	movl 16(%esp),%eax
	jmp L.5
.section .pcmap_data
Lstackdata_l44:
.long 0
.section .pcmap
.long Ljoin_l29
.long Lframe_l45
.section .pcmap_data
Lframe_l45:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l44
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l26
.long Lframe_l46
.section .pcmap_data
Lframe_l46:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l44
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l47
.section .pcmap_data
Lframe_l47:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l44
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l44
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l20
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l44
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0x4000000b
.long 0
.long 0
.section .pcmap
.long Ljoin_l37
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l44
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0xfffffffc
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l34
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long Lstackdata_l44
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0xfffffffc
.long 0
.long 0
.long 0
.section .text
backslash:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 4(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l54:
Lproc_body_start_l53:
	movl $102,%ecx
	cmpl %ecx,%eax
	je Ljoin_l75
Ljoin_l76:
	cmpl %ecx,%eax
	jg Ljoin_l74
L.24:
	movl $98,%ecx
	cmpl %ecx,%eax
	je Ljoin_l72
Ljoin_l73:
	jmp L.16
Ljoin_l72:
	jmp L.18
L.18:
	movl $8,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
Ljoin_l74:
	jmp L.25
L.25:
	movl $110,%ecx
	cmpl %ecx,%eax
	je Ljoin_l70
Ljoin_l71:
	cmpl %ecx,%eax
	jl Ljoin_l69
L.26:
	movl $114,%ecx
	cmpl %ecx,%eax
	je Ljoin_l67
Ljoin_l68:
	movl $116,%ecx
	cmpl %ecx,%eax
	je Ljoin_l65
Ljoin_l66:
	movl $118,%ecx
	cmpl %ecx,%eax
	je Ljoin_l63
Ljoin_l64:
	jmp L.16
Ljoin_l63:
	jmp L.23
L.23:
	movl $11,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
Ljoin_l65:
	jmp L.22
L.22:
	movl $9,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
Ljoin_l67:
	jmp L.21
L.21:
	movl $13,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
Ljoin_l69:
	jmp L.16
L.16:
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
Ljoin_l70:
	jmp L.20
L.20:
	movl $10,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
Ljoin_l75:
	jmp L.19
L.19:
	movl $12,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .text
f:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l87:
Lproc_body_start_l86:
	movl $0,%ecx
	leal i_33,%edx
	movl %edi,8(%esp)
	leal 36(%esp), %edi
	movl %edi,12(%esp)
	movl $-36,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %eax,24(%esp)
	movl %ecx,28(%esp)
	call printf
Ljoin_l101:
	movl $0,%edx
	jmp L.34
L.34:
	movl %edx,%eax
	movl $1,%eax
	cmpl %eax,%edx
	jl Ljoin_l97
Ljoin_l98:
	movl $20,%eax
	cmpl %eax,%edx
	jg Ljoin_l95
Ljoin_l96:
	movl $2,%ecx
	movl %edx,%eax
	shll %cl, %eax
	leal i_50,%ecx
	movl $4,%edi
	subl %edi,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp *%ecx
L.32:
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 36(%esp), %esp
	ret
L.49:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.38
L.48:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
L.47:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
L.46:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
L.45:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
L.44:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
L.43:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
L.42:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
L.41:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
L.40:
	movl %edx,%edi
	movl %edi,28(%esp)
	jmp L.39
Ljoin_l95:
	jmp L.38
Ljoin_l97:
	jmp L.38
L.38:
	jmp L.39
L.39:
	movl 28(%esp),%edi
	leal i_52,%esi
	leal 36(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 36(%esp), %esi
	movl $-32,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	movl %edx,32(%esp)
	call printf
Ljoin_l94:
	movl 32(%esp),%edx
	jmp L.35
L.35:
	movl $1,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l90
Ljoin_l91:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 36(%esp), %esp
	ret
Ljoin_l90:
	jmp L.34
.section .pcmap_data
Lstackdata_l108:
.long 0
.section .pcmap
.long Ljoin_l101
.long Lframe_l109
.section .pcmap_data
Lframe_l109:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long Lstackdata_l108
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l94
.long Lframe_l110
.section .pcmap_data
Lframe_l110:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long Lstackdata_l108
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
.long 0xfffffffc
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .text
.section .data
.align 4
i_50:
.long L.40
.long L.41
.long L.38
.long L.38
.long L.38
.long L.38
.long L.42
.long L.43
.long L.44
.long L.38
.long L.38
.long L.38
.long L.38
.long L.38
.long L.38
.long L.45
.long L.46
.long L.47
.long L.48
.long L.49
.section .text
g:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l113:
Lproc_body_start_l112:
	leal i_58,%ecx
	leal 20(%esp), %edx
	movl %edi,8(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl %eax,12(%esp)
	call printf
Ljoin_l150:
	movl $1,%edx
	jmp L.59
L.59:
	movl $1001,%eax
	cmpl %eax,%edx
	jl Ljoin_l146
Ljoin_l147:
	movl $1004,%eax
	cmpl %eax,%edx
	jg Ljoin_l144
Ljoin_l145:
	movl $2,%ecx
	movl %edx,%eax
	shll %cl, %eax
	leal i_78,%edi
	movl $4004,%ecx
	subl %ecx,%edi
	addl %edi,%eax
	movl (%eax),%eax
	movl %edx,16(%esp)
	jmp *%eax
Ljoin_l144:
	jmp L.77
Ljoin_l146:
	jmp L.76
L.76:
	movl $1,%eax
	cmpl %eax,%edx
	jl Ljoin_l142
Ljoin_l143:
	movl $8,%eax
	cmpl %eax,%edx
	jg Ljoin_l140
Ljoin_l141:
	movl $2,%ecx
	movl %edx,%eax
	shll %cl, %eax
	leal i_80,%edi
	movl $4,%ecx
	subl %ecx,%edi
	addl %edi,%eax
	movl (%eax),%eax
	movl %edx,16(%esp)
	jmp *%eax
L.77:
	movl $3001,%eax
	cmpl %eax,%edx
	jl Ljoin_l138
Ljoin_l139:
	movl $3004,%eax
	cmpl %eax,%edx
	jg Ljoin_l136
Ljoin_l137:
	movl $2,%ecx
	movl %edx,%eax
	shll %cl, %eax
	leal i_82,%ecx
	movl $12004,%edi
	subl %edi,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %edx,16(%esp)
	jmp *%ecx
L.57:
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
	ret
L.74:
	leal i_75,%edi
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 20(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %edx,16(%esp)
	call printf
Ljoin_l120:
	jmp L.64
L.72:
	leal i_73,%edi
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 20(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %edx,16(%esp)
	call printf
Ljoin_l123:
	jmp L.64
L.69:
	leal i_70,%edi
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 20(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %edx,16(%esp)
	call printf
Ljoin_l129:
	movl 16(%esp),%edx
	jmp L.63
L.67:
	leal i_68,%edi
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 20(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %edx,16(%esp)
	call printf
Ljoin_l132:
	jmp L.64
L.65:
	leal i_66,%edi
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 20(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %edx,16(%esp)
	call printf
Ljoin_l135:
	jmp L.64
Ljoin_l136:
	jmp L.63
Ljoin_l138:
	jmp L.63
Ljoin_l140:
	jmp L.63
Ljoin_l142:
	jmp L.63
L.63:
	leal i_71,%edi
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 20(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %edx,16(%esp)
	call printf
Ljoin_l126:
	jmp L.64
L.64:
	movl 16(%esp),%edx
	jmp L.60
L.60:
	movl $1,%ecx
	addl %ecx,%edx
	movl $10,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l116
Ljoin_l117:
	movl $0,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
	ret
Ljoin_l116:
	jmp L.59
.section .pcmap_data
Lstackdata_l157:
.long 0
.section .pcmap
.long Ljoin_l150
.long Lframe_l158
.section .pcmap_data
Lframe_l158:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l157
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l120
.long Lframe_l159
.section .pcmap_data
Lframe_l159:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l157
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l123
.long Lframe_l160
.section .pcmap_data
Lframe_l160:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l157
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l129
.long Lframe_l161
.section .pcmap_data
Lframe_l161:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l157
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l132
.long Lframe_l162
.section .pcmap_data
Lframe_l162:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l157
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l135
.long Lframe_l163
.section .pcmap_data
Lframe_l163:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l157
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l126
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l157
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
.align 4
i_78:
.long L.72
.long L.72
.long L.72
.long L.72
.section .text
.section .data
.align 4
i_80:
.long L.65
.long L.65
.long L.67
.long L.67
.long L.67
.long L.69
.long L.69
.long L.69
.section .text
.section .data
.align 4
i_82:
.long L.74
.long L.74
.long L.74
.long L.74
.section .text
h:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l167:
Lproc_body_start_l166:
	movl $0,%ecx
	leal i_89,%edx
	movl %edi,8(%esp)
	leal 32(%esp), %edi
	movl %edi,12(%esp)
	movl $-32,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %eax,24(%esp)
	movl %ecx,28(%esp)
	call printf
Ljoin_l244:
	movl $1,%edi
	jmp L.90
L.90:
	movl $264,%esi
	cmpl %esi,%edi
	je Ljoin_l240
Ljoin_l241:
	cmpl %esi,%edi
	jg Ljoin_l239
L.109:
	movl $120,%esi
	cmpl %esi,%edi
	je Ljoin_l237
Ljoin_l238:
	cmpl %esi,%edi
	jg Ljoin_l236
L.111:
	movl $8,%esi
	cmpl %esi,%edi
	je Ljoin_l234
Ljoin_l235:
	cmpl %esi,%edi
	jl Ljoin_l233
L.113:
	movl $16,%esi
	cmpl %esi,%edi
	je Ljoin_l231
Ljoin_l232:
	jmp L.94
Ljoin_l231:
	jmp L.98
L.98:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l207:
	jmp L.95
Ljoin_l233:
	jmp L.94
Ljoin_l234:
	jmp L.99
L.99:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l204:
	jmp L.95
Ljoin_l236:
	jmp L.112
L.112:
	movl $128,%esi
	cmpl %esi,%edi
	je Ljoin_l229
Ljoin_l230:
	cmpl %esi,%edi
	jl Ljoin_l228
L.114:
	movl $248,%esi
	cmpl %esi,%edi
	je Ljoin_l226
Ljoin_l227:
	jmp L.94
Ljoin_l226:
	jmp L.103
L.103:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l192:
	jmp L.95
Ljoin_l228:
	jmp L.94
Ljoin_l229:
	jmp L.96
L.96:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l210:
	jmp L.95
Ljoin_l237:
	jmp L.100
L.100:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l201:
	jmp L.95
Ljoin_l239:
	jmp L.110
L.110:
	movl $288,%esi
	cmpl %esi,%edi
	je Ljoin_l224
Ljoin_l225:
	cmpl %esi,%edi
	jg Ljoin_l223
L.115:
	movl $272,%esi
	cmpl %esi,%edi
	je Ljoin_l221
Ljoin_l222:
	cmpl %esi,%edi
	jl Ljoin_l220
L.117:
	movl $280,%esi
	cmpl %esi,%edi
	je Ljoin_l218
Ljoin_l219:
	jmp L.94
Ljoin_l218:
	jmp L.101
L.101:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l198:
	jmp L.95
Ljoin_l220:
	jmp L.94
Ljoin_l221:
	jmp L.104
L.104:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l189:
	jmp L.95
Ljoin_l223:
	jmp L.116
L.116:
	movl $304,%esi
	cmpl %esi,%edi
	je Ljoin_l216
Ljoin_l217:
	cmpl %esi,%edi
	jg Ljoin_l215
L.118:
	movl $296,%esi
	cmpl %esi,%edi
	je Ljoin_l213
Ljoin_l214:
	jmp L.94
Ljoin_l213:
	jmp L.106
L.106:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l183:
	jmp L.95
Ljoin_l215:
	jmp L.119
L.119:
	movl $312,%esi
	cmpl %esi,%edi
	je Ljoin_l211
Ljoin_l212:
	jmp L.94
L.94:
	movl $1,%esi
	movl 28(%esp),%eax
	addl %esi,%eax
	jmp L.91
Ljoin_l211:
	jmp L.108
L.108:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l177:
	jmp L.95
Ljoin_l216:
	jmp L.105
L.105:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l186:
	jmp L.95
Ljoin_l224:
	jmp L.107
L.107:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l180:
	jmp L.95
Ljoin_l240:
	jmp L.102
L.102:
	leal i_97,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l195:
	jmp L.95
L.95:
	movl 28(%esp),%eax
	jmp L.91
L.91:
	movl $1,%esi
	addl %esi,%edi
	movl $500,%esi
	cmpl %esi,%edi
	jle Ljoin_l173
Ljoin_l174:
	leal i_120,%edi
	leal 32(%esp), %esi
	movl $-32,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 32(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l172:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 32(%esp), %esp
	ret
Ljoin_l173:
	jmp Ljoin_l248
Ljoin_l248:
	movl %eax,28(%esp)
	jmp L.90
.section .pcmap_data
Lstackdata_l252:
.long 0
.section .pcmap
.long Ljoin_l244
.long Lframe_l253
.section .pcmap_data
Lframe_l253:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l207
.long Lframe_l254
.section .pcmap_data
Lframe_l254:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l204
.long Lframe_l255
.section .pcmap_data
Lframe_l255:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l192
.long Lframe_l256
.section .pcmap_data
Lframe_l256:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l210
.long Lframe_l257
.section .pcmap_data
Lframe_l257:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l201
.long Lframe_l258
.section .pcmap_data
Lframe_l258:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l198
.long Lframe_l259
.section .pcmap_data
Lframe_l259:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l189
.long Lframe_l260
.section .pcmap_data
Lframe_l260:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l183
.long Lframe_l261
.section .pcmap_data
Lframe_l261:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l177
.long Lframe_l262
.section .pcmap_data
Lframe_l262:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l186
.long Lframe_l263
.section .pcmap_data
Lframe_l263:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l180
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l195
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
.long 0x4000000b
.long 0xfffffffc
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
.long 0
.long 0
.section .pcmap
.long Ljoin_l172
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l252
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe8
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
.long 0
.long 0
.long 0
.long 0
.section .text
big:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l269:
Lproc_body_start_l268:
	movl $100663296,%edx
	movl %edi,8(%esp)
	movl %eax,%edi
	andl %edx,%edi
	movl %edi,%edx
	movl %edi,12(%esp)
	movl $33554432,%edi
	cmpl %edi,%edx
	je Ljoin_l293
Ljoin_l294:
	cmpl %edi,%edx
	jg Ljoin_l292
L.146:
	movl 12(%esp),%edi
	movl $-2,%edx
	cmpl %edx,%edi
	je Ljoin_l290
Ljoin_l291:
	movl $-1,%edx
	cmpl %edx,%edi
	je Ljoin_l288
Ljoin_l289:
	movl $0,%edx
	cmpl %edx,%edi
	je Ljoin_l286
Ljoin_l287:
	jmp L.138
Ljoin_l286:
	jmp L.141
Ljoin_l288:
	jmp L.141
Ljoin_l290:
	jmp L.141
L.141:
	leal i_142,%edi
	leal 36(%esp), %edx
	movl %edi,32(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl 32(%esp),%edi
	movl %edi,(%edx)
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl %ecx,20(%esp)
	call printf
Ljoin_l283:
	jmp L.139
Ljoin_l292:
	jmp L.147
L.147:
	movl $67108864,%edi
	movl 12(%esp),%edx
	cmpl %edi,%edx
	je Ljoin_l284
Ljoin_l285:
	jmp L.138
L.138:
	leal i_145,%edi
	leal 36(%esp), %edx
	movl %edi,16(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl 16(%esp),%edi
	movl %edi,(%edx)
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl %ecx,20(%esp)
	call printf
Ljoin_l274:
	jmp L.139
Ljoin_l284:
	jmp L.144
L.144:
	leal i_142,%edi
	leal 36(%esp), %edx
	movl %edi,24(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl 24(%esp),%edi
	movl %edi,(%edx)
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl %ecx,20(%esp)
	call printf
Ljoin_l277:
	jmp L.139
Ljoin_l293:
	jmp L.143
L.143:
	leal i_142,%edi
	leal 36(%esp), %edx
	movl %edi,28(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl 28(%esp),%edi
	movl %edi,(%edx)
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl %ecx,20(%esp)
	call printf
Ljoin_l280:
	jmp L.139
L.139:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l301:
.long 0
.section .pcmap
.long Ljoin_l283
.long Lframe_l302
.section .pcmap_data
Lframe_l302:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l301
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l274
.long Lframe_l303
.section .pcmap_data
Lframe_l303:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l301
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l277
.long Lframe_l304
.section .pcmap_data
Lframe_l304:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l301
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l280
.long Lframe_l305
.section .pcmap_data
Lframe_l305:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l301
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
limit:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l308:
Lproc_body_start_l307:
	movl $-2147483648,%edx
	movl %edi,4(%esp)
	movl %eax,28(%esp)
	jmp L.153
L.153:
	movl 28(%esp),%eax
	movl 4(%esp),%edi
	movl $-2147483648,%ecx
	cmpl %ecx,%edx
	jl Ljoin_l357
Ljoin_l358:
	movl %edi,4(%esp)
	movl $-2147483644,%edi
	cmpl %edi,%edx
	jg Ljoin_l355
Ljoin_l356:
	movl $2,%edi
	movl %edi,8(%esp)
	movl %edx,%edi
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	shll %cl, %edi
	movl 12(%esp),%ecx
	movl %ecx,16(%esp)
	movl 8(%esp),%ecx
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	shll %cl, %edi
	movl 20(%esp),%ecx
	subl %edi,%ecx
	leal i_170,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	movl %eax,28(%esp)
	movl %edx,32(%esp)
	jmp *%edi
Ljoin_l355:
	movl %eax,28(%esp)
	jmp L.157
Ljoin_l357:
	jmp Ljoin_l362
Ljoin_l362:
	movl %edi,4(%esp)
	movl %eax,28(%esp)
	jmp L.157
L.157:
	movl 28(%esp),%eax
	leal i_169,%edi
	leal 40(%esp), %ecx
	movl %edi,24(%esp)
	movl $-40,%edi
	addl %edi,%ecx
	movl 24(%esp),%edi
	movl %edi,(%ecx)
	movl %eax,28(%esp)
	movl %edx,32(%esp)
	call printf
Ljoin_l339:
	movl 28(%esp),%eax
	movl 32(%esp),%edx
	jmp L.158
L.158:
	movl 28(%esp),%eax
	movl %eax,28(%esp)
	jmp L.154
L.154:
	movl 28(%esp),%eax
	movl $1,%edi
	addl %edi,%edx
	movl $-2147483643,%edi
	cmpl %edi,%edx
	jle Ljoin_l335
Ljoin_l336:
	movl $2147483647,%edx
	movl %eax,28(%esp)
	jmp L.171
L.171:
	movl 28(%esp),%eax
	movl $2147483643,%edi
	cmpl %edi,%edx
	jl Ljoin_l333
Ljoin_l334:
	movl $2147483647,%ecx
	cmpl %ecx,%edx
	jg Ljoin_l331
Ljoin_l332:
	movl $2,%ecx
	movl %eax,28(%esp)
	movl %edx,%eax
	movl %ecx,36(%esp)
	shll %cl, %eax
	movl 36(%esp),%ecx
	shll %cl, %edi
	subl %edi,%eax
	leal i_182,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %edx,32(%esp)
	jmp *%ecx
L.152:
	leal 40(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 40(%esp), %esp
	ret
L.181:
	leal i_168,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl %edx,32(%esp)
	call printf
Ljoin_l318:
	jmp L.176
L.180:
	leal i_166,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl %edx,32(%esp)
	call printf
Ljoin_l321:
	jmp L.176
L.179:
	leal i_164,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl %edx,32(%esp)
	call printf
Ljoin_l324:
	jmp L.176
L.178:
	leal i_162,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl %edx,32(%esp)
	call printf
Ljoin_l327:
	jmp L.176
L.177:
	leal i_160,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl %edx,32(%esp)
	call printf
Ljoin_l330:
	jmp L.176
L.167:
	leal i_168,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l342:
	jmp Ljoin_l370
Ljoin_l370:
	movl 32(%esp),%edx
	jmp L.158
L.165:
	leal i_166,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l345:
	jmp Ljoin_l369
Ljoin_l369:
	movl 32(%esp),%edx
	jmp L.158
L.163:
	leal i_164,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l348:
	jmp Ljoin_l368
Ljoin_l368:
	movl 32(%esp),%edx
	jmp L.158
L.161:
	leal i_162,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l351:
	jmp Ljoin_l367
Ljoin_l367:
	movl 32(%esp),%edx
	jmp L.158
L.159:
	leal i_160,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l354:
	jmp Ljoin_l366
Ljoin_l366:
	movl 32(%esp),%edx
	jmp L.158
Ljoin_l331:
	jmp Ljoin_l363
Ljoin_l363:
	movl %eax,28(%esp)
	jmp L.175
Ljoin_l333:
	jmp Ljoin_l364
Ljoin_l364:
	movl %eax,28(%esp)
	jmp L.175
L.175:
	leal i_169,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl %edx,32(%esp)
	call printf
Ljoin_l315:
	jmp L.176
L.176:
	movl 32(%esp),%edx
	jmp L.172
L.172:
	movl $1,%ecx
	subl %ecx,%edx
	movl $2147483642,%ecx
	cmpl %ecx,%edx
	jge Ljoin_l311
Ljoin_l312:
	movl $0,%eax
	leal 40(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 40(%esp), %esp
	ret
Ljoin_l311:
	jmp L.171
Ljoin_l335:
	jmp Ljoin_l365
Ljoin_l365:
	movl %eax,28(%esp)
	jmp L.153
.section .pcmap_data
Lstackdata_l374:
.long 0
.section .pcmap
.long Ljoin_l339
.long Lframe_l375
.section .pcmap_data
Lframe_l375:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l318
.long Lframe_l376
.section .pcmap_data
Lframe_l376:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l321
.long Lframe_l377
.section .pcmap_data
Lframe_l377:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l324
.long Lframe_l378
.section .pcmap_data
Lframe_l378:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l327
.long Lframe_l379
.section .pcmap_data
Lframe_l379:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l330
.long Lframe_l380
.section .pcmap_data
Lframe_l380:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l342
.long Lframe_l381
.section .pcmap_data
Lframe_l381:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l345
.long Lframe_l382
.section .pcmap_data
Lframe_l382:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l348
.long Lframe_l383
.section .pcmap_data
Lframe_l383:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l351
.long Lframe_l384
.section .pcmap_data
Lframe_l384:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l354
.long Lframe_l385
.section .pcmap_data
Lframe_l385:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l315
.long Lframe_l386
.section .pcmap_data
Lframe_l386:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff4
.long Lstackdata_l374
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
.align 4
i_170:
.long L.159
.long L.161
.long L.163
.long L.165
.long L.167
.section .text
.section .data
.align 4
i_182:
.long L.181
.long L.180
.long L.179
.long L.178
.long L.177
.section .text
.section .data
i_169:
.byte 53
.byte 10
.byte 0
i_168:
.byte 52
.byte 10
.byte 0
i_166:
.byte 51
.byte 10
.byte 0
i_164:
.byte 50
.byte 10
.byte 0
i_162:
.byte 49
.byte 10
.byte 0
i_160:
.byte 48
.byte 10
.byte 0
i_145:
.byte 120
.byte 32
.byte 61
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 32
.byte 40
.byte 100
.byte 101
.byte 102
.byte 97
.byte 117
.byte 108
.byte 116
.byte 41
.byte 10
.byte 0
i_142:
.byte 120
.byte 32
.byte 61
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 10
.byte 0
i_120:
.byte 37
.byte 100
.byte 32
.byte 100
.byte 101
.byte 102
.byte 97
.byte 117
.byte 108
.byte 116
.byte 115
.byte 10
.byte 0
i_97:
.byte 105
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_89:
.byte 104
.byte 58
.byte 10
.byte 0
i_75:
.byte 54
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_73:
.byte 53
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_71:
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_70:
.byte 51
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_68:
.byte 50
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_66:
.byte 49
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_58:
.byte 103
.byte 58
.byte 10
.byte 0
i_52:
.byte 120
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_33:
.byte 102
.byte 58
.byte 10
.byte 0
i_7:
.byte 37
.byte 99
.byte 32
.byte 61
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 10
.byte 0
i_6:
.byte 98
.byte 102
.byte 110
.byte 114
.byte 116
.byte 118
.byte 120
.byte 0
