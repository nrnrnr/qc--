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
Linitialize_continuations_l10:
Lproc_body_start_l9:
	leal i_6,%eax
	jmp L.5
L.5:
	movsbl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l30
Ljoin_l31:
	call f
Ljoin_l29:
	call g
Ljoin_l26:
	call h
Ljoin_l23:
	movl $16777216,%eax
	jmp L.11
L.11:
	movl $117440512,%ecx
	movl %eax,%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l16
Ljoin_l17:
	call limit
Ljoin_l15:
	movl $0,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,12(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l16:
	jmp L.8
L.8:
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl %eax,24(%esp)
	call big
Ljoin_l20:
L.9:
	movl $16777216,%edx
	movl 24(%esp),%ecx
	addl %edx,%ecx
	movl %ecx,%eax
	jmp L.11
Ljoin_l30:
	jmp L.2
L.2:
	movsbl (%eax),%ecx
	leal 28(%esp), %edx
	movl %edi,16(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl %eax,20(%esp)
	call backslash
Ljoin_l37:
	movl 20(%esp),%edi
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
	movl 20(%esp),%edx
	addl %edi,%edx
	movl %edx,%eax
	movl 16(%esp),%edi
	jmp L.5
.section .pcmap_data
Lstackdata_l44:
.long 0
.section .pcmap
.long Ljoin_l29
.long Lframe_l45
.section .pcmap_data
Lframe_l45:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l26
.long Lframe_l46
.section .pcmap_data
Lframe_l46:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l47
.section .pcmap_data
Lframe_l47:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l20
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
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
.long 0x4000000b
.long 0
.long 0xfffffffc
.long 0
.long 0
.section .pcmap
.long Ljoin_l37
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l34
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff4
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .text
backslash:
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
Linitialize_continuations_l54:
Lproc_body_start_l53:
	movl $102,%edx
	cmpl %edx,%eax
	je Ljoin_l75
Ljoin_l76:
	cmpl %edx,%eax
	jg Ljoin_l74
L.24:
	movl $98,%edx
	cmpl %edx,%eax
	je Ljoin_l72
Ljoin_l73:
	jmp L.16
Ljoin_l72:
	jmp L.18
L.18:
	movl $8,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,24(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l74:
	jmp L.25
L.25:
	movl $110,%edx
	cmpl %edx,%eax
	je Ljoin_l70
Ljoin_l71:
	cmpl %edx,%eax
	jl Ljoin_l69
L.26:
	movl $114,%edx
	cmpl %edx,%eax
	je Ljoin_l67
Ljoin_l68:
	movl $116,%edx
	cmpl %edx,%eax
	je Ljoin_l65
Ljoin_l66:
	movl $118,%edx
	cmpl %edx,%eax
	je Ljoin_l63
Ljoin_l64:
	jmp L.16
Ljoin_l63:
	jmp L.23
L.23:
	movl $11,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,4(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l65:
	jmp L.22
L.22:
	movl $9,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l67:
	jmp L.21
L.21:
	movl $13,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,12(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l69:
	jmp L.16
L.16:
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l70:
	jmp L.20
L.20:
	movl $10,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,16(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l75:
	jmp L.19
L.19:
	movl $12,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,20(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
.section .text
f:
	leal -20(%esp), %esp
Linitialize_continuations_l87:
Lproc_body_start_l86:
	movl $0,%eax
	leal i_33,%ecx
	leal 20(%esp), %edx
	movl %edi,8(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl %eax,12(%esp)
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
	leal 20(%esp), %edx
	leal 20(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
	ret
L.49:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.38
L.48:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
L.47:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
L.46:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
L.45:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
L.44:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
L.43:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
L.42:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
L.41:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
L.40:
	movl %edx,%edi
	movl %edi,12(%esp)
	jmp L.39
Ljoin_l95:
	jmp L.38
Ljoin_l97:
	jmp L.38
L.38:
	jmp L.39
L.39:
	movl 12(%esp),%edi
	leal i_52,%eax
	leal 20(%esp), %ecx
	movl $-20,%edi
	addl %edi,%ecx
	movl %eax,(%ecx)
	leal 20(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	movl 12(%esp),%eax
	movl %eax,(%edi)
	movl %edx,16(%esp)
	call printf
Ljoin_l94:
	movl 16(%esp),%edx
	jmp L.35
L.35:
	movl $1,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l90
Ljoin_l91:
	movl $0,%eax
	leal 20(%esp), %edx
	leal 20(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
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
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
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
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
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
	leal -28(%esp), %esp
Linitialize_continuations_l113:
Lproc_body_start_l112:
	leal i_58,%eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l150:
	movl $1,%edx
	movl %edx,8(%esp)
	jmp L.59
L.59:
	movl 8(%esp),%edx
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
	leal i_78,%ecx
	movl %edx,8(%esp)
	movl $4004,%edx
	subl %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	movl %edi,20(%esp)
	jmp *%edx
Ljoin_l144:
	movl %edx,8(%esp)
	jmp L.77
Ljoin_l146:
	jmp Ljoin_l154
Ljoin_l154:
	movl %edx,8(%esp)
	jmp L.76
L.76:
	movl $1,%edx
	movl 8(%esp),%eax
	cmpl %edx,%eax
	jl Ljoin_l142
Ljoin_l143:
	movl $8,%edx
	cmpl %edx,%eax
	jg Ljoin_l140
Ljoin_l141:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal i_80,%ecx
	movl %edx,12(%esp)
	movl $4,%edx
	subl %edx,%ecx
	movl 12(%esp),%edx
	addl %ecx,%edx
	movl (%edx),%edx
	movl %edi,20(%esp)
	jmp *%edx
L.77:
	movl 8(%esp),%eax
	movl $3001,%edx
	cmpl %edx,%eax
	jl Ljoin_l138
Ljoin_l139:
	movl $3004,%edx
	cmpl %edx,%eax
	jg Ljoin_l136
Ljoin_l137:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal i_82,%ecx
	movl %edx,16(%esp)
	movl $12004,%edx
	subl %edx,%ecx
	movl 16(%esp),%edx
	addl %ecx,%edx
	movl (%edx),%edx
	movl %edi,20(%esp)
	jmp *%edx
L.57:
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
L.74:
	movl 8(%esp),%eax
	leal i_75,%ecx
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 28(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l120:
	jmp L.64
L.72:
	movl 8(%esp),%eax
	leal i_73,%ecx
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 28(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l123:
	jmp L.64
L.69:
	movl 8(%esp),%eax
	leal i_70,%ecx
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 28(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l129:
	movl 20(%esp),%edi
	jmp L.63
L.67:
	movl 8(%esp),%eax
	leal i_68,%ecx
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 28(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l132:
	jmp L.64
L.65:
	movl 8(%esp),%eax
	leal i_66,%ecx
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 28(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
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
	movl 8(%esp),%eax
	leal i_71,%ecx
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 28(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l126:
	jmp L.64
L.64:
	movl 20(%esp),%edi
	jmp L.60
L.60:
	movl 8(%esp),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $10,%edx
	cmpl %edx,%eax
	jle Ljoin_l116
Ljoin_l117:
	movl $0,%eax
	leal 28(%esp), %edx
	leal 28(%esp), %ecx
	movl %edx,24(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l116:
	jmp Ljoin_l155
Ljoin_l155:
	movl %eax,8(%esp)
	jmp L.59
.section .pcmap_data
Lstackdata_l159:
.long 0
.section .pcmap
.long Ljoin_l150
.long Lframe_l160
.section .pcmap_data
Lframe_l160:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l159
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l120
.long Lframe_l161
.section .pcmap_data
Lframe_l161:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l159
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
.long 0xfffffff8
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l123
.long Lframe_l162
.section .pcmap_data
Lframe_l162:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l159
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
.long 0xfffffff8
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l129
.long Lframe_l163
.section .pcmap_data
Lframe_l163:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l159
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
.long 0xfffffff8
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l132
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l159
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
.long 0xfffffff8
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l135
.long Lframe_l165
.section .pcmap_data
Lframe_l165:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l159
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
.long 0xfffffff8
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l126
.long Lframe_l166
.section .pcmap_data
Lframe_l166:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l159
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
.long 0xfffffff8
.long 0xffffffec
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
	leal -16(%esp), %esp
Linitialize_continuations_l169:
Lproc_body_start_l168:
	movl $0,%eax
	leal i_89,%ecx
	leal 16(%esp), %edx
	movl %edi,8(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl %eax,12(%esp)
	call printf
Ljoin_l246:
	movl $1,%edi
	jmp L.90
L.90:
	movl $264,%eax
	cmpl %eax,%edi
	je Ljoin_l242
Ljoin_l243:
	cmpl %eax,%edi
	jg Ljoin_l241
L.109:
	movl $120,%eax
	cmpl %eax,%edi
	je Ljoin_l239
Ljoin_l240:
	cmpl %eax,%edi
	jg Ljoin_l238
L.111:
	movl $8,%eax
	cmpl %eax,%edi
	je Ljoin_l236
Ljoin_l237:
	cmpl %eax,%edi
	jl Ljoin_l235
L.113:
	movl $16,%eax
	cmpl %eax,%edi
	je Ljoin_l233
Ljoin_l234:
	jmp L.94
Ljoin_l233:
	jmp L.98
L.98:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l209:
	jmp L.95
Ljoin_l235:
	jmp L.94
Ljoin_l236:
	jmp L.99
L.99:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l206:
	jmp L.95
Ljoin_l238:
	jmp L.112
L.112:
	movl $128,%eax
	cmpl %eax,%edi
	je Ljoin_l231
Ljoin_l232:
	cmpl %eax,%edi
	jl Ljoin_l230
L.114:
	movl $248,%eax
	cmpl %eax,%edi
	je Ljoin_l228
Ljoin_l229:
	jmp L.94
Ljoin_l228:
	jmp L.103
L.103:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l194:
	jmp L.95
Ljoin_l230:
	jmp L.94
Ljoin_l231:
	jmp L.96
L.96:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l212:
	jmp L.95
Ljoin_l239:
	jmp L.100
L.100:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l203:
	jmp L.95
Ljoin_l241:
	jmp L.110
L.110:
	movl $288,%eax
	cmpl %eax,%edi
	je Ljoin_l226
Ljoin_l227:
	cmpl %eax,%edi
	jg Ljoin_l225
L.115:
	movl $272,%eax
	cmpl %eax,%edi
	je Ljoin_l223
Ljoin_l224:
	cmpl %eax,%edi
	jl Ljoin_l222
L.117:
	movl $280,%eax
	cmpl %eax,%edi
	je Ljoin_l220
Ljoin_l221:
	jmp L.94
Ljoin_l220:
	jmp L.101
L.101:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l200:
	jmp L.95
Ljoin_l222:
	jmp L.94
Ljoin_l223:
	jmp L.104
L.104:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l191:
	jmp L.95
Ljoin_l225:
	jmp L.116
L.116:
	movl $304,%eax
	cmpl %eax,%edi
	je Ljoin_l218
Ljoin_l219:
	cmpl %eax,%edi
	jg Ljoin_l217
L.118:
	movl $296,%eax
	cmpl %eax,%edi
	je Ljoin_l215
Ljoin_l216:
	jmp L.94
Ljoin_l215:
	jmp L.106
L.106:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l185:
	jmp L.95
Ljoin_l217:
	jmp L.119
L.119:
	movl $312,%eax
	cmpl %eax,%edi
	je Ljoin_l213
Ljoin_l214:
	jmp L.94
L.94:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	jmp L.91
Ljoin_l213:
	jmp L.108
L.108:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l179:
	jmp L.95
Ljoin_l218:
	jmp L.105
L.105:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l188:
	jmp L.95
Ljoin_l226:
	jmp L.107
L.107:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l182:
	jmp L.95
Ljoin_l242:
	jmp L.102
L.102:
	leal i_97,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l197:
	jmp L.95
L.95:
	movl 12(%esp),%ecx
	jmp L.91
L.91:
	movl $1,%eax
	addl %eax,%edi
	movl $500,%eax
	cmpl %eax,%edi
	jle Ljoin_l175
Ljoin_l176:
	leal i_120,%edi
	leal 16(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal 16(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl %ecx,(%edi)
	call printf
Ljoin_l174:
	movl $0,%eax
	leal 16(%esp), %edx
	leal 16(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
Ljoin_l175:
	jmp Ljoin_l250
Ljoin_l250:
	movl %ecx,12(%esp)
	jmp L.90
.section .pcmap_data
Lstackdata_l254:
.long 0
.section .pcmap
.long Ljoin_l246
.long Lframe_l255
.section .pcmap_data
Lframe_l255:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l209
.long Lframe_l256
.section .pcmap_data
Lframe_l256:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l206
.long Lframe_l257
.section .pcmap_data
Lframe_l257:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l194
.long Lframe_l258
.section .pcmap_data
Lframe_l258:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l212
.long Lframe_l259
.section .pcmap_data
Lframe_l259:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l203
.long Lframe_l260
.section .pcmap_data
Lframe_l260:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l200
.long Lframe_l261
.section .pcmap_data
Lframe_l261:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l191
.long Lframe_l262
.section .pcmap_data
Lframe_l262:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l185
.long Lframe_l263
.section .pcmap_data
Lframe_l263:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l179
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l188
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l182
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l197
.long Lframe_l267
.section .pcmap_data
Lframe_l267:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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
.long Ljoin_l174
.long Lframe_l268
.section .pcmap_data
Lframe_l268:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
.long 8
.long 16
.long 0
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
big:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l271:
Lproc_body_start_l270:
	movl $100663296,%ecx
	movl %eax,%edx
	andl %ecx,%edx
	movl %edx,%ecx
	movl %edi,8(%esp)
	movl $33554432,%edi
	cmpl %edi,%ecx
	je Ljoin_l295
Ljoin_l296:
	cmpl %edi,%ecx
	jg Ljoin_l294
L.146:
	movl $-2,%edi
	cmpl %edi,%edx
	je Ljoin_l292
Ljoin_l293:
	movl $-1,%edi
	cmpl %edi,%edx
	je Ljoin_l290
Ljoin_l291:
	movl $0,%edi
	cmpl %edi,%edx
	je Ljoin_l288
Ljoin_l289:
	jmp L.138
Ljoin_l288:
	jmp L.141
Ljoin_l290:
	jmp L.141
Ljoin_l292:
	jmp L.141
L.141:
	leal i_142,%edi
	leal 12(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l285:
	jmp L.139
Ljoin_l294:
	jmp L.147
L.147:
	movl $67108864,%edi
	cmpl %edi,%edx
	je Ljoin_l286
Ljoin_l287:
	jmp L.138
L.138:
	leal i_145,%edi
	leal 12(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l276:
	jmp L.139
Ljoin_l286:
	jmp L.144
L.144:
	leal i_142,%edi
	leal 12(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l279:
	jmp L.139
Ljoin_l295:
	jmp L.143
L.143:
	leal i_142,%edi
	leal 12(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l282:
	jmp L.139
L.139:
	movl $0,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l303:
.long 0
.section .pcmap
.long Ljoin_l285
.long Lframe_l304
.section .pcmap_data
Lframe_l304:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l303
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
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l276
.long Lframe_l305
.section .pcmap_data
Lframe_l305:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l303
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
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l279
.long Lframe_l306
.section .pcmap_data
Lframe_l306:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l303
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
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l282
.long Lframe_l307
.section .pcmap_data
Lframe_l307:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l303
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
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
limit:
	leal -20(%esp), %esp
Linitialize_continuations_l310:
Lproc_body_start_l309:
	movl $-2147483648,%eax
	movl %edi,4(%esp)
	jmp L.153
L.153:
	movl 4(%esp),%edi
	movl $-2147483648,%edx
	cmpl %edx,%eax
	jl Ljoin_l359
Ljoin_l360:
	movl $-2147483644,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l357
Ljoin_l358:
	movl $2,%ecx
	movl %edi,4(%esp)
	movl %eax,%edi
	movl %ecx,8(%esp)
	shll %cl, %edi
	movl 8(%esp),%ecx
	shll %cl, %edx
	subl %edx,%edi
	leal i_170,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl %eax,12(%esp)
	jmp *%edi
Ljoin_l357:
	jmp Ljoin_l364
Ljoin_l364:
	movl %edi,4(%esp)
	jmp L.157
Ljoin_l359:
	jmp Ljoin_l365
Ljoin_l365:
	movl %edi,4(%esp)
	jmp L.157
L.157:
	leal i_169,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l341:
	movl 12(%esp),%eax
	jmp L.158
L.158:
	jmp L.154
L.154:
	movl $1,%edx
	addl %edx,%eax
	movl $-2147483643,%edx
	cmpl %edx,%eax
	jle Ljoin_l337
Ljoin_l338:
	movl $2147483647,%edx
	movl %edx,%eax
	jmp L.171
L.171:
	movl $2147483643,%edx
	cmpl %edx,%eax
	jl Ljoin_l335
Ljoin_l336:
	movl $2147483647,%edi
	cmpl %edi,%eax
	jg Ljoin_l333
Ljoin_l334:
	movl $2,%ecx
	movl %eax,%edi
	movl %ecx,16(%esp)
	shll %cl, %edi
	movl 16(%esp),%ecx
	shll %cl, %edx
	subl %edx,%edi
	leal i_182,%edx
	addl %edx,%edi
	movl (%edi),%edx
	movl %eax,12(%esp)
	jmp *%edx
L.152:
	leal 20(%esp), %edx
	leal 20(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
L.181:
	leal i_168,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l320:
	jmp L.176
L.180:
	leal i_166,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l323:
	jmp L.176
L.179:
	leal i_164,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l326:
	jmp L.176
L.178:
	leal i_162,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l329:
	jmp L.176
L.177:
	leal i_160,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l332:
	jmp L.176
L.167:
	leal i_168,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	call printf
Ljoin_l344:
	jmp Ljoin_l370
Ljoin_l370:
	movl 12(%esp),%eax
	jmp L.158
L.165:
	leal i_166,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	call printf
Ljoin_l347:
	jmp Ljoin_l369
Ljoin_l369:
	movl 12(%esp),%eax
	jmp L.158
L.163:
	leal i_164,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	call printf
Ljoin_l350:
	jmp Ljoin_l368
Ljoin_l368:
	movl 12(%esp),%eax
	jmp L.158
L.161:
	leal i_162,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	call printf
Ljoin_l353:
	jmp Ljoin_l367
Ljoin_l367:
	movl 12(%esp),%eax
	jmp L.158
L.159:
	leal i_160,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	call printf
Ljoin_l356:
	jmp Ljoin_l366
Ljoin_l366:
	movl 12(%esp),%eax
	jmp L.158
Ljoin_l333:
	jmp L.175
Ljoin_l335:
	jmp L.175
L.175:
	leal i_169,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l317:
	jmp L.176
L.176:
	movl 12(%esp),%eax
	jmp L.172
L.172:
	movl $1,%edx
	subl %edx,%eax
	movl $2147483642,%edx
	cmpl %edx,%eax
	jge Ljoin_l313
Ljoin_l314:
	movl $0,%eax
	leal 20(%esp), %edx
	leal 20(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
Ljoin_l313:
	jmp L.171
Ljoin_l337:
	jmp L.153
.section .pcmap_data
Lstackdata_l374:
.long 0
.section .pcmap
.long Ljoin_l341
.long Lframe_l375
.section .pcmap_data
Lframe_l375:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l320
.long Lframe_l376
.section .pcmap_data
Lframe_l376:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l323
.long Lframe_l377
.section .pcmap_data
Lframe_l377:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l326
.long Lframe_l378
.section .pcmap_data
Lframe_l378:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l329
.long Lframe_l379
.section .pcmap_data
Lframe_l379:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l332
.long Lframe_l380
.section .pcmap_data
Lframe_l380:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l344
.long Lframe_l381
.section .pcmap_data
Lframe_l381:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l347
.long Lframe_l382
.section .pcmap_data
Lframe_l382:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l350
.long Lframe_l383
.section .pcmap_data
Lframe_l383:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l353
.long Lframe_l384
.section .pcmap_data
Lframe_l384:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l356
.long Lframe_l385
.section .pcmap_data
Lframe_l385:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l317
.long Lframe_l386
.section .pcmap_data
Lframe_l386:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
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
.long 0xfffffff0
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
