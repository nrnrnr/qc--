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
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l9:
Lproc_body_start_l8:
	leal in,%ecx
	leal 20(%esp), %edx
	movl %edi,8(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $10,%edi
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call sort
Ljoin_l22:
	movl $0,%edx
	jmp L.5
L.5:
	movl $10,%ecx
	cmpl %ecx,%edx
	jb Ljoin_l12
Ljoin_l13:
	movl $0,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
	ret
Ljoin_l12:
	jmp L.2
L.2:
	movl $2,%ecx
	movl %edx,%edi
	shll %cl, %edi
	leal in,%eax
	addl %eax,%edi
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	movl %edx,16(%esp)
	call putd
Ljoin_l19:
	movl $10,%edi
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call putchar
Ljoin_l16:
L.3:
	movl $1,%edi
	movl 16(%esp),%edx
	addl %edi,%edx
	jmp L.5
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long Ljoin_l22
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l29
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.section .pcmap
.long Ljoin_l19
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l29
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 0xfffffffc
.long 0
.section .pcmap
.long Ljoin_l16
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long Lstackdata_l29
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 0xfffffffc
.long 0
.section .text
putd:
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l35:
Lproc_body_start_l34:
	movl $0,%edx
	cmpl %edx,%eax
	jge Ljoin_l49
Ljoin_l50:
	movl $45,%edx
	movl %edi,4(%esp)
	leal 32(%esp), %edi
	movl %edi,8(%esp)
	movl $-32,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,24(%esp)
	movl %eax,20(%esp)
	call putchar
Ljoin_l48:
	movl 20(%esp),%eax
	negl %eax
	movl 4(%esp),%edi
	movl 16(%esp),%esi
	movl 24(%esp),%ecx
	jmp L.8
Ljoin_l49:
	jmp L.8
L.8:
	movl $10,%edx
	movl %eax,20(%esp)
	movl %edx,28(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl %edi,4(%esp)
	movl 28(%esp),%edi
	idivl %edi, %eax
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l44
Ljoin_l45:
	movl $10,%edi
	movl 20(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %edi, %eax
	leal 32(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl %ecx,24(%esp)
	call putd
Ljoin_l43:
	movl 24(%esp),%ecx
	jmp L.10
Ljoin_l44:
	jmp L.10
L.10:
	movl $10,%edi
	movl 20(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %edi, %eax
	movl $48,%edi
	addl %edi,%edx
	leal 32(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %ecx,24(%esp)
	call putchar
Ljoin_l40:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l57:
.long 0
.section .pcmap
.long Ljoin_l48
.long Lframe_l58
.section .pcmap_data
Lframe_l58:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l57
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
.long 0xfffffff4
.long 0
.section .pcmap
.long Ljoin_l43
.long Lframe_l59
.section .pcmap_data
Lframe_l59:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l57
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xffffffe4
.long 0xfffffff4
.long 0
.section .pcmap
.long Ljoin_l40
.long Lframe_l60
.section .pcmap_data
Lframe_l60:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long Lstackdata_l57
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xffffffe4
.long 0
.long 0
.section .text
sort:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l63:
Lproc_body_start_l62:
	movl %edi,12(%esp)
	leal xx,%edi
	movl %eax,(%edi)
	movl $1,%edi
	subl %edi,%ecx
	movl %ecx,%edi
	leal 32(%esp), %edi
	movl %edi,16(%esp)
	movl $-32,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl $0,%edi
	leal 32(%esp), %esi
	movl $-28,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 32(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %edx,28(%esp)
	call quick
Ljoin_l68:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l75:
.long 0
.section .pcmap
.long Ljoin_l68
.long Lframe_l76
.section .pcmap_data
Lframe_l76:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long Lstackdata_l75
.long 2
.long 4
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
quick:
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
	movl %eax,12(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 56(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l79:
Lproc_body_start_l78:
	cmpl %eax,%ecx
	jl Ljoin_l92
Ljoin_l93:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl %edx,48(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %esp
	ret
Ljoin_l92:
	jmp L.16
L.16:
	movl %edi,16(%esp)
	leal 56(%esp), %edi
	movl %edi,20(%esp)
	movl $-56,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal 56(%esp), %edi
	movl %edi,32(%esp)
	movl $-52,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl 36(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 56(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,48(%esp)
	movl %ecx,44(%esp)
	movl %eax,40(%esp)
	call partition
Ljoin_l90:
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal 56(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl 44(%esp),%ecx
	movl %ecx,(%edi)
	movl $1,%edi
	movl %eax,%ecx
	subl %edi,%ecx
	leal 56(%esp), %edi
	movl $-48,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl %eax,52(%esp)
	call quick
Ljoin_l87:
	leal 56(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	movl $1,%edi
	movl 52(%esp),%esi
	addl %edi,%esi
	leal 56(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	leal 56(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	call quick
Ljoin_l84:
	movl $0,%eax
	leal 56(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l100:
.long 0
.section .pcmap
.long Ljoin_l90
.long Lframe_l101
.section .pcmap_data
Lframe_l101:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff8
.long Lstackdata_l100
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0xffffffd4
.long 0xfffffff4
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l87
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff8
.long Lstackdata_l100
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0xffffffd4
.long 0
.long 0xfffffff0
.long 0xfffffffc
.long 0
.long 0
.section .pcmap
.long Ljoin_l84
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff8
.long Lstackdata_l100
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xffffffe4
.long 11
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
partition:
	leal -88(%esp), %esp
	leal 88(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 88(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 88(%esp), %eax
	movl %edx,8(%esp)
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 88(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l106:
Lproc_body_start_l105:
	movl %edi,12(%esp)
	movl $1,%edi
	addl %edi,%eax
	movl %ecx,%edi
	movl %edi,16(%esp)
	movl $2,%edi
	movl %esi,24(%esp)
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %edi,%esi
	movl %ecx,28(%esp)
	movl 20(%esp),%ecx
	shll %cl, %esi
	movl 8(%esp),%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	jmp L.22
L.22:
	movl 28(%esp),%edi
	cmpl %eax,%edi
	jl Ljoin_l112
Ljoin_l113:
	movl $2,%edi
	movl 16(%esp),%esi
	movl %edi,%ecx
	shll %cl, %esi
	movl 8(%esp),%ecx
	addl %ecx,%esi
	movl %edi,32(%esp)
	leal 88(%esp), %edi
	movl %edi,36(%esp)
	movl $-88,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl %esi,44(%esp)
	movl 40(%esp),%esi
	addl %esi,%edi
	movl 44(%esp),%esi
	movl %esi,(%edi)
	movl %eax,%edi
	movl 32(%esp),%ecx
	shll %cl, %edi
	movl 8(%esp),%esi
	addl %esi,%edi
	leal 88(%esp), %esi
	movl $-84,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl %edx,52(%esp)
	movl %eax,48(%esp)
	call exchange
Ljoin_l111:
	movl 48(%esp),%eax
	leal 88(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
	leal 88(%esp), %esp
	ret
Ljoin_l112:
	jmp L.21
L.21:
	movl $1,%edi
	movl %edi,56(%esp)
	movl 28(%esp),%edi
	movl %esi,60(%esp)
	movl 56(%esp),%esi
	addl %esi,%edi
	jmp L.25
L.25:
	movl $2,%esi
	movl %esi,64(%esp)
	movl %edi,%esi
	movl 64(%esp),%ecx
	shll %cl, %esi
	movl 8(%esp),%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl %edi,28(%esp)
	movl 60(%esp),%edi
	cmpl %edi,%esi
	jl Ljoin_l121
Ljoin_l122:
	movl $1,%esi
	subl %esi,%eax
	jmp L.28
L.28:
	movl $2,%esi
	movl %eax,%edi
	movl %esi,%ecx
	shll %cl, %edi
	movl 8(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl 60(%esp),%ecx
	cmpl %ecx,%edi
	jg Ljoin_l119
Ljoin_l120:
	movl 28(%esp),%edi
	cmpl %eax,%edi
	jge Ljoin_l117
Ljoin_l118:
	movl $2,%edi
	movl %edi,68(%esp)
	movl 28(%esp),%edi
	movl %edi,%esi
	movl 68(%esp),%ecx
	shll %cl, %esi
	movl 8(%esp),%ecx
	addl %ecx,%esi
	leal 88(%esp), %edi
	movl %edi,72(%esp)
	movl $-88,%edi
	movl %edi,76(%esp)
	movl 72(%esp),%edi
	movl %esi,80(%esp)
	movl 76(%esp),%esi
	addl %esi,%edi
	movl 80(%esp),%esi
	movl %esi,(%edi)
	movl %eax,%edi
	movl 68(%esp),%ecx
	shll %cl, %edi
	movl 8(%esp),%esi
	addl %esi,%edi
	leal 88(%esp), %ecx
	movl %edi,84(%esp)
	movl $-84,%edi
	addl %edi,%ecx
	movl 84(%esp),%edi
	movl %edi,(%ecx)
	movl %edx,52(%esp)
	movl %eax,48(%esp)
	call exchange
Ljoin_l116:
	movl 52(%esp),%edx
	movl 28(%esp),%edi
	movl 48(%esp),%eax
	movl 60(%esp),%ecx
	jmp L.30
Ljoin_l117:
	jmp L.30
L.30:
	movl %esi,8(%esp)
	movl %ecx,%esi
	movl 8(%esp),%ecx
	movl 16(%esp),%edi
	jmp L.22
Ljoin_l119:
	jmp L.27
L.27:
	movl $1,%edi
	subl %edi,%eax
	movl %ecx,%edi
	movl %esi,%ecx
	jmp L.28
Ljoin_l121:
	jmp L.24
L.24:
	movl $1,%esi
	movl 28(%esp),%edi
	addl %esi,%edi
	jmp L.25
.section .pcmap_data
Lstackdata_l129:
.long 0
.section .pcmap
.long Ljoin_l111
.long Lframe_l130
.section .pcmap_data
Lframe_l130:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffdc
.long Lstackdata_l129
.long 2
.long 9
.long 0
.long 1
.long 10
.long 0xffffffc0
.long 11
.long 0xffffffb4
.long 0
.long 0
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l116
.long Lframe_l131
.section .pcmap_data
Lframe_l131:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffdc
.long Lstackdata_l129
.long 2
.long 9
.long 0
.long 1
.long 10
.long 0xffffffc0
.long 11
.long 0xffffffb4
.long 0xffffffb0
.long 0xffffffc4
.long 0xffffffd8
.long 0xffffffe4
.long 0xffffffb8
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
exchange:
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 56(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l134:
Lproc_body_start_l133:
	movl %edi,12(%esp)
	leal xx,%edi
	movl (%edi),%edi
	movl %edi,16(%esp)
	movl $4,%edi
	movl %edi,20(%esp)
	leal i_39,%edi
	movl %edi,24(%esp)
	leal 56(%esp), %edi
	movl %edi,28(%esp)
	movl $-56,%edi
	movl %edi,32(%esp)
	movl 28(%esp),%edi
	movl %esi,36(%esp)
	movl 32(%esp),%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	movl %eax,%edi
	movl 16(%esp),%esi
	subl %esi,%edi
	movl %eax,40(%esp)
	movl %edi,%eax
	movl %edx,44(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%edi
	idivl %edi, %eax
	leal 56(%esp), %edx
	movl $-52,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl %ecx,%eax
	subl %esi,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%edi
	idivl %edi, %eax
	leal 56(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %ecx,48(%esp)
	call printf
Ljoin_l139:
	leal 56(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 48(%esp),%edx
	movl (%edx),%edi
	movl %edi,(%ecx)
	leal 56(%esp), %ecx
	movl $-4,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	movl $0,%eax
	leal 56(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 36(%esp),%esi
	movl 12(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l146:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l139
.long Lframe_l147
.section .pcmap_data
Lframe_l147:
.long 0x80000004
.long 0xffffffc8
.long 0xfffffff4
.long Lstackdata_l146
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffd4
.long 0xfffffff0
.long 0xfffffff8
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
