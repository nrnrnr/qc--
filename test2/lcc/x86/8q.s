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
.section .data
.section .text
main:
	leal -16(%esp), %esp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $0,%eax
	jmp L.2
L.2:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl $1,%ecx
	movl %edi,4(%esp)
	leal down,%edi
	movl %edi,8(%esp)
	movl %edx,%edi
	movl %esi,12(%esp)
	movl 8(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal up,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
L.3:
	movl $1,%edi
	addl %edi,%eax
	movl $15,%edi
	cmpl %edi,%eax
	jl Ljoin_l14
Ljoin_l15:
	movl $0,%edi
	jmp L.6
L.6:
	movl $1,%esi
	movl $2,%ecx
	movl %edi,%eax
	shll %cl, %eax
	leal rows,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
L.7:
	movl $1,%esi
	addl %esi,%edi
	movl $8,%esi
	cmpl %esi,%edi
	jl Ljoin_l12
Ljoin_l13:
	movl $0,%edi
	leal 16(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call queens
Ljoin_l11:
	movl $0,%eax
	leal 16(%esp), %edx
	leal 16(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%esi
	movl 4(%esp),%edi
	leal 16(%esp), %esp
	ret
Ljoin_l12:
	jmp L.6
Ljoin_l14:
	jmp Ljoin_l19
Ljoin_l19:
	movl 4(%esp),%edi
	movl 12(%esp),%esi
	jmp L.2
.section .pcmap_data
Lstackdata_l23:
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l23
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffffc
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
queens:
	leal -60(%esp), %esp
	leal 60(%esp), %eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
Linitialize_continuations_l27:
Lproc_body_start_l26:
	movl $0,%edx
	jmp L.14
L.14:
	movl $2,%ecx
	movl %edi,4(%esp)
	movl $0,%edi
	movl %edi,8(%esp)
	movl %edx,%edi
	movl %ecx,12(%esp)
	shll %cl, %edi
	leal rows,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl 8(%esp),%ecx
	cmpl %ecx,%edi
	je Ljoin_l44
Ljoin_l45:
	movl %edx,%edi
	subl %eax,%edi
	movl 12(%esp),%ecx
	shll %cl, %edi
	leal up,%ecx
	movl %edi,16(%esp)
	movl $28,%edi
	addl %edi,%ecx
	movl 16(%esp),%edi
	addl %ecx,%edi
	movl (%edi),%edi
	movl 8(%esp),%ecx
	cmpl %ecx,%edi
	je Ljoin_l42
Ljoin_l43:
	movl %edx,%edi
	addl %eax,%edi
	movl 12(%esp),%ecx
	shll %cl, %edi
	leal down,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl 8(%esp),%ecx
	cmpl %ecx,%edi
	je Ljoin_l40
Ljoin_l41:
	movl $2,%ecx
	movl $0,%edi
	movl %edi,20(%esp)
	movl %edx,%edi
	addl %eax,%edi
	movl %ecx,24(%esp)
	shll %cl, %edi
	leal down,%ecx
	addl %ecx,%edi
	movl 20(%esp),%ecx
	movl %ecx,(%edi)
	movl %edx,%edi
	subl %eax,%edi
	movl 24(%esp),%ecx
	shll %cl, %edi
	leal up,%ecx
	movl %edi,28(%esp)
	movl $28,%edi
	addl %edi,%ecx
	movl 28(%esp),%edi
	addl %ecx,%edi
	movl 20(%esp),%ecx
	movl %ecx,(%edi)
	movl %edx,%edi
	movl 24(%esp),%ecx
	shll %cl, %edi
	leal rows,%ecx
	addl %ecx,%edi
	movl 20(%esp),%ecx
	movl %ecx,(%edi)
	movl $2,%ecx
	movl %eax,%edi
	shll %cl, %edi
	leal x,%ecx
	addl %ecx,%edi
	movl %edx,(%edi)
	movl $7,%edi
	cmpl %edi,%eax
	jne Ljoin_l38
Ljoin_l39:
	movl %eax,44(%esp)
	movl %edx,48(%esp)
	call print
Ljoin_l37:
	jmp L.23
Ljoin_l38:
	jmp L.22
L.22:
	movl $1,%edi
	movl %eax,%ecx
	addl %edi,%ecx
	leal 60(%esp), %edi
	movl %edi,32(%esp)
	movl $-60,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl %esi,40(%esp)
	movl 36(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %eax,44(%esp)
	movl %edx,48(%esp)
	call queens
Ljoin_l34:
	movl 40(%esp),%esi
	jmp L.23
L.23:
	movl $2,%ecx
	movl $1,%edx
	movl 48(%esp),%edi
	movl %edi,%eax
	movl %edx,52(%esp)
	movl 44(%esp),%edx
	addl %edx,%eax
	movl %ecx,56(%esp)
	shll %cl, %eax
	leal down,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl %edi,%eax
	subl %edx,%eax
	movl 56(%esp),%ecx
	shll %cl, %eax
	leal up,%ecx
	movl $28,%edx
	addl %edx,%ecx
	addl %ecx,%eax
	movl 52(%esp),%edx
	movl %edx,(%eax)
	movl %edi,%eax
	movl 56(%esp),%ecx
	shll %cl, %eax
	leal rows,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl %edi,%edx
	movl 44(%esp),%eax
	jmp L.18
Ljoin_l40:
	jmp L.18
Ljoin_l42:
	jmp L.18
Ljoin_l44:
	jmp L.18
L.18:
L.15:
	movl $1,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	cmpl %ecx,%edx
	jl Ljoin_l30
Ljoin_l31:
	movl $0,%eax
	leal 60(%esp), %edx
	leal 60(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 60(%esp), %esp
	ret
Ljoin_l30:
	jmp Ljoin_l49
Ljoin_l49:
	movl 4(%esp),%edi
	jmp L.14
.section .pcmap_data
Lstackdata_l53:
.long 0
.section .pcmap
.long Ljoin_l37
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l53
.long 0x80000008
.long 0x8000000e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffc8
.long 0xfffffff0
.long 0xfffffff4
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
.long 0x80000000
.section .pcmap
.long Ljoin_l34
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l53
.long 0x80000008
.long 0x8000000e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffc8
.long 0xfffffff0
.long 0xfffffff4
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
.long 0x80000000
.section .text
print:
	leal -16(%esp), %esp
Linitialize_continuations_l58:
Lproc_body_start_l57:
	movl $0,%eax
	jmp L.39
L.39:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal x,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $49,%edx
	addl %edx,%ecx
	leal 16(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal i_43,%edi
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l68:
L.40:
	movl $1,%edi
	movl 12(%esp),%eax
	addl %edi,%eax
	movl $8,%edi
	cmpl %edi,%eax
	jl Ljoin_l64
Ljoin_l65:
	leal i_44,%edi
	leal 16(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l63:
	movl $0,%eax
	leal 16(%esp), %edx
	leal 16(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
Ljoin_l64:
	jmp Ljoin_l72
Ljoin_l72:
	movl 8(%esp),%edi
	jmp L.39
.section .pcmap_data
Lstackdata_l76:
.long 0
.section .pcmap
.long Ljoin_l68
.long Lframe_l77
.section .pcmap_data
Lframe_l77:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l76
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
.long 0xfffffff8
.long 0xfffffffc
.long 0x80000000
.section .pcmap
.long Ljoin_l63
.long Lframe_l78
.section .pcmap_data
Lframe_l78:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l76
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
.long 0xfffffff8
.long 0
.long 0x80000000
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
