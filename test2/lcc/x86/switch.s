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
	leal -24(%esp), %esp
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
	leal 24(%esp), %ecx
	movl $0,%edx
	movl %ebx,12(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
Ljoin_l16:
	jmp L.8
L.8:
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %eax,16(%esp)
	call big
Ljoin_l20:
L.9:
	movl $16777216,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	jmp L.11
Ljoin_l30:
	jmp L.2
L.2:
	movsbl (%eax),%ecx
	movl $-24,%edx
	movl %ebx,12(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,20(%esp)
	call backslash
Ljoin_l37:
	movl 20(%esp),%ecx
	movsbl (%ecx),%edx
	movl $-20,%ebx
	movl %ecx,20(%esp)
	leal 24(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal i_7,%ecx
	movl $-24,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-16,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l34:
L.3:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 12(%esp),%ebx
	jmp L.5
.section .pcmap_data
Lstackdata_l44:
.long 0
.section .pcmap
.long Ljoin_l29
.long Lframe_l45
.section .pcmap_data
Lframe_l45:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l44
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l26
.long Lframe_l46
.section .pcmap_data
Lframe_l46:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l44
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l23
.long Lframe_l47
.section .pcmap_data
Lframe_l47:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l44
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l15
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l44
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l20
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l44
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xfffffff8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l37
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l44
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l34
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l44
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0x80000000
.section .text
backslash:
	leal -8(%esp), %esp
	movl $4,%edx
	leal 8(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%eax
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
	leal 8(%esp), %ecx
	movl $0,%edx
	movl %edi,4(%esp)
	leal 8(%esp), %edi
	addl %edx,%edi
	movl (%ecx),%edx
	movl %edx,(%edi)
	movl 4(%esp),%edi
	leal 8(%esp), %esp
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
Ljoin_l65:
	jmp L.22
L.22:
	movl $9,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	movl %edi,4(%esp)
	leal 8(%esp), %edi
	addl %edx,%edi
	movl (%ecx),%edx
	movl %edx,(%edi)
	movl 4(%esp),%edi
	leal 8(%esp), %esp
	ret
Ljoin_l67:
	jmp L.21
L.21:
	movl $13,%eax
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
Ljoin_l69:
	jmp L.16
L.16:
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
Ljoin_l70:
	jmp L.20
L.20:
	movl $10,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	movl %edi,4(%esp)
	leal 8(%esp), %edi
	addl %edx,%edi
	movl (%ecx),%edx
	movl %edx,(%edi)
	movl 4(%esp),%edi
	leal 8(%esp), %esp
	ret
Ljoin_l75:
	jmp L.19
L.19:
	movl $12,%eax
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
.section .text
f:
	leal -24(%esp), %esp
Linitialize_continuations_l87:
Lproc_body_start_l86:
	movl $0,%eax
	leal i_33,%ecx
	movl $-24,%edx
	movl %ebx,8(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,12(%esp)
	call printf
Ljoin_l101:
	movl $0,%eax
	jmp L.34
L.34:
	movl %eax,%ecx
	movl $1,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l97
Ljoin_l98:
	movl $20,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l95
Ljoin_l96:
	movl $4,%ecx
	leal i_50,%edx
	subl %ecx,%edx
	movl $2,%ecx
	movl %eax,%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	jmp *%edx
L.32:
	leal 24(%esp), %edx
	movl $0,%ebx
	leal 24(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl 8(%esp),%ebx
	leal 24(%esp), %esp
	ret
L.49:
	movl %eax,%ebx
	movl %ebx,12(%esp)
	jmp L.38
L.48:
	movl %eax,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.47:
	movl %eax,%edx
	jmp Ljoin_l105
Ljoin_l105:
	movl %edx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.46:
	movl %eax,%ebx
	jmp Ljoin_l106
Ljoin_l106:
	movl %ebx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.45:
	movl %eax,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.44:
	movl %eax,%edx
	jmp Ljoin_l107
Ljoin_l107:
	movl %edx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.43:
	movl %eax,%ebx
	jmp Ljoin_l108
Ljoin_l108:
	movl %ebx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.42:
	movl %eax,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.41:
	movl %eax,%edx
	jmp Ljoin_l109
Ljoin_l109:
	movl %edx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.40:
	movl %eax,%ebx
	jmp Ljoin_l110
Ljoin_l110:
	movl %ebx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
Ljoin_l95:
	jmp L.38
Ljoin_l97:
	jmp L.38
L.38:
	jmp L.39
L.39:
	movl 12(%esp),%ecx
	leal i_52,%edx
	movl $-24,%ebx
	movl %edi,16(%esp)
	leal 24(%esp), %edi
	addl %ebx,%edi
	movl %edx,(%edi)
	movl $-20,%edx
	leal 24(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	movl %ecx,12(%esp)
	movl %eax,20(%esp)
	call printf
Ljoin_l94:
	movl 16(%esp),%edi
	movl 20(%esp),%eax
	jmp L.35
L.35:
	movl $1,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l90
Ljoin_l91:
	movl $0,%ecx
	movl %ecx,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 24(%esp), %esp
	ret
Ljoin_l90:
	jmp L.34
.section .pcmap_data
Lstackdata_l114:
.long 0
.section .pcmap
.long Ljoin_l101
.long Lframe_l115
.section .pcmap_data
Lframe_l115:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l114
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l94
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l114
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffffc
.long 0xfffffff4
.long 0
.long 0
.long 0x80000000
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
	leal -24(%esp), %esp
Linitialize_continuations_l119:
Lproc_body_start_l118:
	leal i_58,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l156:
	movl $1,%eax
	movl %ebx,8(%esp)
	jmp L.59
L.59:
	movl 8(%esp),%ebx
	movl $1001,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l152
Ljoin_l153:
	movl $1004,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l150
Ljoin_l151:
	movl $4004,%ecx
	leal i_78,%edx
	subl %ecx,%edx
	movl $2,%ecx
	movl %ebx,8(%esp)
	movl %eax,%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %eax,20(%esp)
	jmp *%edx
Ljoin_l150:
	jmp Ljoin_l161
Ljoin_l161:
	movl %ebx,8(%esp)
	jmp L.77
Ljoin_l152:
	jmp Ljoin_l160
Ljoin_l160:
	movl %ebx,8(%esp)
	jmp L.76
L.76:
	movl $1,%edx
	cmpl %edx,%eax
	jl Ljoin_l148
Ljoin_l149:
	movl $8,%edx
	cmpl %edx,%eax
	jg Ljoin_l146
Ljoin_l147:
	movl $4,%edx
	leal i_80,%ebx
	subl %edx,%ebx
	movl $2,%edx
	movl %eax,%ecx
	movl %ecx,12(%esp)
	movl %edx,%ecx
	movl 12(%esp),%edx
	shll %cl, %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl %eax,20(%esp)
	jmp *%ebx
L.77:
	movl $3001,%ebx
	cmpl %ebx,%eax
	jl Ljoin_l144
Ljoin_l145:
	movl $3004,%ebx
	cmpl %ebx,%eax
	jg Ljoin_l142
Ljoin_l143:
	movl $12004,%ebx
	leal i_82,%edx
	subl %ebx,%edx
	movl $2,%ebx
	movl %eax,%ecx
	movl %ecx,16(%esp)
	movl %ebx,%ecx
	movl 16(%esp),%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %eax,20(%esp)
	jmp *%edx
L.57:
	leal 24(%esp), %edx
	movl $0,%ebx
	leal 24(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl 8(%esp),%ebx
	leal 24(%esp), %esp
	ret
L.74:
	leal i_75,%ebx
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-20,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,20(%esp)
	call printf
Ljoin_l126:
	jmp L.64
L.72:
	leal i_73,%ebx
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-20,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,20(%esp)
	call printf
Ljoin_l129:
	jmp L.64
L.69:
	leal i_70,%ebx
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-20,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,20(%esp)
	call printf
Ljoin_l135:
	movl 20(%esp),%eax
	jmp L.63
L.67:
	leal i_68,%ebx
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-20,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,20(%esp)
	call printf
Ljoin_l138:
	jmp L.64
L.65:
	leal i_66,%ebx
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-20,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,20(%esp)
	call printf
Ljoin_l141:
	jmp L.64
Ljoin_l142:
	jmp L.63
Ljoin_l144:
	jmp L.63
Ljoin_l146:
	jmp L.63
Ljoin_l148:
	jmp L.63
L.63:
	leal i_71,%ecx
	movl $-24,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-20,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %eax,20(%esp)
	call printf
Ljoin_l132:
	jmp L.64
L.64:
	movl 20(%esp),%eax
	jmp L.60
L.60:
	movl $1,%ecx
	addl %ecx,%eax
	movl $10,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l122
Ljoin_l123:
	movl $0,%ecx
	movl %ecx,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 24(%esp), %esp
	ret
Ljoin_l122:
	jmp L.59
.section .pcmap_data
Lstackdata_l165:
.long 0
.section .pcmap
.long Ljoin_l156
.long Lframe_l166
.section .pcmap_data
Lframe_l166:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l165
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l126
.long Lframe_l167
.section .pcmap_data
Lframe_l167:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l165
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l129
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l165
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l135
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l165
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l138
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l165
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l141
.long Lframe_l171
.section .pcmap_data
Lframe_l171:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l165
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l132
.long Lframe_l172
.section .pcmap_data
Lframe_l172:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l165
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -20(%esp), %esp
Linitialize_continuations_l175:
Lproc_body_start_l174:
	movl $0,%eax
	leal i_89,%ecx
	movl $-20,%edx
	movl %ebx,8(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,12(%esp)
	call printf
Ljoin_l252:
	movl $1,%eax
	jmp L.90
L.90:
	movl $264,%ecx
	cmpl %ecx,%eax
	je Ljoin_l248
Ljoin_l249:
	cmpl %ecx,%eax
	jg Ljoin_l247
L.109:
	movl $120,%ebx
	cmpl %ebx,%eax
	je Ljoin_l245
Ljoin_l246:
	cmpl %ebx,%eax
	jg Ljoin_l244
L.111:
	movl $8,%ebx
	cmpl %ebx,%eax
	je Ljoin_l242
Ljoin_l243:
	cmpl %ebx,%eax
	jl Ljoin_l241
L.113:
	movl $16,%ebx
	cmpl %ebx,%eax
	je Ljoin_l239
Ljoin_l240:
	jmp L.94
Ljoin_l239:
	jmp L.98
L.98:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l215:
	jmp L.95
Ljoin_l241:
	jmp L.94
Ljoin_l242:
	jmp L.99
L.99:
	leal i_97,%ecx
	movl $-20,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-16,%ecx
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l212:
	jmp L.95
Ljoin_l244:
	jmp L.112
L.112:
	movl $128,%ebx
	cmpl %ebx,%eax
	je Ljoin_l237
Ljoin_l238:
	cmpl %ebx,%eax
	jl Ljoin_l236
L.114:
	movl $248,%ebx
	cmpl %ebx,%eax
	je Ljoin_l234
Ljoin_l235:
	jmp L.94
Ljoin_l234:
	jmp L.103
L.103:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l200:
	jmp L.95
Ljoin_l236:
	jmp L.94
Ljoin_l237:
	jmp L.96
L.96:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l218:
	jmp L.95
Ljoin_l245:
	jmp L.100
L.100:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l209:
	jmp L.95
Ljoin_l247:
	jmp L.110
L.110:
	movl $288,%ecx
	cmpl %ecx,%eax
	je Ljoin_l232
Ljoin_l233:
	cmpl %ecx,%eax
	jg Ljoin_l231
L.115:
	movl $272,%ebx
	cmpl %ebx,%eax
	je Ljoin_l229
Ljoin_l230:
	cmpl %ebx,%eax
	jl Ljoin_l228
L.117:
	movl $280,%ebx
	cmpl %ebx,%eax
	je Ljoin_l226
Ljoin_l227:
	jmp L.94
Ljoin_l226:
	jmp L.101
L.101:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l206:
	jmp L.95
Ljoin_l228:
	jmp L.94
Ljoin_l229:
	jmp L.104
L.104:
	leal i_97,%ecx
	movl $-20,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-16,%ecx
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l197:
	jmp L.95
Ljoin_l231:
	jmp L.116
L.116:
	movl $304,%ecx
	cmpl %ecx,%eax
	je Ljoin_l224
Ljoin_l225:
	cmpl %ecx,%eax
	jg Ljoin_l223
L.118:
	movl $296,%ebx
	cmpl %ebx,%eax
	je Ljoin_l221
Ljoin_l222:
	jmp L.94
Ljoin_l221:
	jmp L.106
L.106:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l191:
	jmp L.95
Ljoin_l223:
	jmp L.119
L.119:
	movl $312,%ecx
	cmpl %ecx,%eax
	je Ljoin_l219
Ljoin_l220:
	jmp L.94
L.94:
	movl $1,%ecx
	movl 12(%esp),%edx
	addl %ecx,%edx
	jmp L.91
Ljoin_l219:
	jmp L.108
L.108:
	leal i_97,%ecx
	movl $-20,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-16,%ecx
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l185:
	jmp L.95
Ljoin_l224:
	jmp L.105
L.105:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l194:
	jmp L.95
Ljoin_l232:
	jmp L.107
L.107:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l188:
	jmp L.95
Ljoin_l248:
	jmp L.102
L.102:
	leal i_97,%ebx
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %eax,16(%esp)
	call printf
Ljoin_l203:
	jmp L.95
L.95:
	movl 12(%esp),%edx
	movl 16(%esp),%eax
	jmp L.91
L.91:
	movl $1,%ecx
	addl %ecx,%eax
	movl $500,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l181
Ljoin_l182:
	leal i_120,%ecx
	movl $-20,%ebx
	leal 20(%esp), %eax
	addl %ebx,%eax
	movl %ecx,(%eax)
	movl $-16,%eax
	leal 20(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	call printf
Ljoin_l180:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 20(%esp), %esp
	ret
Ljoin_l181:
	jmp Ljoin_l256
Ljoin_l256:
	movl %edx,12(%esp)
	jmp L.90
.section .pcmap_data
Lstackdata_l260:
.long 0
.section .pcmap
.long Ljoin_l252
.long Lframe_l261
.section .pcmap_data
Lframe_l261:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
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
.long 0x80000000
.section .pcmap
.long Ljoin_l215
.long Lframe_l262
.section .pcmap_data
Lframe_l262:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l212
.long Lframe_l263
.section .pcmap_data
Lframe_l263:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l200
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l218
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l209
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l206
.long Lframe_l267
.section .pcmap_data
Lframe_l267:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l197
.long Lframe_l268
.section .pcmap_data
Lframe_l268:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l191
.long Lframe_l269
.section .pcmap_data
Lframe_l269:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l185
.long Lframe_l270
.section .pcmap_data
Lframe_l270:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l194
.long Lframe_l271
.section .pcmap_data
Lframe_l271:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l188
.long Lframe_l272
.section .pcmap_data
Lframe_l272:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l203
.long Lframe_l273
.section .pcmap_data
Lframe_l273:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.section .pcmap
.long Ljoin_l180
.long Lframe_l274
.section .pcmap_data
Lframe_l274:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l260
.long 0x80000008
.long 0x80000010
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0x80000000
.section .text
big:
	leal -16(%esp), %esp
	movl $4,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l277:
Lproc_body_start_l276:
	movl $100663296,%ecx
	movl %eax,%edx
	andl %ecx,%edx
	movl %edx,%ecx
	movl %eax,8(%esp)
	movl $33554432,%eax
	cmpl %eax,%ecx
	je Ljoin_l301
Ljoin_l302:
	cmpl %eax,%ecx
	jg Ljoin_l300
L.146:
	movl $-2,%eax
	cmpl %eax,%edx
	je Ljoin_l298
Ljoin_l299:
	movl $-1,%eax
	cmpl %eax,%edx
	je Ljoin_l296
Ljoin_l297:
	movl $0,%eax
	cmpl %eax,%edx
	je Ljoin_l294
Ljoin_l295:
	jmp L.138
Ljoin_l294:
	jmp L.141
Ljoin_l296:
	jmp L.141
Ljoin_l298:
	jmp L.141
L.141:
	leal i_142,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%eax
	leal 16(%esp), %edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l291:
	jmp L.139
Ljoin_l300:
	jmp L.147
L.147:
	movl $67108864,%eax
	cmpl %eax,%edx
	je Ljoin_l292
Ljoin_l293:
	jmp L.138
L.138:
	leal i_145,%eax
	movl $-16,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-12,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	call printf
Ljoin_l282:
	jmp L.139
Ljoin_l292:
	jmp L.144
L.144:
	leal i_142,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%eax
	leal 16(%esp), %edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l285:
	jmp L.139
Ljoin_l301:
	jmp L.143
L.143:
	leal i_142,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%eax
	leal 16(%esp), %edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l288:
	jmp L.139
L.139:
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
Lstackdata_l309:
.long 0
.section .pcmap
.long Ljoin_l291
.long Lframe_l310
.section .pcmap_data
Lframe_l310:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l309
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l282
.long Lframe_l311
.section .pcmap_data
Lframe_l311:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l309
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l285
.long Lframe_l312
.section .pcmap_data
Lframe_l312:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l309
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l288
.long Lframe_l313
.section .pcmap_data
Lframe_l313:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l309
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .text
limit:
	leal -28(%esp), %esp
Linitialize_continuations_l316:
Lproc_body_start_l315:
	movl $-2147483648,%eax
	movl %ebp,16(%esp)
	movl %ebx,4(%esp)
	jmp L.153
L.153:
	movl 16(%esp),%ebp
	movl 4(%esp),%ebx
	movl $-2147483648,%edx
	cmpl %edx,%eax
	jl Ljoin_l365
Ljoin_l366:
	movl $-2147483644,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l363
Ljoin_l364:
	movl $2,%ecx
	movl %ebx,4(%esp)
	leal i_170,%ebx
	movl %ecx,8(%esp)
	shll %cl, %edx
	movl %eax,%ecx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movl %ebp,16(%esp)
	movl 12(%esp),%ebp
	shll %cl, %ebp
	subl %edx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl %eax,20(%esp)
	jmp *%ebx
Ljoin_l363:
	jmp Ljoin_l370
Ljoin_l370:
	movl %ebp,16(%esp)
	movl %ebx,4(%esp)
	jmp L.157
Ljoin_l365:
	jmp Ljoin_l371
Ljoin_l371:
	movl %ebp,16(%esp)
	movl %ebx,4(%esp)
	jmp L.157
L.157:
	leal i_169,%ebx
	movl $-28,%ebp
	leal 28(%esp), %edx
	addl %ebp,%edx
	movl %ebx,(%edx)
	movl %eax,20(%esp)
	call printf
Ljoin_l347:
	movl 20(%esp),%eax
	jmp L.158
L.158:
	jmp L.154
L.154:
	movl $1,%ecx
	addl %ecx,%eax
	movl $-2147483643,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l343
Ljoin_l344:
	movl $2147483647,%ecx
	movl %ecx,%eax
	jmp L.171
L.171:
	movl $2147483643,%edx
	cmpl %edx,%eax
	jl Ljoin_l341
Ljoin_l342:
	movl $2147483647,%ebx
	cmpl %ebx,%eax
	jg Ljoin_l339
Ljoin_l340:
	movl $2,%ebx
	leal i_182,%ebp
	movl %ebx,%ecx
	shll %cl, %edx
	movl %eax,%ecx
	movl %ecx,24(%esp)
	movl %ebx,%ecx
	movl 24(%esp),%ebx
	shll %cl, %ebx
	subl %edx,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl %eax,20(%esp)
	jmp *%ebp
L.152:
	leal 28(%esp), %ebp
	movl $0,%ebx
	leal 28(%esp), %edx
	addl %ebx,%edx
	movl (%ebp),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebp
	movl 4(%esp),%ebx
	leal 28(%esp), %esp
	ret
L.181:
	leal i_168,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
Ljoin_l326:
	jmp L.176
L.180:
	leal i_166,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
Ljoin_l329:
	jmp L.176
L.179:
	leal i_164,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
Ljoin_l332:
	jmp L.176
L.178:
	leal i_162,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
Ljoin_l335:
	jmp L.176
L.177:
	leal i_160,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
Ljoin_l338:
	jmp L.176
L.167:
	leal i_168,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l350:
	jmp Ljoin_l372
Ljoin_l372:
	movl 20(%esp),%eax
	jmp L.158
L.165:
	leal i_166,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l353:
	jmp Ljoin_l373
Ljoin_l373:
	movl 20(%esp),%eax
	jmp L.158
L.163:
	leal i_164,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l356:
	jmp Ljoin_l374
Ljoin_l374:
	movl 20(%esp),%eax
	jmp L.158
L.161:
	leal i_162,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l359:
	jmp Ljoin_l375
Ljoin_l375:
	movl 20(%esp),%eax
	jmp L.158
L.159:
	leal i_160,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l362:
	jmp Ljoin_l376
Ljoin_l376:
	movl 20(%esp),%eax
	jmp L.158
Ljoin_l339:
	jmp L.175
Ljoin_l341:
	jmp L.175
L.175:
	leal i_169,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
Ljoin_l323:
	jmp L.176
L.176:
	movl 20(%esp),%eax
	jmp L.172
L.172:
	movl $1,%ecx
	subl %ecx,%eax
	movl $2147483642,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l319
Ljoin_l320:
	movl $0,%ecx
	movl %ecx,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 16(%esp),%ebp
	movl 4(%esp),%ebx
	leal 28(%esp), %esp
	ret
Ljoin_l319:
	jmp L.171
Ljoin_l343:
	jmp L.153
.section .pcmap_data
Lstackdata_l380:
.long 0
.section .pcmap
.long Ljoin_l347
.long Lframe_l381
.section .pcmap_data
Lframe_l381:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l326
.long Lframe_l382
.section .pcmap_data
Lframe_l382:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l329
.long Lframe_l383
.section .pcmap_data
Lframe_l383:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l332
.long Lframe_l384
.section .pcmap_data
Lframe_l384:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l335
.long Lframe_l385
.section .pcmap_data
Lframe_l385:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l338
.long Lframe_l386
.section .pcmap_data
Lframe_l386:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l350
.long Lframe_l387
.section .pcmap_data
Lframe_l387:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l353
.long Lframe_l388
.section .pcmap_data
Lframe_l388:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l356
.long Lframe_l389
.section .pcmap_data
Lframe_l389:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l359
.long Lframe_l390
.section .pcmap_data
Lframe_l390:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l362
.long Lframe_l391
.section .pcmap_data
Lframe_l391:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l323
.long Lframe_l392
.section .pcmap_data
Lframe_l392:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l380
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
