.globl main
.globl queens
.globl print
.globl x
.globl rows
.globl down
.globl up
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
.section .text
main:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $0,%edx
	jmp L.2
L.2:
	movl $2,%ecx
	movl %edi,4(%esp)
	movl %edx,%edi
	shll %cl, %edi
	movl $1,%ecx
	movl %edi,8(%esp)
	leal down,%edi
	movl %esi,16(%esp)
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %edi,%esi
	movl 12(%esp),%edi
	addl %edi,%esi
	movl %ecx,(%esi)
	leal up,%edi
	movl 8(%esp),%esi
	addl %edi,%esi
	movl %ecx,(%esi)
L.3:
	movl $1,%edi
	addl %edi,%edx
	movl $15,%edi
	cmpl %edi,%edx
	jl Ljoin_l14
Ljoin_l15:
	movl $0,%edi
	jmp L.6
L.6:
	movl $1,%esi
	movl $2,%ecx
	movl %edi,%edx
	shll %cl, %edx
	leal rows,%ecx
	addl %ecx,%edx
	movl %esi,(%edx)
L.7:
	movl $1,%esi
	addl %esi,%edi
	movl $8,%esi
	cmpl %esi,%edi
	jl Ljoin_l12
Ljoin_l13:
	movl $0,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl %eax,20(%esp)
	call queens
Ljoin_l11:
	movl $0,%eax
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
Ljoin_l12:
	jmp L.6
Ljoin_l14:
	jmp Ljoin_l19
Ljoin_l19:
	movl 4(%esp),%edi
	movl 16(%esp),%esi
	jmp L.2
.section .pcmap_data
Lstackdata_l23:
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long Lstackdata_l23
.long 2
.long 3
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
.section .text
queens:
	leal -64(%esp), %esp
	leal 64(%esp), %eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 64(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l27:
Lproc_body_start_l26:
	movl $0,%ecx
	jmp L.14
L.14:
	movl %edi,4(%esp)
	movl $2,%edi
	movl %edi,8(%esp)
	movl $0,%edi
	movl %edi,12(%esp)
	movl %ecx,%edi
	movl %ecx,16(%esp)
	movl 8(%esp),%ecx
	shll %cl, %edi
	leal rows,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl 12(%esp),%ecx
	cmpl %ecx,%edi
	je Ljoin_l44
Ljoin_l45:
	movl %esi,20(%esp)
	movl 16(%esp),%edi
	movl %edi,%esi
	subl %eax,%esi
	movl 8(%esp),%ecx
	shll %cl, %esi
	leal up,%ecx
	movl $28,%edi
	addl %edi,%ecx
	addl %ecx,%esi
	movl (%esi),%edi
	movl 12(%esp),%esi
	cmpl %esi,%edi
	je Ljoin_l42
Ljoin_l43:
	movl 16(%esp),%edi
	movl %edi,%ecx
	addl %eax,%ecx
	movl %ecx,24(%esp)
	movl 8(%esp),%ecx
	movl 24(%esp),%edi
	shll %cl, %edi
	leal down,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	cmpl %esi,%edi
	je Ljoin_l40
Ljoin_l41:
	movl $2,%ecx
	movl $0,%edi
	movl %edi,28(%esp)
	movl 16(%esp),%esi
	movl %esi,%edi
	addl %eax,%edi
	movl %ecx,32(%esp)
	shll %cl, %edi
	leal down,%ecx
	addl %ecx,%edi
	movl 28(%esp),%ecx
	movl %ecx,(%edi)
	movl %esi,%edi
	subl %eax,%edi
	movl 32(%esp),%ecx
	shll %cl, %edi
	leal up,%ecx
	movl %edi,36(%esp)
	movl $28,%edi
	addl %edi,%ecx
	movl 36(%esp),%edi
	addl %ecx,%edi
	movl 28(%esp),%ecx
	movl %ecx,(%edi)
	movl %esi,%edi
	movl 32(%esp),%ecx
	shll %cl, %edi
	leal rows,%ecx
	addl %ecx,%edi
	movl 28(%esp),%ecx
	movl %ecx,(%edi)
	movl $2,%ecx
	movl %eax,%edi
	shll %cl, %edi
	leal x,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	movl $7,%edi
	cmpl %edi,%eax
	jne Ljoin_l38
Ljoin_l39:
	movl %edx,52(%esp)
	movl %eax,48(%esp)
	call print
Ljoin_l37:
	jmp L.23
Ljoin_l38:
	jmp L.22
L.22:
	movl $1,%edi
	movl %eax,%ecx
	addl %edi,%ecx
	leal 64(%esp), %edi
	movl %edi,40(%esp)
	movl $-64,%edi
	movl %edi,44(%esp)
	movl 40(%esp),%edi
	movl 44(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %edx,52(%esp)
	movl %eax,48(%esp)
	call queens
Ljoin_l34:
	movl 16(%esp),%esi
	jmp L.23
L.23:
	movl $2,%ecx
	movl $1,%edx
	movl %esi,%edi
	movl 48(%esp),%eax
	addl %eax,%edi
	movl %ecx,56(%esp)
	shll %cl, %edi
	leal down,%ecx
	addl %ecx,%edi
	movl %edx,(%edi)
	movl %esi,%edi
	subl %eax,%edi
	movl 56(%esp),%ecx
	shll %cl, %edi
	leal up,%ecx
	movl %edx,60(%esp)
	movl $28,%edx
	addl %edx,%ecx
	addl %ecx,%edi
	movl 60(%esp),%edx
	movl %edx,(%edi)
	movl %esi,%edi
	movl 56(%esp),%ecx
	shll %cl, %edi
	leal rows,%ecx
	addl %ecx,%edi
	movl %edx,(%edi)
	movl 52(%esp),%edx
	jmp L.18
Ljoin_l40:
	jmp L.18
Ljoin_l42:
	jmp L.18
Ljoin_l44:
	jmp Ljoin_l49
Ljoin_l49:
	movl %esi,20(%esp)
	jmp L.18
L.18:
L.15:
	movl $1,%ecx
	movl 16(%esp),%edi
	addl %ecx,%edi
	movl $8,%ecx
	cmpl %ecx,%edi
	jl Ljoin_l30
Ljoin_l31:
	movl $0,%eax
	leal 64(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 20(%esp),%esi
	movl 4(%esp),%edi
	leal 64(%esp), %esp
	ret
Ljoin_l30:
	jmp Ljoin_l50
Ljoin_l50:
	movl %edi,%ecx
	movl 4(%esp),%edi
	movl 20(%esp),%esi
	jmp L.14
.section .pcmap_data
Lstackdata_l54:
.long 0
.section .pcmap
.long Ljoin_l37
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0x80000004
.long 0xffffffc0
.long 0xfffffff4
.long Lstackdata_l54
.long 2
.long 14
.long 0
.long 1
.long 10
.long 0xffffffd4
.long 11
.long 0xffffffc4
.long 0xfffffff0
.long 0xffffffd0
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
.section .pcmap
.long Ljoin_l34
.long Lframe_l56
.section .pcmap_data
Lframe_l56:
.long 0x80000004
.long 0xffffffc0
.long 0xfffffff4
.long Lstackdata_l54
.long 2
.long 14
.long 0
.long 1
.long 10
.long 0xffffffd4
.long 11
.long 0xffffffc4
.long 0xfffffff0
.long 0xffffffd0
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
.section .text
print:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l59:
Lproc_body_start_l58:
	movl $0,%edx
	jmp L.39
L.39:
	movl $2,%ecx
	movl %edi,8(%esp)
	movl %edx,%edi
	shll %cl, %edi
	leal x,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl $49,%ecx
	addl %ecx,%edi
	leal 28(%esp), %ecx
	movl %edi,12(%esp)
	movl $-24,%edi
	addl %edi,%ecx
	movl 12(%esp),%edi
	movl %edi,(%ecx)
	leal i_43,%edi
	leal 28(%esp), %ecx
	movl %edi,16(%esp)
	movl $-28,%edi
	addl %edi,%ecx
	movl 16(%esp),%edi
	movl %edi,(%ecx)
	movl %eax,20(%esp)
	movl %edx,24(%esp)
	call printf
Ljoin_l69:
L.40:
	movl $1,%edi
	movl 24(%esp),%eax
	addl %edi,%eax
	movl $8,%edi
	cmpl %edi,%eax
	jl Ljoin_l65
Ljoin_l66:
	leal i_44,%edi
	leal 28(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l64:
	movl $0,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 28(%esp), %esp
	ret
Ljoin_l65:
	jmp Ljoin_l73
Ljoin_l73:
	movl %eax,%edx
	movl 8(%esp),%edi
	movl 20(%esp),%eax
	jmp L.39
.section .pcmap_data
Lstackdata_l77:
.long 0
.section .pcmap
.long Ljoin_l69
.long Lframe_l78
.section .pcmap_data
Lframe_l78:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long Lstackdata_l77
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xffffffec
.long 0xfffffffc
.long 0
.section .pcmap
.long Ljoin_l64
.long Lframe_l79
.section .pcmap_data
Lframe_l79:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff8
.long Lstackdata_l77
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xffffffec
.long 0
.long 0
.section .text
.section .bss
.align 4
x:
.skip 32, 0
.align 4
rows:
.skip 32, 0
.align 4
down:
.skip 60, 0
.align 4
up:
.skip 60, 0
.section .data
i_44:
.byte 10
.byte 0
i_43:
.byte 37
.byte 99
.byte 32
.byte 0
