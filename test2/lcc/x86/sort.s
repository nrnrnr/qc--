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
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
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
.Lcall_successor_l21:
	movl $0,%eax
L.5:
.Lbranch_target_l12:
.Lbranch_target_l25:
	movl $10,%ecx
	cmpl %ecx,%eax
	jb L.2
.Lbranch_target_l11:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
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
.Lcall_successor_l18:
	movl $10,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call putchar
.Lcall_successor_l15:
L.3:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
.LL.5_l26:
	movl %ecx,%eax
	jmp L.5
.section .pcmap_data
.Lstackdata_l30:
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l30
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l30
.long 0
.long 1
.long 0
.long 1
.long 0xfffffffc
.long 0
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l30
.long 0
.long 1
.long 0
.long 1
.long 0xfffffffc
.long 0
.section .text
putd:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
.Lbranch_target_l50:
.Lbranch_target_l55:
	movl $0,%edx
	cmpl %edx,%eax
.Lbranch_target_l57:
	jge .LL.8_l56
.Lbranch_target_l49:
	movl $45,%edx
	movl %eax,4(%esp)
	leal 28(%esp), %eax
	movl %eax,8(%esp)
	movl $-28,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call putchar
.Lcall_successor_l48:
	movl 4(%esp),%eax
	negl %eax
	jmp L.8
.LL.8_l56:
	movl %ecx,16(%esp)
L.8:
.Lbranch_target_l45:
.Lbranch_target_l54:
	movl $10,%ecx
	movl %eax,4(%esp)
	movl 4(%esp),%edx
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je L.10
.Lbranch_target_l44:
	movl $10,%eax
	movl %eax,20(%esp)
	movl 4(%esp),%ecx
	movl %ecx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%ecx
	idivl %ecx, %eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call putd
.Lcall_successor_l43:
L.10:
	movl $10,%eax
	movl %eax,24(%esp)
	movl 4(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 24(%esp),%ecx
	idivl %ecx, %eax
	movl $48,%eax
	addl %eax,%edx
	leal 28(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call putchar
.Lcall_successor_l40:
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l61:
.long 0
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l61
.long 0
.long 1
.long 0
.long 1
.long 0xffffffe8
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l63
.section .pcmap_data
.Lframe_l63:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l61
.long 0
.long 1
.long 0
.long 1
.long 0xffffffe8
.long 0
.section .pcmap
.long .Lcall_successor_l40
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l61
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
.Linitialize_continuations_l66:
.Lproc_body_start_l65:
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
.Lcall_successor_l71:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l78:
.long 0
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l78
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
.Linitialize_continuations_l81:
.Lproc_body_start_l80:
.Lbranch_target_l95:
.Lbranch_target_l99:
	cmpl %eax,%ecx
	jl L.16
.Lbranch_target_l94:
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
.Lcall_successor_l92:
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
.Lcall_successor_l89:
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
.Lcall_successor_l86:
	movl $0,%eax
	leal 72(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l103:
.long 0
.section .pcmap
.long .Lcall_successor_l92
.long .Lframe_l104
.section .pcmap_data
.Lframe_l104:
.long 0x80000004
.long 0xffffffb8
.long 0xffffffe8
.long .Lstackdata_l103
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
.long .Lcall_successor_l89
.long .Lframe_l105
.section .pcmap_data
.Lframe_l105:
.long 0x80000004
.long 0xffffffb8
.long 0xffffffe8
.long .Lstackdata_l103
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
.long .Lcall_successor_l86
.long .Lframe_l106
.section .pcmap_data
.Lframe_l106:
.long 0x80000004
.long 0xffffffb8
.long 0xffffffe8
.long .Lstackdata_l103
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
.Linitialize_continuations_l108:
.Lproc_body_start_l107:
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
L.22:
.Lbranch_target_l115:
.Lbranch_target_l127:
	movl %eax,32(%esp)
	movl 12(%esp),%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	jl L.21
.Lbranch_target_l114:
	movl $2,%eax
	movl %eax,92(%esp)
	movl 24(%esp),%eax
	movl %eax,96(%esp)
	movl 92(%esp),%eax
	movl %eax,%ecx
	movl 96(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,100(%esp)
	leal 120(%esp), %eax
	movl %eax,104(%esp)
	movl $-120,%eax
	movl %eax,108(%esp)
	movl 104(%esp),%eax
	movl 108(%esp),%ecx
	addl %ecx,%eax
	movl 100(%esp),%ecx
	movl %ecx,(%eax)
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl %ecx,112(%esp)
	movl 92(%esp),%ecx
	movl 112(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	leal 120(%esp), %ecx
	movl %eax,116(%esp)
	movl $-116,%eax
	addl %eax,%ecx
	movl 116(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,88(%esp)
	call exchange
.Lcall_successor_l113:
	movl 12(%esp),%eax
	leal 120(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
	leal 120(%esp), %esp
	ret
L.21:
	movl $1,%eax
	movl %eax,36(%esp)
	movl 20(%esp),%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
L.25:
.Lbranch_target_l123:
.Lbranch_target_l130:
	movl $2,%ecx
	movl %eax,20(%esp)
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	cmpl %ecx,%eax
	jl L.24
.Lbranch_target_l122:
	movl $1,%eax
	movl %eax,44(%esp)
	movl 12(%esp),%eax
	movl 44(%esp),%ecx
	subl %ecx,%eax
L.28:
.Lbranch_target_l121:
.Lbranch_target_l129:
	movl $2,%ecx
	movl %eax,12(%esp)
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	cmpl %ecx,%eax
	jg L.27
.Lbranch_target_l120:
.Lbranch_target_l128:
	movl 12(%esp),%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
.Lbranch_target_l132:
	jge .LL.30_l131
.Lbranch_target_l119:
	movl $2,%eax
	movl %eax,52(%esp)
	movl 20(%esp),%eax
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl %eax,%ecx
	movl 56(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,60(%esp)
	leal 120(%esp), %eax
	movl %eax,64(%esp)
	movl $-120,%eax
	movl %eax,68(%esp)
	movl 64(%esp),%eax
	movl 68(%esp),%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	movl 12(%esp),%eax
	movl %eax,%ecx
	movl %ecx,72(%esp)
	movl 52(%esp),%ecx
	movl 72(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,76(%esp)
	leal 120(%esp), %eax
	movl %eax,80(%esp)
	movl $-116,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,88(%esp)
	call exchange
.Lcall_successor_l118:
	jmp L.30
.LL.30_l131:
	movl %edx,88(%esp)
L.30:
.LL.22_l133:
	movl 32(%esp),%eax
	movl 8(%esp),%ecx
	movl 88(%esp),%edx
	jmp L.22
L.27:
	movl $1,%eax
	movl %eax,48(%esp)
	movl 12(%esp),%eax
	movl 48(%esp),%ecx
	subl %ecx,%eax
	jmp L.28
L.24:
	movl $1,%eax
	movl %eax,40(%esp)
	movl 20(%esp),%eax
	movl 40(%esp),%ecx
	addl %ecx,%eax
	jmp L.25
.section .pcmap_data
.Lstackdata_l137:
.long 0
.section .pcmap
.long .Lcall_successor_l113
.long .Lframe_l138
.section .pcmap_data
.Lframe_l138:
.long 0x80000004
.long 0xffffff88
.long 0xffffffe0
.long .Lstackdata_l137
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
.long .Lcall_successor_l118
.long .Lframe_l139
.section .pcmap_data
.Lframe_l139:
.long 0x80000004
.long 0xffffff88
.long 0xffffffe0
.long .Lstackdata_l137
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
.Linitialize_continuations_l141:
.Lproc_body_start_l140:
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
.Lcall_successor_l146:
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
.Lstackdata_l153:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l146
.long .Lframe_l154
.section .pcmap_data
.Lframe_l154:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffff4
.long .Lstackdata_l153
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
