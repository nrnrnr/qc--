.globl in
.globl main
.globl putd
.globl sort
.globl quick
.globl partition
.globl exchange
.globl xx
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
.section .data
.align 4
in:
.long 10
.long 32
.long 0xffffffff
.long 0x237
.long 3
.long 18
.long 1
.long 0xffffffcd
.long 0x315
.long 0
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
	leal in,%ecx
	leal 16(%esp), %edx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $10,%eax
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call sort
.Ljoin_l22:
	movl $0,%eax
	jmp L.5
L.5:
	movl $10,%ecx
	cmpl %ecx,%eax
	jb .Ljoin_l12
.Ljoin_l13:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.Ljoin_l12:
	jmp L.2
L.2:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal in,%ecx
	addl %ecx,%edx
	leal 16(%esp), %ecx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call putd
.Ljoin_l19:
	movl $10,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call putchar
.Ljoin_l16:
L.3:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	jmp L.5
.section .pcmap_data
.Lstackdata_l29:
.long 0
.section .pcmap
.long .Ljoin_l22
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l29
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .pcmap
.long .Ljoin_l19
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l29
.long 0
.long 1
.long 0
.long 1
.long 0xfffffffc
.long 0
.section .pcmap
.long .Ljoin_l16
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l29
.long 0
.long 1
.long 0
.long 1
.long 0xfffffffc
.long 0
.section .text
putd:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
	movl $0,%edx
	cmpl %edx,%eax
	jge .Ljoin_l49
.Ljoin_l50:
	movl $45,%edx
	movl %eax,4(%esp)
	leal 32(%esp), %eax
	movl %eax,8(%esp)
	movl $-32,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call putchar
.Ljoin_l48:
	movl 4(%esp),%eax
	negl %eax
	movl 16(%esp),%ecx
	jmp L.8
.Ljoin_l49:
	jmp L.8
L.8:
	movl $10,%edx
	movl %ecx,16(%esp)
	movl %eax,4(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	movl %edx,20(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%ecx
	idivl %ecx, %eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l44
.Ljoin_l45:
	movl $10,%eax
	movl %eax,24(%esp)
	movl 4(%esp),%ecx
	movl %ecx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 24(%esp),%ecx
	idivl %ecx, %eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call putd
.Ljoin_l43:
	jmp L.10
.Ljoin_l44:
	jmp L.10
L.10:
	movl $10,%eax
	movl %eax,28(%esp)
	movl 4(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 28(%esp),%ecx
	idivl %ecx, %eax
	movl $48,%eax
	addl %eax,%edx
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call putchar
.Ljoin_l40:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l57:
.long 0
.section .pcmap
.long .Ljoin_l48
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l57
.long 0
.long 1
.long 0
.long 1
.long 0xffffffe4
.long 0
.section .pcmap
.long .Ljoin_l43
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l57
.long 0
.long 1
.long 0
.long 1
.long 0xffffffe4
.long 0
.section .pcmap
.long .Ljoin_l40
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l57
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
sort:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l63:
.Lproc_body_start_l62:
	movl %eax,12(%esp)
	leal xx,%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl 20(%esp),%ecx
	subl %ecx,%eax
	movl %eax,%ecx
	leal 36(%esp), %ecx
	movl %eax,24(%esp)
	movl $-36,%eax
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl %eax,28(%esp)
	movl $-32,%eax
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,32(%esp)
	call quick
.Ljoin_l68:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l75:
.long 0
.section .pcmap
.long .Ljoin_l68
.long .Lframe_l76
.section .pcmap_data
.Lframe_l76:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l75
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
quick:
	leal -72(%esp), %esp
	leal 72(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 72(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 72(%esp), %edx
	movl %eax,12(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 72(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l79:
.Lproc_body_start_l78:
	cmpl %eax,%ecx
	jl .Ljoin_l92
.Ljoin_l93:
	movl $0,%eax
	leal 72(%esp), %ecx
	movl %ecx,64(%esp)
	movl $0,%ecx
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	movl %edx,48(%esp)
	movl 68(%esp),%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
.Ljoin_l92:
	jmp L.16
L.16:
	movl %eax,16(%esp)
	leal 72(%esp), %eax
	movl %eax,20(%esp)
	movl $-72,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl %eax,32(%esp)
	movl $-68,%eax
	movl %eax,36(%esp)
	movl 32(%esp),%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl %eax,40(%esp)
	movl $-64,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,48(%esp)
	call partition
.Ljoin_l90:
	leal 72(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %ecx
	movl %eax,52(%esp)
	movl $-68,%eax
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl $1,%eax
	movl %eax,56(%esp)
	movl 52(%esp),%ecx
	movl %ecx,%eax
	movl 56(%esp),%ecx
	subl %ecx,%eax
	leal 72(%esp), %ecx
	movl %eax,60(%esp)
	movl $-64,%eax
	addl %eax,%ecx
	movl 60(%esp),%eax
	movl %eax,(%ecx)
	call quick
.Ljoin_l87:
	leal 72(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	movl 52(%esp),%ecx
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-64,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	call quick
.Ljoin_l84:
	movl $0,%eax
	leal 72(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l100:
.long 0
.section .pcmap
.long .Ljoin_l90
.long .Lframe_l101
.section .pcmap_data
.Lframe_l101:
.long 0x80000004
.long 0xffffffb8
.long 0xffffffe8
.long .Lstackdata_l100
.long 0
.long 5
.long 0
.long 1
.long 0xffffffc4
.long 0xffffffd4
.long 0xffffffc8
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l87
.long .Lframe_l102
.section .pcmap_data
.Lframe_l102:
.long 0x80000004
.long 0xffffffb8
.long 0xffffffe8
.long .Lstackdata_l100
.long 0
.long 5
.long 0
.long 1
.long 0xffffffc4
.long 0
.long 0xffffffc8
.long 0xffffffec
.long 0
.long 0
.section .pcmap
.long .Ljoin_l84
.long .Lframe_l103
.section .pcmap_data
.Lframe_l103:
.long 0x80000004
.long 0xffffffb8
.long 0xffffffe8
.long .Lstackdata_l100
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
partition:
	leal -120(%esp), %esp
	leal 120(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 120(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 120(%esp), %edx
	movl %eax,8(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 120(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l106:
.Lproc_body_start_l105:
	movl %eax,12(%esp)
	movl $1,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl %eax,12(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl %eax,24(%esp)
	movl $2,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl 28(%esp),%ecx
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.22
L.22:
	movl %eax,32(%esp)
	movl 12(%esp),%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	jl .Ljoin_l112
.Ljoin_l113:
	movl $2,%eax
	movl %eax,36(%esp)
	movl 24(%esp),%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl %eax,%ecx
	movl 40(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,44(%esp)
	leal 120(%esp), %eax
	movl %eax,48(%esp)
	movl $-120,%eax
	movl %eax,52(%esp)
	movl 48(%esp),%eax
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl %ecx,56(%esp)
	movl 36(%esp),%ecx
	movl 56(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	leal 120(%esp), %ecx
	movl %eax,60(%esp)
	movl $-116,%eax
	addl %eax,%ecx
	movl 60(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,64(%esp)
	call exchange
.Ljoin_l111:
	movl 12(%esp),%eax
	leal 120(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	leal 120(%esp), %esp
	ret
.Ljoin_l112:
	jmp L.21
L.21:
	movl $1,%eax
	movl %eax,68(%esp)
	movl 20(%esp),%eax
	movl 68(%esp),%ecx
	addl %ecx,%eax
	jmp L.25
L.25:
	movl $2,%ecx
	movl %eax,20(%esp)
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	cmpl %ecx,%eax
	jl .Ljoin_l121
.Ljoin_l122:
	movl $1,%eax
	movl %eax,76(%esp)
	movl 12(%esp),%eax
	movl 76(%esp),%ecx
	subl %ecx,%eax
	jmp L.28
L.28:
	movl $2,%ecx
	movl %eax,12(%esp)
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l119
.Ljoin_l120:
	movl 12(%esp),%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	jge .Ljoin_l117
.Ljoin_l118:
	movl $2,%eax
	movl %eax,84(%esp)
	movl 20(%esp),%eax
	movl %eax,88(%esp)
	movl 84(%esp),%eax
	movl %eax,%ecx
	movl 88(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,92(%esp)
	leal 120(%esp), %eax
	movl %eax,96(%esp)
	movl $-120,%eax
	movl %eax,100(%esp)
	movl 96(%esp),%eax
	movl 100(%esp),%ecx
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl %ecx,104(%esp)
	movl 84(%esp),%ecx
	movl 104(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,108(%esp)
	leal 120(%esp), %eax
	movl %eax,112(%esp)
	movl $-116,%eax
	movl %eax,116(%esp)
	movl 112(%esp),%eax
	movl 116(%esp),%ecx
	addl %ecx,%eax
	movl 108(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,64(%esp)
	call exchange
.Ljoin_l116:
	movl 64(%esp),%edx
	movl 12(%esp),%ecx
	movl 20(%esp),%eax
	jmp L.30
.Ljoin_l117:
	jmp L.30
L.30:
	movl 8(%esp),%ecx
	movl 32(%esp),%eax
	jmp L.22
.Ljoin_l119:
	jmp L.27
L.27:
	movl $1,%eax
	movl %eax,80(%esp)
	movl 12(%esp),%eax
	movl 80(%esp),%ecx
	subl %ecx,%eax
	jmp L.28
.Ljoin_l121:
	jmp L.24
L.24:
	movl $1,%eax
	movl %eax,72(%esp)
	movl 20(%esp),%eax
	movl 72(%esp),%ecx
	addl %ecx,%eax
	jmp L.25
.section .pcmap_data
.Lstackdata_l129:
.long 0
.section .pcmap
.long .Ljoin_l111
.long .Lframe_l130
.section .pcmap_data
.Lframe_l130:
.long 0x80000004
.long 0xffffff88
.long 0xffffffc8
.long .Lstackdata_l129
.long 0
.long 9
.long 0
.long 1
.long 0
.long 0
.long 0xffffff94
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l116
.long .Lframe_l131
.section .pcmap_data
.Lframe_l131:
.long 0x80000004
.long 0xffffff88
.long 0xffffffc8
.long .Lstackdata_l129
.long 0
.long 9
.long 0
.long 1
.long 0xffffff90
.long 0xffffff9c
.long 0xffffff94
.long 0xffffffa8
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
exchange:
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
.Linitialize_continuations_l134:
.Lproc_body_start_l133:
	movl %eax,12(%esp)
	leal xx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl $4,%eax
	movl %eax,20(%esp)
	leal i_39,%eax
	movl %eax,24(%esp)
	leal 52(%esp), %eax
	movl %eax,28(%esp)
	movl $-52,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl 16(%esp),%eax
	subl %eax,%ecx
	movl %ecx,%eax
	movl %edx,40(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%ecx
	idivl %ecx, %eax
	leal 52(%esp), %edx
	movl %eax,44(%esp)
	movl $-48,%eax
	addl %eax,%edx
	movl 44(%esp),%eax
	movl %eax,(%edx)
	movl 36(%esp),%eax
	movl %eax,%edx
	movl 16(%esp),%eax
	subl %eax,%edx
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	leal 52(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l139:
	leal 52(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl 36(%esp),%eax
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l146:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l139
.long .Lframe_l147
.section .pcmap_data
.Lframe_l147:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff4
.long .Lstackdata_l146
.long 0
.long 5
.long 0
.long 1
.long 0xffffffd8
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .bss
.align 4
xx:
.skip 4, 0
.section .data
i_39:
.byte 101
.byte 120
.byte 99
.byte 104
.byte 97
.byte 110
.byte 103
.byte 101
.byte 40
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 41
.byte 10
.byte 0
