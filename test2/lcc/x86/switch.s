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
	nop
	nop
	leal 24(%esp), %ecx
	leal 24(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,12(%esp)
initialize_continuations_l3:
	leal i_6,%ebx
	jmp L.5
L.5:
	movsbl (%ebx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l23
join_l24:
	nop
	nop
	nop
	call f
join_l22:
	nop
	nop
	nop
	nop
	nop
	nop
	call g
join_l19:
	nop
	nop
	nop
	nop
	nop
	nop
	call h
join_l16:
	nop
	nop
	nop
	movl $16777216,%ebx
	jmp L.11
L.11:
	movl $117440512,%ecx
	movl %ebx,%eax
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l9
join_l10:
	nop
	nop
	nop
	call limit
join_l8:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
join_l9:
	jmp L.8
L.8:
	nop
	movl $-24,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call big
join_l13:
	nop
	nop
	nop
L.9:
	movl $16777216,%eax
	addl %eax,%ebx
	jmp L.11
join_l23:
	jmp L.2
L.2:
	nop
	movsbl (%ebx),%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call backslash
join_l30:
	nop
	nop
	nop
	movsbl (%ebx),%ecx
	movl %ecx,20(%esp)
	movl $-20,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal i_7,%ecx
	movl %ecx,16(%esp)
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $-16,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l27:
	nop
	nop
	nop
L.3:
	movl $1,%eax
	addl %eax,%ebx
	jmp L.5
backslash:
	leal -28(%esp), %esp
	movl $4,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 28(%esp), %ecx
	leal 28(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l39:
	movl $102,%ecx
	cmpl %ecx,%eax
	je join_l60
join_l61:
	cmpl %ecx,%eax
	jg join_l59
L.24:
	movl $98,%ecx
	cmpl %ecx,%eax
	je join_l57
join_l58:
	jmp L.16
join_l57:
	jmp L.18
L.18:
	nop
	movl $8,%eax
	leal 28(%esp), %ecx
	movl %ecx,4(%esp)
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
join_l59:
	jmp L.25
L.25:
	movl $110,%ecx
	cmpl %ecx,%eax
	je join_l55
join_l56:
	cmpl %ecx,%eax
	jl join_l54
L.26:
	movl $114,%ecx
	cmpl %ecx,%eax
	je join_l52
join_l53:
	movl $116,%ecx
	cmpl %ecx,%eax
	je join_l50
join_l51:
	movl $118,%ecx
	cmpl %ecx,%eax
	je join_l48
join_l49:
	jmp L.16
join_l48:
	jmp L.23
L.23:
	nop
	movl $11,%eax
	leal 28(%esp), %ecx
	movl %ecx,24(%esp)
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
join_l50:
	jmp L.22
L.22:
	nop
	movl $9,%eax
	leal 28(%esp), %ecx
	movl %ecx,20(%esp)
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
join_l52:
	jmp L.21
L.21:
	nop
	movl $13,%eax
	leal 28(%esp), %ecx
	movl %ecx,16(%esp)
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
join_l54:
	jmp L.16
L.16:
	nop
	leal 28(%esp), %ecx
	movl %ecx,(%esp)
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
join_l55:
	jmp L.20
L.20:
	nop
	movl $10,%eax
	leal 28(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
join_l60:
	jmp L.19
L.19:
	nop
	movl $12,%eax
	leal 28(%esp), %ecx
	movl %ecx,8(%esp)
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
f:
	leal -16(%esp), %esp
	nop
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l71:
	movl $0,%eax
	movl %eax,12(%esp)
	nop
	leal i_33,%edx
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l85:
	nop
	nop
	nop
	movl $0,%ebx
	jmp L.34
L.34:
	movl $1,%eax
	cmpl %eax,%ebx
	jl join_l81
join_l82:
	movl $20,%eax
	cmpl %eax,%ebx
	jg join_l79
join_l80:
	movl $4,%ecx
	leal i_50,%eax
	subl %ecx,%eax
	movl $2,%ecx
	movl %ebx,%edx
	shll %cl, %edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp *%eax
L.32:
	nop
	nop
	leal 16(%esp), %edx
	movl $0,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
L.49:
	movl %ebx,12(%esp)
	jmp L.38
L.48:
	movl %ebx,12(%esp)
	jmp L.39
L.47:
	movl %ebx,12(%esp)
	jmp L.39
L.46:
	movl %ebx,12(%esp)
	jmp L.39
L.45:
	movl %ebx,12(%esp)
	jmp L.39
L.44:
	movl %ebx,12(%esp)
	jmp L.39
L.43:
	movl %ebx,12(%esp)
	jmp L.39
L.42:
	movl %ebx,12(%esp)
	jmp L.39
L.41:
	movl %ebx,12(%esp)
	jmp L.39
L.40:
	movl %ebx,12(%esp)
	jmp L.39
join_l79:
	jmp L.38
join_l81:
	jmp L.38
L.38:
	jmp L.39
L.39:
	nop
	leal i_52,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call printf
join_l78:
	nop
	nop
	nop
	jmp L.35
L.35:
	movl $1,%eax
	addl %eax,%ebx
	movl $20,%eax
	cmpl %eax,%ebx
	jle join_l74
join_l75:
	nop
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l74:
	jmp L.34
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
	leal -12(%esp), %esp
	nop
	nop
	leal 12(%esp), %ecx
	leal 12(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l94:
	nop
	leal i_58,%edx
	movl $-12,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l131:
	nop
	nop
	nop
	movl $1,%ebx
	jmp L.59
L.59:
	movl $1001,%eax
	cmpl %eax,%ebx
	jl join_l127
join_l128:
	movl $1004,%eax
	cmpl %eax,%ebx
	jg join_l125
join_l126:
	movl $4004,%ecx
	leal i_78,%eax
	subl %ecx,%eax
	movl $2,%ecx
	movl %ebx,%edx
	shll %cl, %edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp *%eax
join_l125:
	jmp L.77
join_l127:
	jmp L.76
L.76:
	movl $1,%eax
	cmpl %eax,%ebx
	jl join_l123
join_l124:
	movl $8,%eax
	cmpl %eax,%ebx
	jg join_l121
join_l122:
	movl $4,%ecx
	leal i_80,%eax
	subl %ecx,%eax
	movl $2,%ecx
	movl %ebx,%edx
	shll %cl, %edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp *%eax
L.77:
	movl $3001,%eax
	cmpl %eax,%ebx
	jl join_l119
join_l120:
	movl $3004,%eax
	cmpl %eax,%ebx
	jg join_l117
join_l118:
	movl $12004,%ecx
	leal i_82,%eax
	subl %ecx,%eax
	movl $2,%ecx
	movl %ebx,%edx
	shll %cl, %edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp *%eax
L.57:
	nop
	nop
	leal 12(%esp), %edx
	movl $0,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
L.74:
	nop
	leal i_75,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l101:
	nop
	nop
	nop
	jmp L.64
L.72:
	nop
	leal i_73,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l104:
	nop
	nop
	nop
	jmp L.64
L.69:
	nop
	leal i_70,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l110:
	nop
	nop
	nop
	jmp L.63
L.67:
	nop
	leal i_68,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l113:
	nop
	nop
	nop
	jmp L.64
L.65:
	nop
	leal i_66,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l116:
	nop
	nop
	nop
	jmp L.64
join_l117:
	jmp L.63
join_l119:
	jmp L.63
join_l121:
	jmp L.63
join_l123:
	jmp L.63
L.63:
	nop
	leal i_71,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l107:
	nop
	nop
	nop
	jmp L.64
L.64:
	jmp L.60
L.60:
	movl $1,%eax
	addl %eax,%ebx
	movl $10,%eax
	cmpl %eax,%ebx
	jle join_l97
join_l98:
	nop
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
join_l97:
	jmp L.59
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
	nop
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,8(%esp)
initialize_continuations_l140:
	movl $0,%eax
	movl %eax,12(%esp)
	nop
	leal i_89,%edx
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	nop
	call printf
join_l217:
	nop
	nop
	nop
	movl $1,%ebx
	jmp L.90
L.90:
	movl $264,%eax
	cmpl %eax,%ebx
	je join_l213
join_l214:
	cmpl %eax,%ebx
	jg join_l212
L.109:
	movl $120,%eax
	cmpl %eax,%ebx
	je join_l210
join_l211:
	cmpl %eax,%ebx
	jg join_l209
L.111:
	movl $8,%eax
	cmpl %eax,%ebx
	je join_l207
join_l208:
	cmpl %eax,%ebx
	jl join_l206
L.113:
	movl $16,%eax
	cmpl %eax,%ebx
	je join_l204
join_l205:
	jmp L.94
join_l204:
	jmp L.98
L.98:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l180:
	nop
	nop
	nop
	jmp L.95
join_l206:
	jmp L.94
join_l207:
	jmp L.99
L.99:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l177:
	nop
	nop
	nop
	jmp L.95
join_l209:
	jmp L.112
L.112:
	movl $128,%eax
	cmpl %eax,%ebx
	je join_l202
join_l203:
	cmpl %eax,%ebx
	jl join_l201
L.114:
	movl $248,%eax
	cmpl %eax,%ebx
	je join_l199
join_l200:
	jmp L.94
join_l199:
	jmp L.103
L.103:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l165:
	nop
	nop
	nop
	jmp L.95
join_l201:
	jmp L.94
join_l202:
	jmp L.96
L.96:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l183:
	nop
	nop
	nop
	jmp L.95
join_l210:
	jmp L.100
L.100:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l174:
	nop
	nop
	nop
	jmp L.95
join_l212:
	jmp L.110
L.110:
	movl $288,%eax
	cmpl %eax,%ebx
	je join_l197
join_l198:
	cmpl %eax,%ebx
	jg join_l196
L.115:
	movl $272,%eax
	cmpl %eax,%ebx
	je join_l194
join_l195:
	cmpl %eax,%ebx
	jl join_l193
L.117:
	movl $280,%eax
	cmpl %eax,%ebx
	je join_l191
join_l192:
	jmp L.94
join_l191:
	jmp L.101
L.101:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l171:
	nop
	nop
	nop
	jmp L.95
join_l193:
	jmp L.94
join_l194:
	jmp L.104
L.104:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l162:
	nop
	nop
	nop
	jmp L.95
join_l196:
	jmp L.116
L.116:
	movl $304,%eax
	cmpl %eax,%ebx
	je join_l189
join_l190:
	cmpl %eax,%ebx
	jg join_l188
L.118:
	movl $296,%eax
	cmpl %eax,%ebx
	je join_l186
join_l187:
	jmp L.94
join_l186:
	jmp L.106
L.106:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l156:
	nop
	nop
	nop
	jmp L.95
join_l188:
	jmp L.119
L.119:
	movl $312,%eax
	cmpl %eax,%ebx
	je join_l184
join_l185:
	jmp L.94
L.94:
	movl $1,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	jmp L.91
join_l184:
	jmp L.108
L.108:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l150:
	nop
	nop
	nop
	jmp L.95
join_l189:
	jmp L.105
L.105:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l159:
	nop
	nop
	nop
	jmp L.95
join_l197:
	jmp L.107
L.107:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l153:
	nop
	nop
	nop
	jmp L.95
join_l213:
	jmp L.102
L.102:
	nop
	leal i_97,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call printf
join_l168:
	nop
	nop
	nop
	jmp L.95
L.95:
	jmp L.91
L.91:
	movl $1,%eax
	addl %eax,%ebx
	movl $500,%eax
	cmpl %eax,%ebx
	jle join_l146
join_l147:
	nop
	leal i_120,%edx
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $-12,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call printf
join_l145:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l146:
	jmp L.90
big:
	leal -28(%esp), %esp
	movl $4,%ecx
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,%eax
	nop
	leal 28(%esp), %ecx
	leal 28(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l226:
	movl $100663296,%edx
	movl %eax,%ecx
	andl %edx,%ecx
	movl %ecx,%edx
	movl $33554432,%ecx
	movl %ecx,%ecx
	cmpl %ecx,%edx
	je join_l250
join_l251:
	cmpl %ecx,%edx
	jg join_l249
L.146:
	movl %edx,%ecx
	movl $-2,%edx
	cmpl %edx,%ecx
	je join_l247
join_l248:
	movl $-1,%edx
	cmpl %edx,%ecx
	je join_l245
join_l246:
	movl $0,%edx
	cmpl %edx,%ecx
	je join_l243
join_l244:
	jmp L.138
join_l243:
	jmp L.141
join_l245:
	jmp L.141
join_l247:
	jmp L.141
L.141:
	nop
	leal i_142,%ecx
	movl %ecx,16(%esp)
	movl $-28,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $-24,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l240:
	nop
	nop
	nop
	jmp L.139
join_l249:
	jmp L.147
L.147:
	movl $67108864,%ecx
	cmpl %ecx,%edx
	je join_l241
join_l242:
	jmp L.138
L.138:
	nop
	leal i_145,%ecx
	movl %ecx,8(%esp)
	movl $-28,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $-24,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l231:
	nop
	nop
	nop
	jmp L.139
join_l241:
	jmp L.144
L.144:
	nop
	leal i_142,%ecx
	movl %ecx,24(%esp)
	movl $-28,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl $-24,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l234:
	nop
	nop
	nop
	jmp L.139
join_l250:
	jmp L.143
L.143:
	nop
	leal i_142,%ecx
	movl %ecx,20(%esp)
	movl $-28,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl $-24,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l237:
	nop
	nop
	nop
	jmp L.139
L.139:
	nop
	movl $0,%eax
	leal 28(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
limit:
	leal -16(%esp), %esp
	nop
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,4(%esp)
initialize_continuations_l260:
	movl $-2147483648,%ebx
	jmp L.153
L.153:
	movl $-2147483648,%eax
	cmpl %eax,%ebx
	jl join_l309
join_l310:
	movl $-2147483644,%ecx
	cmpl %ecx,%ebx
	jg join_l307
join_l308:
	movl $2,%ecx
	leal i_170,%edx
	movl %edx,12(%esp)
	shll %cl, %eax
	movl %ebx,%edx
	shll %cl, %edx
	subl %eax,%edx
	movl 12(%esp),%eax
	addl %eax,%edx
	movl (%edx),%eax
	jmp *%eax
join_l307:
	jmp L.157
join_l309:
	jmp L.157
L.157:
	nop
	leal i_169,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l291:
	nop
	nop
	nop
	jmp L.158
L.158:
	jmp L.154
L.154:
	movl $1,%eax
	addl %eax,%ebx
	movl $-2147483643,%eax
	cmpl %eax,%ebx
	jle join_l287
join_l288:
	movl $2147483647,%ebx
	jmp L.171
L.171:
	movl $2147483643,%eax
	cmpl %eax,%ebx
	jl join_l285
join_l286:
	movl $2147483647,%ecx
	cmpl %ecx,%ebx
	jg join_l283
join_l284:
	movl $2,%ecx
	leal i_182,%edx
	movl %edx,8(%esp)
	shll %cl, %eax
	movl %ebx,%edx
	shll %cl, %edx
	subl %eax,%edx
	movl 8(%esp),%eax
	addl %eax,%edx
	movl (%edx),%eax
	jmp *%eax
L.152:
	nop
	nop
	leal 16(%esp), %edx
	movl $0,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl 4(%esp),%ebx
	leal 16(%esp), %esp
	ret
L.181:
	nop
	leal i_168,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l270:
	nop
	nop
	nop
	jmp L.176
L.180:
	nop
	leal i_166,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l273:
	nop
	nop
	nop
	jmp L.176
L.179:
	nop
	leal i_164,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l276:
	nop
	nop
	nop
	jmp L.176
L.178:
	nop
	leal i_162,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l279:
	nop
	nop
	nop
	jmp L.176
L.177:
	nop
	leal i_160,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l282:
	nop
	nop
	nop
	jmp L.176
L.167:
	nop
	leal i_168,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l294:
	nop
	nop
	nop
	jmp L.158
L.165:
	nop
	leal i_166,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l297:
	nop
	nop
	nop
	jmp L.158
L.163:
	nop
	leal i_164,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l300:
	nop
	nop
	nop
	jmp L.158
L.161:
	nop
	leal i_162,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l303:
	nop
	nop
	nop
	jmp L.158
L.159:
	nop
	leal i_160,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l306:
	nop
	nop
	nop
	jmp L.158
join_l283:
	jmp L.175
join_l285:
	jmp L.175
L.175:
	nop
	leal i_169,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l267:
	nop
	nop
	nop
	jmp L.176
L.176:
	jmp L.172
L.172:
	movl $1,%eax
	subl %eax,%ebx
	movl $2147483642,%eax
	cmpl %eax,%ebx
	jge join_l263
join_l264:
	nop
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 4(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l263:
	jmp L.171
join_l287:
	jmp L.153
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
