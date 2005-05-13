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
	movl %eax,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
	leal in,%ecx
	leal 16(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $10,%ecx
	leal 16(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call sort
.Lcall_successor_l20:
	movl $0,%edi
L.5:
.Lbranch_target_l24:
	movl $10,%eax
	cmpl %eax,%edi
	jb L.2
.Lbranch_target_l11:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
L.2:
	movl $2,%ecx
	movl %edi,%edx
	shll %cl, %edx
	leal in,%eax
	addl %eax,%edx
	leal 16(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call putd
.Lcall_successor_l17:
	movl $10,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call putchar
.Lcall_successor_l14:
L.3:
	movl $1,%eax
	addl %eax,%edi
	jmp L.5
.section .pcmap_data
.Lstackdata_l28:
.long 0
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l28
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l28
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0x4000000b
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l28
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0x4000000b
.long 0
.section .text
putd:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
.Linitialize_continuations_l33:
.Lproc_body_start_l32:
.Lbranch_target_l50:
	movl $0,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	jge L.8
.Lbranch_target_l46:
	movl $45,%eax
	leal 12(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call putchar
.Lcall_successor_l45:
	movl 4(%esp),%eax
	negl %eax
	movl %eax,4(%esp)
L.8:
.Lbranch_target_l51:
	movl $10,%ecx
	movl 4(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je L.10
.Lbranch_target_l42:
	movl $10,%ecx
	movl 4(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	leal 12(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call putd
.Lcall_successor_l41:
L.10:
	movl $10,%ecx
	movl 4(%esp),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $48,%eax
	addl %eax,%edx
	leal 12(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	call putchar
.Lcall_successor_l38:
	movl $0,%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l55:
.long 0
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l55
.long 0
.long 1
.long 0
.long 1
.long 0xfffffff8
.long 0
.section .pcmap
.long .Lcall_successor_l41
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l55
.long 0
.long 1
.long 0
.long 1
.long 0xfffffff8
.long 0
.section .pcmap
.long .Lcall_successor_l38
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l55
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
sort:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 20(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,16(%esp)
	movl %edi,12(%esp)
.Linitialize_continuations_l60:
.Lproc_body_start_l59:
	leal xx,%edx
	movl %ecx,(%edx)
	movl $1,%edx
	subl %edx,%eax
	leal 20(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $0,%ecx
	leal 20(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 20(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call quick
.Lcall_successor_l65:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l72:
.long 0
.section .pcmap
.long .Lcall_successor_l65
.long .Lframe_l73
.section .pcmap_data
.Lframe_l73:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long .Lstackdata_l72
.long 1
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
quick:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	leal 32(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 32(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	leal 32(%esp), %eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	movl %ebx,28(%esp)
.Linitialize_continuations_l75:
.Lproc_body_start_l74:
.Lbranch_target_l92:
	movl 12(%esp),%ecx
	movl 16(%esp),%eax
	cmpl %eax,%ecx
	jl L.16
.Lbranch_target_l88:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%ebx
	leal 32(%esp), %esp
	ret
L.16:
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	call partition
.Lcall_successor_l86:
	movl %eax,%ebx
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
	movl %ebx,%eax
	subl %ecx,%eax
	leal 32(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call quick
.Lcall_successor_l83:
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	addl %eax,%ebx
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl %ebx,(%eax)
	leal 32(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	call quick
.Lcall_successor_l80:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l96:
.long 0
.section .pcmap
.long .Lcall_successor_l86
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long .Lstackdata_l96
.long 1
.long 5
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0xfffffff4
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l83
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long .Lstackdata_l96
.long 1
.long 5
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0xfffffff4
.long 0
.long 0xfffffff0
.long 0x40000007
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l80
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff8
.long .Lstackdata_l96
.long 1
.long 5
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
partition:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	leal 36(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	movl %esi,28(%esp)
	movl %ebp,24(%esp)
	movl %ebx,20(%esp)
.Linitialize_continuations_l101:
.Lproc_body_start_l100:
	movl $1,%ecx
	movl 8(%esp),%eax
	addl %ecx,%eax
	movl %eax,8(%esp)
	movl 12(%esp),%ebx
	movl $2,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
L.22:
.Lbranch_target_l120:
	movl 8(%esp),%ecx
	movl 12(%esp),%eax
	cmpl %ecx,%eax
	jl L.21
.Lbranch_target_l107:
	movl $2,%ecx
	shll %cl, %ebx
	movl 16(%esp),%eax
	addl %eax,%ebx
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ebx,(%eax)
	movl 8(%esp),%edx
	shll %cl, %edx
	movl 16(%esp),%eax
	addl %eax,%edx
	leal 36(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call exchange
.Lcall_successor_l106:
	movl 8(%esp),%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	movl 20(%esp),%ebx
	leal 36(%esp), %esp
	ret
L.21:
	movl $1,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
L.25:
.Lbranch_target_l118:
	movl $2,%ecx
	movl 12(%esp),%eax
	shll %cl, %eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %ebp,%eax
	jl L.24
.Lbranch_target_l113:
	movl $1,%ecx
	movl 8(%esp),%eax
	subl %ecx,%eax
	movl %eax,8(%esp)
L.28:
.Lbranch_target_l119:
	movl $2,%ecx
	movl 8(%esp),%eax
	shll %cl, %eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %ebp,%eax
	jg L.27
.Lbranch_target_l112:
.Lbranch_target_l117:
	movl 8(%esp),%ecx
	movl 12(%esp),%eax
	cmpl %ecx,%eax
	jge L.30
.Lbranch_target_l111:
	movl $2,%ecx
	movl 12(%esp),%eax
	shll %cl, %eax
	movl 16(%esp),%edx
	addl %edx,%eax
	leal 36(%esp), %esi
	movl $-36,%edx
	addl %edx,%esi
	movl %eax,(%esi)
	movl 8(%esp),%edx
	shll %cl, %edx
	movl 16(%esp),%eax
	addl %eax,%edx
	leal 36(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call exchange
.Lcall_successor_l110:
L.30:
	jmp L.22
L.27:
	movl $1,%ecx
	movl 8(%esp),%eax
	subl %ecx,%eax
	movl %eax,8(%esp)
	jmp L.28
L.24:
	movl $1,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	jmp L.25
.section .pcmap_data
.Lstackdata_l124:
.long 0
.section .pcmap
.long .Lcall_successor_l106
.long .Lframe_l125
.section .pcmap_data
.Lframe_l125:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l124
.long 3
.long 9
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffff0
.long 0
.long 0
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l110
.long .Lframe_l126
.section .pcmap_data
.Lframe_l126:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l124
.long 3
.long 9
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffff0
.long 0xffffffec
.long 0xffffffe8
.long 0xffffffe4
.long 0x40000009
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
exchange:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	leal 36(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl %ebp,24(%esp)
	movl %ebx,20(%esp)
.Linitialize_continuations_l128:
.Lproc_body_start_l127:
	leal xx,%eax
	movl (%eax),%ebx
	movl $4,%ecx
	leal i_39,%eax
	leal 36(%esp), %ebp
	movl $-36,%edx
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl 16(%esp),%eax
	subl %ebx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	leal 36(%esp), %ebp
	movl $-32,%edx
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl 12(%esp),%eax
	subl %ebx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	leal 36(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l133:
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl 12(%esp),%eax
	movl (%eax),%ecx
	movl 16(%esp),%eax
	movl %ecx,(%eax)
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 12(%esp),%eax
	movl %ecx,(%eax)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%ebp
	movl 20(%esp),%ebx
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l140:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l133
.long .Lframe_l141
.section .pcmap_data
.Lframe_l141:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff8
.long .Lstackdata_l140
.long 2
.long 5
.long 0
.long 1
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffff0
.long 0xffffffec
.long 0xffffffe8
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
