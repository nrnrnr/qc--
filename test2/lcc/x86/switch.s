.globl main
.globl backslash
.globl f
.globl g
.globl h
.globl big
.globl limit
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -24(%esp), %esp
initialize_continuations_l4:
proc_body_start_l3:
	leal i_6,%eax
	jmp L.5
L.5:
	movsbl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l24
join_l25:
	call f
join_l23:
	call g
join_l20:
	call h
join_l17:
	movl $16777216,%eax
	jmp L.11
L.11:
	movl $117440512,%ecx
	movl %eax,%edx
	andl %ecx,%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne join_l10
join_l11:
	call limit
join_l9:
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
join_l10:
	jmp L.8
L.8:
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %eax,16(%esp)
	call big
join_l14:
L.9:
	movl $16777216,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	jmp L.11
join_l24:
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
join_l31:
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
join_l28:
L.3:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 12(%esp),%ebx
	jmp L.5
.section .pcmap_data
stackdata_l38:
.long 0
.section .pcmap
.long join_l31
.long frame_l39
.section .pcmap_data
frame_l39:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l38
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l28
.long frame_l40
.section .pcmap_data
frame_l40:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l38
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l23
.long frame_l41
.section .pcmap_data
frame_l41:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l38
.long 0x80000008
.long 0x80000003
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
.long 0
.section .pcmap
.long join_l20
.long frame_l42
.section .pcmap_data
frame_l42:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l38
.long 0x80000008
.long 0x80000003
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
.long 0
.section .pcmap
.long join_l17
.long frame_l43
.section .pcmap_data
frame_l43:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l38
.long 0x80000008
.long 0x80000003
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
.long 0
.section .pcmap
.long join_l14
.long frame_l44
.section .pcmap_data
frame_l44:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l38
.long 0x80000008
.long 0x80000003
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
.long 0xfffffff8
.long 0
.section .pcmap
.long join_l9
.long frame_l45
.section .pcmap_data
frame_l45:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l38
.long 0x80000008
.long 0x80000003
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
.long 0
.section .text
backslash:
	leal -8(%esp), %esp
	movl $4,%edx
	leal 8(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%eax
initialize_continuations_l49:
proc_body_start_l48:
	movl $102,%ecx
	cmpl %ecx,%eax
	je join_l70
join_l71:
	cmpl %ecx,%eax
	jg join_l69
L.24:
	movl $98,%ecx
	cmpl %ecx,%eax
	je join_l67
join_l68:
	jmp L.16
join_l67:
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
join_l69:
	jmp L.25
L.25:
	movl $110,%ecx
	cmpl %ecx,%eax
	je join_l65
join_l66:
	cmpl %ecx,%eax
	jl join_l64
L.26:
	movl $114,%ecx
	cmpl %ecx,%eax
	je join_l62
join_l63:
	movl $116,%ecx
	cmpl %ecx,%eax
	je join_l60
join_l61:
	movl $118,%ecx
	cmpl %ecx,%eax
	je join_l58
join_l59:
	jmp L.16
join_l58:
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
join_l60:
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
join_l62:
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
join_l64:
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
join_l65:
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
join_l70:
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
.section .pcmap_data
stackdata_l79:
.long 0
.section .text
f:
	leal -24(%esp), %esp
initialize_continuations_l83:
proc_body_start_l82:
	movl $0,%eax
	leal i_33,%ecx
	movl $-24,%edx
	movl %ebx,8(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,12(%esp)
	call printf
join_l97:
	movl $0,%eax
	jmp L.34
L.34:
	movl %eax,%ecx
	movl $1,%ecx
	cmpl %ecx,%eax
	jl join_l93
join_l94:
	movl $20,%ecx
	cmpl %ecx,%eax
	jg join_l91
join_l92:
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
	jmp join_l101
join_l101:
	movl %edx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.46:
	movl %eax,%ebx
	jmp join_l102
join_l102:
	movl %ebx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.45:
	movl %eax,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.44:
	movl %eax,%edx
	jmp join_l103
join_l103:
	movl %edx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.43:
	movl %eax,%ebx
	jmp join_l104
join_l104:
	movl %ebx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.42:
	movl %eax,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.41:
	movl %eax,%edx
	jmp join_l105
join_l105:
	movl %edx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
L.40:
	movl %eax,%ebx
	jmp join_l106
join_l106:
	movl %ebx,%ecx
	movl %ecx,12(%esp)
	jmp L.39
join_l91:
	jmp L.38
join_l93:
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
join_l90:
	movl 16(%esp),%edi
	movl 20(%esp),%eax
	jmp L.35
L.35:
	movl $1,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	cmpl %ecx,%eax
	jle join_l86
join_l87:
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
join_l86:
	jmp L.34
.section .pcmap_data
stackdata_l110:
.long 0
.section .pcmap
.long join_l97
.long frame_l111
.section .pcmap_data
frame_l111:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l110
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l90
.long frame_l112
.section .pcmap_data
frame_l112:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l110
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
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
initialize_continuations_l116:
proc_body_start_l115:
	leal i_58,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
join_l153:
	movl $1,%eax
	movl %ebx,8(%esp)
	jmp L.59
L.59:
	movl 8(%esp),%ebx
	movl $1001,%ecx
	cmpl %ecx,%eax
	jl join_l149
join_l150:
	movl $1004,%ecx
	cmpl %ecx,%eax
	jg join_l147
join_l148:
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
join_l147:
	jmp join_l158
join_l158:
	movl %ebx,8(%esp)
	jmp L.77
join_l149:
	jmp join_l157
join_l157:
	movl %ebx,8(%esp)
	jmp L.76
L.76:
	movl $1,%edx
	cmpl %edx,%eax
	jl join_l145
join_l146:
	movl $8,%edx
	cmpl %edx,%eax
	jg join_l143
join_l144:
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
	jl join_l141
join_l142:
	movl $3004,%ebx
	cmpl %ebx,%eax
	jg join_l139
join_l140:
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
join_l123:
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
join_l126:
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
join_l132:
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
join_l135:
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
join_l138:
	jmp L.64
join_l139:
	jmp L.63
join_l141:
	jmp L.63
join_l143:
	jmp L.63
join_l145:
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
join_l129:
	jmp L.64
L.64:
	movl 20(%esp),%eax
	jmp L.60
L.60:
	movl $1,%ecx
	addl %ecx,%eax
	movl $10,%ecx
	cmpl %ecx,%eax
	jle join_l119
join_l120:
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
join_l119:
	jmp L.59
.section .pcmap_data
stackdata_l162:
.long 0
.section .pcmap
.long join_l153
.long frame_l163
.section .pcmap_data
frame_l163:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l162
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
.long join_l138
.long frame_l164
.section .pcmap_data
frame_l164:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l162
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.section .pcmap
.long join_l135
.long frame_l165
.section .pcmap_data
frame_l165:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l162
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.section .pcmap
.long join_l132
.long frame_l166
.section .pcmap_data
frame_l166:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l162
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.section .pcmap
.long join_l129
.long frame_l167
.section .pcmap_data
frame_l167:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l162
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.section .pcmap
.long join_l126
.long frame_l168
.section .pcmap_data
frame_l168:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l162
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.section .pcmap
.long join_l123
.long frame_l169
.section .pcmap_data
frame_l169:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l162
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
initialize_continuations_l173:
proc_body_start_l172:
	movl $0,%eax
	leal i_89,%ecx
	movl $-20,%edx
	movl %ebx,8(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,12(%esp)
	call printf
join_l250:
	movl $1,%eax
	jmp L.90
L.90:
	movl $264,%ecx
	cmpl %ecx,%eax
	je join_l246
join_l247:
	cmpl %ecx,%eax
	jg join_l245
L.109:
	movl $120,%ebx
	cmpl %ebx,%eax
	je join_l243
join_l244:
	cmpl %ebx,%eax
	jg join_l242
L.111:
	movl $8,%ebx
	cmpl %ebx,%eax
	je join_l240
join_l241:
	cmpl %ebx,%eax
	jl join_l239
L.113:
	movl $16,%ebx
	cmpl %ebx,%eax
	je join_l237
join_l238:
	jmp L.94
join_l237:
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
join_l213:
	jmp L.95
join_l239:
	jmp L.94
join_l240:
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
join_l210:
	jmp L.95
join_l242:
	jmp L.112
L.112:
	movl $128,%ebx
	cmpl %ebx,%eax
	je join_l235
join_l236:
	cmpl %ebx,%eax
	jl join_l234
L.114:
	movl $248,%ebx
	cmpl %ebx,%eax
	je join_l232
join_l233:
	jmp L.94
join_l232:
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
join_l198:
	jmp L.95
join_l234:
	jmp L.94
join_l235:
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
join_l216:
	jmp L.95
join_l243:
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
join_l207:
	jmp L.95
join_l245:
	jmp L.110
L.110:
	movl $288,%ecx
	cmpl %ecx,%eax
	je join_l230
join_l231:
	cmpl %ecx,%eax
	jg join_l229
L.115:
	movl $272,%ebx
	cmpl %ebx,%eax
	je join_l227
join_l228:
	cmpl %ebx,%eax
	jl join_l226
L.117:
	movl $280,%ebx
	cmpl %ebx,%eax
	je join_l224
join_l225:
	jmp L.94
join_l224:
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
join_l204:
	jmp L.95
join_l226:
	jmp L.94
join_l227:
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
join_l195:
	jmp L.95
join_l229:
	jmp L.116
L.116:
	movl $304,%ecx
	cmpl %ecx,%eax
	je join_l222
join_l223:
	cmpl %ecx,%eax
	jg join_l221
L.118:
	movl $296,%ebx
	cmpl %ebx,%eax
	je join_l219
join_l220:
	jmp L.94
join_l219:
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
join_l189:
	jmp L.95
join_l221:
	jmp L.119
L.119:
	movl $312,%ecx
	cmpl %ecx,%eax
	je join_l217
join_l218:
	jmp L.94
L.94:
	movl $1,%ecx
	movl 12(%esp),%edx
	addl %ecx,%edx
	jmp L.91
join_l217:
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
join_l183:
	jmp L.95
join_l222:
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
join_l192:
	jmp L.95
join_l230:
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
join_l186:
	jmp L.95
join_l246:
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
join_l201:
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
	jle join_l179
join_l180:
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
join_l178:
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
join_l179:
	jmp join_l254
join_l254:
	movl %edx,12(%esp)
	jmp L.90
.section .pcmap_data
stackdata_l258:
.long 0
.section .pcmap
.long join_l250
.long frame_l259
.section .pcmap_data
frame_l259:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l216
.long frame_l260
.section .pcmap_data
frame_l260:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l213
.long frame_l261
.section .pcmap_data
frame_l261:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l210
.long frame_l262
.section .pcmap_data
frame_l262:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l207
.long frame_l263
.section .pcmap_data
frame_l263:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l204
.long frame_l264
.section .pcmap_data
frame_l264:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l201
.long frame_l265
.section .pcmap_data
frame_l265:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l198
.long frame_l266
.section .pcmap_data
frame_l266:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l195
.long frame_l267
.section .pcmap_data
frame_l267:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l192
.long frame_l268
.section .pcmap_data
frame_l268:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l189
.long frame_l269
.section .pcmap_data
frame_l269:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l186
.long frame_l270
.section .pcmap_data
frame_l270:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l183
.long frame_l271
.section .pcmap_data
frame_l271:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l178
.long frame_l272
.section .pcmap_data
frame_l272:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l258
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000000
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
.section .text
big:
	leal -16(%esp), %esp
	movl $4,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l276:
proc_body_start_l275:
	movl $100663296,%ecx
	movl %eax,%edx
	andl %ecx,%edx
	movl %edx,%ecx
	movl %eax,8(%esp)
	movl $33554432,%eax
	cmpl %eax,%ecx
	je join_l300
join_l301:
	cmpl %eax,%ecx
	jg join_l299
L.146:
	movl $-2,%eax
	cmpl %eax,%edx
	je join_l297
join_l298:
	movl $-1,%eax
	cmpl %eax,%edx
	je join_l295
join_l296:
	movl $0,%eax
	cmpl %eax,%edx
	je join_l293
join_l294:
	jmp L.138
join_l293:
	jmp L.141
join_l295:
	jmp L.141
join_l297:
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
join_l290:
	jmp L.139
join_l299:
	jmp L.147
L.147:
	movl $67108864,%eax
	cmpl %eax,%edx
	je join_l291
join_l292:
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
join_l281:
	jmp L.139
join_l291:
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
join_l284:
	jmp L.139
join_l300:
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
join_l287:
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
stackdata_l308:
.long 0
.section .pcmap
.long join_l290
.long frame_l309
.section .pcmap_data
frame_l309:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l308
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0
.long 0
.section .pcmap
.long join_l287
.long frame_l310
.section .pcmap_data
frame_l310:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l308
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0
.long 0
.section .pcmap
.long join_l284
.long frame_l311
.section .pcmap_data
frame_l311:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l308
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0
.long 0
.section .pcmap
.long join_l281
.long frame_l312
.section .pcmap_data
frame_l312:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l308
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0
.long 0
.section .text
limit:
	leal -28(%esp), %esp
initialize_continuations_l316:
proc_body_start_l315:
	movl $-2147483648,%eax
	movl %ebp,16(%esp)
	movl %ebx,4(%esp)
	jmp L.153
L.153:
	movl 16(%esp),%ebp
	movl 4(%esp),%ebx
	movl $-2147483648,%edx
	cmpl %edx,%eax
	jl join_l365
join_l366:
	movl $-2147483644,%ecx
	cmpl %ecx,%eax
	jg join_l363
join_l364:
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
join_l363:
	jmp join_l370
join_l370:
	movl %ebp,16(%esp)
	movl %ebx,4(%esp)
	jmp L.157
join_l365:
	jmp join_l371
join_l371:
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
join_l347:
	movl 20(%esp),%eax
	jmp L.158
L.158:
	jmp L.154
L.154:
	movl $1,%ecx
	addl %ecx,%eax
	movl $-2147483643,%ecx
	cmpl %ecx,%eax
	jle join_l343
join_l344:
	movl $2147483647,%ecx
	movl %ecx,%eax
	jmp L.171
L.171:
	movl $2147483643,%edx
	cmpl %edx,%eax
	jl join_l341
join_l342:
	movl $2147483647,%ebx
	cmpl %ebx,%eax
	jg join_l339
join_l340:
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
join_l326:
	jmp L.176
L.180:
	leal i_166,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
join_l329:
	jmp L.176
L.179:
	leal i_164,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
join_l332:
	jmp L.176
L.178:
	leal i_162,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
join_l335:
	jmp L.176
L.177:
	leal i_160,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
join_l338:
	jmp L.176
L.167:
	leal i_168,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
join_l350:
	jmp join_l372
join_l372:
	movl 20(%esp),%eax
	jmp L.158
L.165:
	leal i_166,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
join_l353:
	jmp join_l373
join_l373:
	movl 20(%esp),%eax
	jmp L.158
L.163:
	leal i_164,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
join_l356:
	jmp join_l374
join_l374:
	movl 20(%esp),%eax
	jmp L.158
L.161:
	leal i_162,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
join_l359:
	jmp join_l375
join_l375:
	movl 20(%esp),%eax
	jmp L.158
L.159:
	leal i_160,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	call printf
join_l362:
	jmp join_l376
join_l376:
	movl 20(%esp),%eax
	jmp L.158
join_l339:
	jmp L.175
join_l341:
	jmp L.175
L.175:
	leal i_169,%ebx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl %eax,20(%esp)
	call printf
join_l323:
	jmp L.176
L.176:
	movl 20(%esp),%eax
	jmp L.172
L.172:
	movl $1,%ecx
	subl %ecx,%eax
	movl $2147483642,%ecx
	cmpl %ecx,%eax
	jge join_l319
join_l320:
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
join_l319:
	jmp L.171
join_l343:
	jmp L.153
.section .pcmap_data
stackdata_l380:
.long 0
.section .pcmap
.long join_l362
.long frame_l381
.section .pcmap_data
frame_l381:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l359
.long frame_l382
.section .pcmap_data
frame_l382:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l356
.long frame_l383
.section .pcmap_data
frame_l383:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l353
.long frame_l384
.section .pcmap_data
frame_l384:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l350
.long frame_l385
.section .pcmap_data
frame_l385:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l347
.long frame_l386
.section .pcmap_data
frame_l386:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l338
.long frame_l387
.section .pcmap_data
frame_l387:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l335
.long frame_l388
.section .pcmap_data
frame_l388:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l332
.long frame_l389
.section .pcmap_data
frame_l389:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l329
.long frame_l390
.section .pcmap_data
frame_l390:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l326
.long frame_l391
.section .pcmap_data
frame_l391:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l323
.long frame_l392
.section .pcmap_data
frame_l392:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l380
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
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
