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
Linitialize_continuations_l9:
Lproc_body_start_l8:
	leal in,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%eax
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call sort
Ljoin_l22:
	movl $0,%eax
	jmp L.5
L.5:
	movl $10,%ecx
	cmpl %ecx,%eax
	jb Ljoin_l12
Ljoin_l13:
	movl $0,%eax
	leal 16(%esp), %ecx
	leal 16(%esp), %edx
	movl %ebx,8(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
Ljoin_l12:
	jmp L.2
L.2:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal in,%ecx
	addl %ecx,%edx
	leal 16(%esp), %ecx
	movl %ebx,8(%esp)
	movl $-16,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl %eax,12(%esp)
	call putd
Ljoin_l19:
	movl $10,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call putchar
Ljoin_l16:
L.3:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 8(%esp),%ebx
	jmp L.5
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long Ljoin_l22
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l19
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0x80000000
.section .pcmap
.long Ljoin_l16
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0x80000000
.section .text
putd:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l35:
Lproc_body_start_l34:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l49
Ljoin_l50:
	movl $45,%ecx
	leal 20(%esp), %edx
	movl %eax,4(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call putchar
Ljoin_l48:
	movl 4(%esp),%eax
	negl %eax
	jmp L.8
Ljoin_l49:
	jmp L.8
L.8:
	movl $10,%ecx
	movl %eax,%edx
	movl %eax,4(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l44
Ljoin_l45:
	movl $10,%eax
	movl 4(%esp),%ecx
	movl %ecx,%edx
	movl %eax,8(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 8(%esp),%ecx
	idivl %ecx, %eax
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call putd
Ljoin_l43:
	jmp L.10
Ljoin_l44:
	jmp L.10
L.10:
	movl $10,%eax
	movl 4(%esp),%ecx
	movl %eax,12(%esp)
	movl %ecx,%eax
	movl %eax,%ecx
	sarl $31, %ecx
	movl %ecx,%edx
	movl 12(%esp),%ecx
	idivl %ecx, %eax
	movl $48,%eax
	addl %eax,%edx
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call putchar
Ljoin_l40:
	movl $0,%eax
	leal 20(%esp), %ecx
	leal 20(%esp), %edx
	movl %ebx,16(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l57:
.long 0
.section .pcmap
.long Ljoin_l48
.long Lframe_l58
.section .pcmap_data
Lframe_l58:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l57
.long 0x80000008
.long 0x80000001
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
.long 0xfffffff0
.long 0x80000000
.section .pcmap
.long Ljoin_l43
.long Lframe_l59
.section .pcmap_data
Lframe_l59:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l57
.long 0x80000008
.long 0x80000001
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
.long 0xfffffff0
.long 0x80000000
.section .pcmap
.long Ljoin_l40
.long Lframe_l60
.section .pcmap_data
Lframe_l60:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l57
.long 0x80000008
.long 0x80000001
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
.long 0x80000000
.section .text
sort:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 20(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l63:
Lproc_body_start_l62:
	leal xx,%eax
	movl %ecx,(%eax)
	movl $1,%eax
	subl %eax,%edx
	movl %edx,%eax
	leal 20(%esp), %eax
	movl %ecx,12(%esp)
	movl $-20,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 20(%esp), %ecx
	movl %ebx,16(%esp)
	movl $-16,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 20(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call quick
Ljoin_l68:
	movl $0,%eax
	leal 20(%esp), %ecx
	leal 20(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l75:
.long 0
.section .pcmap
.long Ljoin_l68
.long Lframe_l76
.section .pcmap_data
Lframe_l76:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l75
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
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
.section .text
quick:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 36(%esp), %eax
	movl %ecx,12(%esp)
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l79:
Lproc_body_start_l78:
	cmpl %ecx,%edx
	jl Ljoin_l92
Ljoin_l93:
	movl $0,%eax
	leal 36(%esp), %edx
	leal 36(%esp), %ecx
	movl %edi,32(%esp)
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edi
	movl %edi,(%ecx)
	movl 32(%esp),%edi
	leal 36(%esp), %esp
	ret
Ljoin_l92:
	jmp L.16
L.16:
	leal 36(%esp), %eax
	movl %edx,16(%esp)
	movl $-36,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 36(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal 36(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl %ecx,20(%esp)
	call partition
Ljoin_l90:
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	movl %eax,%edx
	subl %ecx,%edx
	leal 36(%esp), %ecx
	movl %ebx,24(%esp)
	movl $-28,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl %eax,28(%esp)
	call quick
Ljoin_l87:
	leal 36(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	movl 28(%esp),%ecx
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	call quick
Ljoin_l84:
	movl $0,%eax
	leal 36(%esp), %ecx
	leal 36(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 24(%esp),%ebx
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l100:
.long 0
.section .pcmap
.long Ljoin_l90
.long Lframe_l101
.section .pcmap_data
Lframe_l101:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l100
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
.long 0xffffffe8
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l87
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l100
.long 0x80000008
.long 0x80000005
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
.long 0xffffffe8
.long 0
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l84
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l100
.long 0x80000008
.long 0x80000005
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
.long 0x80000000
.section .text
partition:
	leal -56(%esp), %esp
	leal 56(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 56(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 56(%esp), %edx
	movl %ecx,8(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l106:
Lproc_body_start_l105:
	movl $1,%edx
	addl %edx,%ecx
	movl %eax,%edx
	movl %eax,12(%esp)
	movl $2,%eax
	movl %ebx,16(%esp)
	movl %edx,%ebx
	movl %ecx,20(%esp)
	movl %eax,%ecx
	shll %cl, %ebx
	movl 8(%esp),%ecx
	addl %ecx,%ebx
	movl (%ebx),%eax
	jmp L.22
L.22:
	movl 12(%esp),%ebx
	movl 20(%esp),%ecx
	cmpl %ecx,%ebx
	jl Ljoin_l112
Ljoin_l113:
	movl $2,%ebx
	movl %ebx,%ecx
	shll %cl, %edx
	movl 8(%esp),%ecx
	addl %ecx,%edx
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 20(%esp),%eax
	movl %eax,%edx
	movl %ebx,%ecx
	shll %cl, %edx
	movl 8(%esp),%ecx
	addl %ecx,%edx
	leal 56(%esp), %ecx
	movl $-52,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call exchange
Ljoin_l111:
	movl 20(%esp),%eax
	leal 56(%esp), %ecx
	leal 56(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebx
	leal 56(%esp), %esp
	ret
Ljoin_l112:
	jmp L.21
L.21:
	movl $1,%ebx
	movl %ebp,24(%esp)
	movl 12(%esp),%ebp
	addl %ebx,%ebp
	jmp L.25
L.25:
	movl $2,%ebx
	movl %esi,28(%esp)
	movl %ebp,%esi
	movl %ebx,%ecx
	shll %cl, %esi
	movl 8(%esp),%ecx
	addl %ecx,%esi
	movl (%esi),%ebx
	cmpl %eax,%ebx
	jl Ljoin_l121
Ljoin_l122:
	movl $1,%ebx
	movl 20(%esp),%esi
	subl %ebx,%esi
	jmp L.28
L.28:
	movl $2,%ebx
	movl %esi,%ecx
	movl %ecx,32(%esp)
	movl %ebx,%ecx
	movl 32(%esp),%ebx
	shll %cl, %ebx
	movl 8(%esp),%ecx
	addl %ecx,%ebx
	movl (%ebx),%ebx
	cmpl %eax,%ebx
	jg Ljoin_l119
Ljoin_l120:
	cmpl %esi,%ebp
	jge Ljoin_l117
Ljoin_l118:
	movl $2,%ebx
	movl %ebp,%ecx
	movl %ecx,36(%esp)
	movl %ebx,%ecx
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	shll %cl, %edi
	movl 8(%esp),%ecx
	addl %ecx,%edi
	leal 56(%esp), %ecx
	movl %edx,44(%esp)
	movl $-56,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %esi,%ecx
	movl %ecx,48(%esp)
	movl %ebx,%ecx
	movl 48(%esp),%ebx
	shll %cl, %ebx
	movl 8(%esp),%ecx
	addl %ecx,%ebx
	leal 56(%esp), %edi
	movl $-52,%edx
	addl %edx,%edi
	movl %ebx,(%edi)
	movl %eax,52(%esp)
	call exchange
Ljoin_l116:
	movl 40(%esp),%edi
	movl 8(%esp),%ecx
	movl 44(%esp),%edx
	movl 52(%esp),%eax
	jmp L.30
Ljoin_l117:
	jmp L.30
L.30:
	movl %ebp,12(%esp)
	movl %esi,20(%esp)
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	jmp L.22
Ljoin_l119:
	jmp L.27
L.27:
	movl $1,%ebx
	subl %ebx,%esi
	jmp L.28
Ljoin_l121:
	jmp L.24
L.24:
	movl $1,%ebx
	addl %ebx,%ebp
	movl 28(%esp),%esi
	movl 20(%esp),%ecx
	jmp L.25
.section .pcmap_data
Lstackdata_l129:
.long 0
.section .pcmap
.long Ljoin_l111
.long Lframe_l130
.section .pcmap_data
Lframe_l130:
.long 0xffffffc8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l129
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l116
.long Lframe_l131
.section .pcmap_data
Lframe_l131:
.long 0xffffffc8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l129
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xfffffff0
.long 0xffffffd0
.long 0x40000009
.long 0x4000000a
.long 0xfffffffc
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
exchange:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l134:
Lproc_body_start_l133:
	leal xx,%ecx
	movl (%ecx),%ecx
	movl %eax,12(%esp)
	movl $4,%eax
	movl %edx,16(%esp)
	leal i_39,%edx
	movl %ebx,20(%esp)
	leal 36(%esp), %ebx
	movl %ebp,24(%esp)
	movl $-36,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl 12(%esp),%edx
	movl %edx,%ebx
	subl %ecx,%ebx
	movl %eax,28(%esp)
	movl %ebx,%eax
	movl %eax,%ebx
	sarl $31, %ebx
	movl %ebx,%edx
	movl 28(%esp),%ebx
	idivl %ebx, %eax
	leal 36(%esp), %edx
	movl $-32,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	movl 16(%esp),%eax
	movl %eax,%edx
	subl %ecx,%edx
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ebx, %eax
	leal 36(%esp), %edx
	movl $-28,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l139:
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl 16(%esp),%eax
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $0,%eax
	leal 36(%esp), %edx
	leal 36(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl 20(%esp),%ebx
	movl 24(%esp),%ebp
	leal 36(%esp), %esp
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
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l146
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe8
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0x80000000
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
