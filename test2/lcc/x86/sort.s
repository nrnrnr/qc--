.globl in
.globl main
.globl putd
.globl sort
.globl quick
.globl partition
.globl exchange
.globl xx
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
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $10,%eax
	movl $-12,%edx
	leal 16(%esp), %ecx
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
	movl $0,%edx
	movl %ebx,8(%esp)
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
Ljoin_l12:
	jmp L.2
L.2:
	leal in,%edx
	movl $2,%ecx
	movl %ebx,8(%esp)
	movl %eax,%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl $-16,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl %eax,12(%esp)
	call putd
Ljoin_l19:
	movl $10,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
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
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.section .text
putd:
	leal -20(%esp), %esp
	movl $4,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%eax
Linitialize_continuations_l35:
Lproc_body_start_l34:
	movl $0,%edx
	cmpl %edx,%eax
	jge Ljoin_l49
Ljoin_l50:
	movl $45,%edx
	movl $-20,%ecx
	movl %eax,4(%esp)
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
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
	movl %ecx,4(%esp)
	movl 8(%esp),%ecx
	idivl %ecx, %eax
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call putd
Ljoin_l43:
	jmp L.10
Ljoin_l44:
	jmp L.10
L.10:
	movl $48,%eax
	movl $10,%ecx
	movl 4(%esp),%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl 12(%esp),%eax
	addl %eax,%edx
	movl $-20,%eax
	leal 20(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	call putchar
Ljoin_l40:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	movl %ebx,16(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
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
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff0
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
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff0
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
.section .text
sort:
	leal -20(%esp), %esp
	movl $4,%eax
	leal 20(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l63:
Lproc_body_start_l62:
	leal xx,%edx
	movl %eax,(%edx)
	movl $1,%edx
	subl %edx,%ecx
	movl %ecx,%edx
	movl $-20,%edx
	movl %eax,12(%esp)
	leal 20(%esp), %eax
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	movl $0,%eax
	movl $-16,%edx
	movl %ebx,16(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-12,%eax
	leal 20(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	call quick
Ljoin_l68:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
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
.long 0x80000003
.long 0x80000000
.long 0x80000000
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
.section .text
quick:
	leal -36(%esp), %esp
	movl $4,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l79:
Lproc_body_start_l78:
	cmpl %edx,%ecx
	jl Ljoin_l92
Ljoin_l93:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	movl %edi,32(%esp)
	leal 36(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 32(%esp),%edi
	leal 36(%esp), %esp
	ret
Ljoin_l92:
	jmp L.16
L.16:
	movl $-36,%eax
	movl %ecx,16(%esp)
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $-32,%ecx
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $-28,%eax
	movl %ecx,16(%esp)
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl %edx,20(%esp)
	call partition
Ljoin_l90:
	movl $-36,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $-32,%edx
	movl %ecx,12(%esp)
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	movl %eax,%edx
	subl %ecx,%edx
	movl $-28,%ecx
	movl %ebx,24(%esp)
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl %eax,28(%esp)
	call quick
Ljoin_l87:
	movl $-36,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $1,%eax
	movl 28(%esp),%ecx
	addl %eax,%ecx
	movl $-32,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-28,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	call quick
Ljoin_l84:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
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
.long 0x80000000
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
.long 0x80000000
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
.section .text
partition:
	leal -52(%esp), %esp
	movl $4,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	movl %edx,8(%esp)
	leal 52(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
Linitialize_continuations_l106:
Lproc_body_start_l105:
	movl $1,%edx
	addl %edx,%eax
	movl %ecx,%edx
	movl %ecx,12(%esp)
	movl $2,%ecx
	movl %ebx,16(%esp)
	movl %edx,%ebx
	shll %cl, %ebx
	movl 8(%esp),%ecx
	addl %ecx,%ebx
	movl (%ebx),%ebx
	jmp L.22
L.22:
	movl %ecx,8(%esp)
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	jl Ljoin_l112
Ljoin_l113:
	movl $2,%ecx
	movl %ecx,20(%esp)
	shll %cl, %edx
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl $-52,%ebx
	movl %ecx,8(%esp)
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl %eax,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl 24(%esp),%edx
	shll %cl, %edx
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl $-48,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl %eax,28(%esp)
	call exchange
Ljoin_l111:
	movl 28(%esp),%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 16(%esp),%ebx
	leal 52(%esp), %esp
	ret
Ljoin_l112:
	jmp L.21
L.21:
	movl %ebp,32(%esp)
	movl $1,%ebp
	addl %ebp,%ecx
	jmp L.25
L.25:
	movl $2,%ebp
	movl %esi,36(%esp)
	movl %ecx,%esi
	movl %ecx,12(%esp)
	movl %ebp,%ecx
	shll %cl, %esi
	movl 8(%esp),%ecx
	addl %ecx,%esi
	movl (%esi),%ebp
	cmpl %ebx,%ebp
	jl Ljoin_l121
Ljoin_l122:
	movl $1,%ebp
	subl %ebp,%eax
	jmp L.28
L.28:
	movl $2,%ebp
	movl %eax,%esi
	movl %ecx,8(%esp)
	movl %ebp,%ecx
	shll %cl, %esi
	movl 8(%esp),%ecx
	addl %ecx,%esi
	movl (%esi),%ebp
	cmpl %ebx,%ebp
	jg Ljoin_l119
Ljoin_l120:
	movl 12(%esp),%ebp
	cmpl %eax,%ebp
	jge Ljoin_l117
Ljoin_l118:
	movl $2,%esi
	movl %ecx,8(%esp)
	movl %ebp,%ecx
	movl %ecx,40(%esp)
	movl %esi,%ecx
	movl %ebp,12(%esp)
	movl 40(%esp),%ebp
	shll %cl, %ebp
	movl 8(%esp),%ecx
	addl %ecx,%ebp
	movl %ecx,8(%esp)
	movl $-52,%ecx
	movl %edi,44(%esp)
	leal 52(%esp), %edi
	addl %ecx,%edi
	movl %ebp,(%edi)
	movl %eax,%ebp
	movl %esi,%ecx
	shll %cl, %ebp
	movl 8(%esp),%ecx
	addl %ecx,%ebp
	movl $-48,%esi
	leal 52(%esp), %edi
	addl %esi,%edi
	movl %ebp,(%edi)
	movl %ecx,8(%esp)
	movl %eax,28(%esp)
	movl %edx,48(%esp)
	call exchange
Ljoin_l116:
	movl 44(%esp),%edi
	movl 8(%esp),%ecx
	movl 12(%esp),%ebp
	movl 28(%esp),%eax
	movl 48(%esp),%edx
	jmp L.30
Ljoin_l117:
	jmp L.30
L.30:
	movl %ebp,12(%esp)
	movl 36(%esp),%esi
	movl 32(%esp),%ebp
	jmp L.22
Ljoin_l119:
	jmp L.27
L.27:
	movl $1,%ebp
	subl %ebp,%eax
	jmp L.28
Ljoin_l121:
	jmp L.24
L.24:
	movl $1,%ebp
	movl 12(%esp),%esi
	addl %ebp,%esi
	movl %ecx,8(%esp)
	movl %esi,%ecx
	movl 36(%esp),%esi
	jmp L.25
.section .pcmap_data
Lstackdata_l129:
.long 0
.section .pcmap
.long Ljoin_l116
.long Lframe_l130
.section .pcmap_data
Lframe_l130:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l129
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff8
.long 0xffffffd4
.long 0xffffffd8
.long 0xffffffe8
.long 0x40000007
.long 0xfffffffc
.long 0
.long 0
.section .pcmap
.long Ljoin_l111
.long Lframe_l131
.section .pcmap_data
Lframe_l131:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l129
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.section .text
exchange:
	leal -36(%esp), %esp
	movl $4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%eax
	movl $8,%edx
	leal 36(%esp), %ecx
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
	movl $-36,%ebx
	movl %ebp,24(%esp)
	leal 36(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl 12(%esp),%edx
	movl %edx,%ebp
	subl %ecx,%ebp
	movl %eax,28(%esp)
	movl %ebp,%eax
	movl %eax,%ebp
	sarl $31, %ebp
	movl %edx,12(%esp)
	movl %ebp,%edx
	movl 28(%esp),%ebp
	idivl %ebp, %eax
	movl $-32,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl 16(%esp),%eax
	movl %eax,%ebx
	subl %ecx,%ebx
	movl %eax,16(%esp)
	movl %ebx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ebp, %eax
	movl $-28,%edx
	leal 36(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	call printf
Ljoin_l139:
	movl $-4,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl (%eax),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $-4,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	leal 36(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 24(%esp),%ebp
	movl 20(%esp),%ebx
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
.long 0x80000004
.long 0x80000000
.long 0x80000000
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
