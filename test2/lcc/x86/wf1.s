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
	nop
	leal 36(%esp), %ecx
	leal 36(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	movl $0,%eax
	movl $-4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%ecx
	leal next,%eax
	movl %ecx,(%eax)
	jmp L.3
L.3:
	nop
	movl $-24,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl $-36,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
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
	movl $-4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl $-36,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	call tprint
join_l8:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 36(%esp), %ecx
	movl %ecx,8(%esp)
	movl $0,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %esp
	ret
join_l9:
	jmp L.2
L.2:
	nop
	movl $-24,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl $-36,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl $-32,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
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
err:
	leal -16(%esp), %esp
	movl $4,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l25:
	nop
	leal i_10,%ecx
	movl %ecx,8(%esp)
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $-12,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l33:
	nop
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
join_l30:
	nop
	nop
	nop
	nop
	movl $0,%eax
	leal 16(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
getword:
	leal -16(%esp), %esp
	movl $4,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	nop
	leal 16(%esp), %ecx
	leal 16(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %ebx,4(%esp)
initialize_continuations_l42:
	jmp L.12
L.12:
L.13:
	nop
	nop
	nop
	call getchar
join_l64:
	nop
	movl %eax,%ebx
	nop
	movl $-1,%eax
	cmpl %eax,%ebx
	je join_l60
join_l61:
	nop
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call isletter
join_l59:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l56
join_l71:
	jmp L.15
join_l56:
	jmp L.12
join_l60:
	jmp L.15
L.15:
	movl 8(%esp),%eax
	movl %eax,12(%esp)
	jmp L.19
L.19:
	nop
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl %ebx,(%eax)
	nop
	call isletter
join_l52:
	nop
	movl %eax,%ebx
	nop
	movl $0,%eax
	cmpl %eax,%ebx
	jne join_l48
join_l49:
	movl $0,%eax
	movl 12(%esp),%ecx
	movb %al,(%ecx)
	movl 12(%esp),%eax
	movl 8(%esp),%ecx
	cmpl %ecx,%eax
	jbe join_l46
join_l47:
	nop
	movl $1,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl 4(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l46:
	jmp L.20
L.20:
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
join_l48:
	jmp L.16
L.16:
	movl 12(%esp),%ecx
	movl $1,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl %eax,12(%esp)
	movl %ebx,%eax
	movb %al,(%ecx)
L.17:
	nop
	nop
	nop
	call getchar
join_l55:
	nop
	movl %eax,%ebx
	nop
	jmp L.19
isletter:
	leal -8(%esp), %esp
	movl $4,%ecx
	leal 8(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 8(%esp), %ecx
	leal 8(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l74:
	movl $65,%ecx
	cmpl %ecx,%eax
	jl join_l84
join_l85:
	movl $90,%ecx
	cmpl %ecx,%eax
	jg join_l82
join_l83:
	movl $32,%ecx
	addl %ecx,%eax
	jmp L.30
join_l82:
	jmp L.30
join_l84:
	jmp L.30
L.30:
	movl $97,%ecx
	cmpl %ecx,%eax
	jl join_l80
join_l81:
	movl $122,%ecx
	cmpl %ecx,%eax
	jg join_l78
join_l79:
	nop
	leal 8(%esp), %ecx
	movl %ecx,4(%esp)
	movl $0,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
join_l78:
	jmp L.32
join_l80:
	jmp L.32
L.32:
	nop
	movl $0,%eax
	leal 8(%esp), %ecx
	movl %ecx,(%esp)
	movl $0,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
lookup:
	leal -92(%esp), %esp
	movl $4,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl $8,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	nop
	leal 92(%esp), %ecx
	leal 92(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l95:
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l133
join_l134:
	nop
	movl $12,%ecx
	movl 12(%esp),%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl $-88,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $-92,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call strcmp
join_l132:
	nop
	nop
	movl $-4,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-4,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jge join_l128
join_l129:
	nop
	movl $4,%ecx
	movl 12(%esp),%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl $-88,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-92,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call lookup
join_l127:
	nop
	nop
	nop
	leal 92(%esp), %ecx
	movl %ecx,60(%esp)
	movl $0,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 92(%esp), %esp
	ret
join_l128:
	jmp L.39
L.39:
	movl $-4,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jle join_l122
join_l123:
	nop
	movl $8,%ecx
	movl 12(%esp),%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl $-88,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-92,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call lookup
join_l121:
	nop
	nop
	nop
	leal 92(%esp), %ecx
	movl %ecx,56(%esp)
	movl $0,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 92(%esp), %esp
	ret
join_l122:
	jmp L.41
L.41:
	nop
	movl 12(%esp),%eax
	movl (%eax),%eax
	leal 92(%esp), %ecx
	movl %ecx,52(%esp)
	movl $0,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 92(%esp), %esp
	ret
join_l133:
	jmp L.37
L.37:
	leal next,%eax
	movl (%eax),%eax
	movl $2000,%ecx
	cmpl %ecx,%eax
	jl join_l115
join_l116:
	nop
	leal i_45,%eax
	movl $-92,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call err
join_l114:
	nop
	nop
	nop
	jmp L.43
join_l115:
	jmp L.43
L.43:
	movl $0,%eax
	movl %eax,16(%esp)
	leal words,%eax
	movl $4,%ecx
	leal next,%edx
	movl (%edx),%edx
	shll %cl, %edx
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	movl $4,%ecx
	leal next,%eax
	movl (%eax),%eax
	shll %cl, %eax
	movl $0,%ecx
	movl %ecx,80(%esp)
	movl $8,%ecx
	movl %ecx,20(%esp)
	leal words,%ecx
	movl %ecx,64(%esp)
	movl 20(%esp),%ecx
	movl 64(%esp),%edx
	addl %ecx,%edx
	movl %edx,64(%esp)
	movl %eax,24(%esp)
	movl 24(%esp),%ecx
	movl 64(%esp),%edx
	addl %edx,%ecx
	movl %ecx,24(%esp)
	movl 24(%esp),%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl %ecx,28(%esp)
	leal words,%ecx
	movl %ecx,68(%esp)
	movl 28(%esp),%ecx
	movl 68(%esp),%edx
	addl %ecx,%edx
	movl %edx,68(%esp)
	movl 68(%esp),%ecx
	addl %ecx,%eax
	movl 80(%esp),%ecx
	movl %ecx,(%eax)
	nop
	movl $-92,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call strlen
join_l111:
	nop
	nop
	nop
	movl $1,%ecx
	addl %ecx,%eax
	movl $-92,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call malloc
join_l108:
	nop
	nop
	movl $12,%ecx
	leal words,%edx
	movl %edx,36(%esp)
	movl 36(%esp),%edx
	addl %ecx,%edx
	movl %edx,36(%esp)
	movl $4,%ecx
	leal next,%edx
	movl (%edx),%edx
	movl %edx,32(%esp)
	movl 32(%esp),%edx
	shll %cl, %edx
	movl %edx,32(%esp)
	movl 32(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $12,%ecx
	leal words,%eax
	addl %ecx,%eax
	movl $4,%ecx
	leal next,%edx
	movl (%edx),%edx
	shll %cl, %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l104
join_l105:
	nop
	leal i_52,%eax
	movl $-92,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call err
join_l103:
	nop
	nop
	nop
	jmp L.49
join_l104:
	jmp L.49
L.49:
	nop
	movl $12,%ecx
	leal words,%eax
	addl %ecx,%eax
	movl $4,%ecx
	leal next,%edx
	movl (%edx),%edx
	shll %cl, %edx
	movl %edx,40(%esp)
	movl 40(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,40(%esp)
	movl $-92,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $-88,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	nop
	call strcpy
join_l100:
	nop
	nop
	nop
	leal next,%eax
	movl (%eax),%ecx
	movl %ecx,84(%esp)
	movl $1,%ecx
	movl %ecx,72(%esp)
	movl 84(%esp),%ecx
	movl %ecx,44(%esp)
	movl 44(%esp),%ecx
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl %ecx,44(%esp)
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal words,%eax
	movl $4,%ecx
	movl 84(%esp),%edx
	shll %cl, %edx
	movl %edx,76(%esp)
	movl 76(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,76(%esp)
	movl 76(%esp),%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
	nop
	leal 92(%esp), %ecx
	movl %ecx,48(%esp)
	movl $0,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 92(%esp), %esp
	ret
tprint:
	leal -52(%esp), %esp
	movl $4,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	nop
	leal 52(%esp), %ecx
	leal 52(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l143:
	movl $0,%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	je join_l155
join_l156:
	nop
	movl $4,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl $-52,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	call tprint
join_l154:
	nop
	nop
	nop
	nop
	leal i_68,%ecx
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl %eax,48(%esp)
	movl $12,%eax
	movl %eax,44(%esp)
	movl 12(%esp),%eax
	movl %eax,28(%esp)
	movl 28(%esp),%eax
	movl 44(%esp),%edx
	addl %edx,%eax
	movl %eax,28(%esp)
	movl $-44,%eax
	movl %eax,24(%esp)
	leal 52(%esp), %eax
	movl %eax,40(%esp)
	movl 24(%esp),%eax
	movl 40(%esp),%edx
	addl %eax,%edx
	movl %edx,40(%esp)
	movl 28(%esp),%eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	movl 32(%esp),%eax
	movl 40(%esp),%edx
	movl %eax,(%edx)
	movl $-48,%eax
	movl %eax,20(%esp)
	leal 52(%esp), %eax
	movl %eax,36(%esp)
	movl 20(%esp),%eax
	movl 36(%esp),%edx
	addl %eax,%edx
	movl %edx,36(%esp)
	movl 36(%esp),%eax
	movl 48(%esp),%edx
	movl %edx,(%eax)
	movl $-52,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	nop
	call printf
join_l151:
	nop
	nop
	nop
	nop
	movl $8,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl $-52,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	call tprint
join_l148:
	nop
	nop
	nop
	jmp L.66
join_l155:
	jmp L.66
L.66:
	nop
	movl $0,%eax
	leal 52(%esp), %ecx
	movl %ecx,16(%esp)
	movl $0,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %esp
	ret
strcmp:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,68(%esp)
	nop
	leal 72(%esp), %ecx
	movl %ecx,(%esp)
	leal 72(%esp), %ecx
	movl %ecx,44(%esp)
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl 4(%esp),%ecx
	movl 44(%esp),%edx
	movl %ecx,(%edx)
initialize_continuations_l165:
	jmp L.72
L.72:
	movsbl (%eax),%ecx
	movl %ecx,48(%esp)
	movl 68(%esp),%ecx
	movsbl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl 8(%esp),%ecx
	movl 48(%esp),%edx
	cmpl %ecx,%edx
	je join_l174
join_l175:
	movsbl (%eax),%ecx
	movl %ecx,64(%esp)
	movl $0,%ecx
	movl %ecx,36(%esp)
	movl 36(%esp),%ecx
	movl 64(%esp),%edx
	cmpl %ecx,%edx
	jne join_l172
join_l173:
	nop
	movl $-1,%eax
	leal 72(%esp), %ecx
	movl %ecx,40(%esp)
	movl $0,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 72(%esp), %esp
	ret
join_l172:
	jmp L.76
L.76:
	movl 68(%esp),%ecx
	movsbl (%ecx),%ecx
	movl %ecx,60(%esp)
	movl $0,%ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl 60(%esp),%edx
	cmpl %ecx,%edx
	jne join_l169
join_l170:
	nop
	movl $1,%eax
	leal 72(%esp), %ecx
	movl %ecx,32(%esp)
	movl $0,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 72(%esp), %esp
	ret
join_l169:
	jmp L.78
L.78:
	nop
	movl 68(%esp),%ecx
	movsbl (%ecx),%ecx
	movsbl (%eax),%eax
	subl %ecx,%eax
	leal 72(%esp), %ecx
	movl %ecx,24(%esp)
	movl $0,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 72(%esp), %esp
	ret
join_l174:
	jmp L.71
L.71:
	movl %eax,%ecx
	movl $1,%eax
	movl %eax,52(%esp)
	movl %ecx,12(%esp)
	movl 12(%esp),%eax
	movl 52(%esp),%edx
	addl %edx,%eax
	movl %eax,12(%esp)
	movl 12(%esp),%eax
	movsbl (%ecx),%ecx
	movl %ecx,56(%esp)
	movl $0,%ecx
	movl %ecx,16(%esp)
	movl 16(%esp),%ecx
	movl 56(%esp),%edx
	cmpl %ecx,%edx
	jne join_l177
join_l178:
	nop
	movl $0,%eax
	leal 72(%esp), %ecx
	movl %ecx,20(%esp)
	movl $0,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 72(%esp), %esp
	ret
join_l177:
	jmp L.74
L.74:
	movl $1,%ecx
	movl 68(%esp),%edx
	addl %ecx,%edx
	movl %edx,68(%esp)
	jmp L.72
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
