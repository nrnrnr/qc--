.globl main
.globl queens
.globl print
.globl x
.globl rows
.globl down
.globl up
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -16(%esp), %esp
initialize_continuations_l3:
	movl $0,%eax
	jmp L.2
L.2:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl $1,%ecx
	movl %ebx,4(%esp)
	leal down,%ebx
	movl %ebp,8(%esp)
	movl %edx,%ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	leal up,%ebp
	addl %ebp,%edx
	movl %ecx,(%edx)
L.3:
	movl $1,%ecx
	addl %ecx,%eax
	movl $15,%ecx
	cmpl %ecx,%eax
	jl join_l11
join_l12:
	movl $0,%ecx
	jmp L.6
L.6:
	movl $1,%edx
	leal rows,%ebp
	movl $2,%ebx
	movl %ecx,%eax
	movl %ecx,12(%esp)
	movl %ebx,%ecx
	shll %cl, %eax
	addl %ebp,%eax
	movl %edx,(%eax)
L.7:
	movl $1,%eax
	movl 12(%esp),%edx
	addl %eax,%edx
	movl $8,%eax
	cmpl %eax,%edx
	jl join_l9
join_l10:
	movl $0,%eax
	movl $-16,%ebp
	leal 16(%esp), %ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	call queens
join_l8:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	leal 16(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l9:
	jmp join_l16
join_l16:
	movl %edx,%ecx
	jmp L.6
join_l11:
	jmp join_l17
join_l17:
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	jmp L.2
.section .pcmap_data
stackdata_l21:
.long 0
.section .pcmap
.long join_l8
.long frame_l22
.section .pcmap_data
frame_l22:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l21
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0xfffffff8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.section .text
queens:
	leal -44(%esp), %esp
	movl $4,%eax
	leal 44(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
initialize_continuations_l25:
	movl $0,%edx
	jmp L.14
L.14:
	movl $2,%ecx
	movl %eax,4(%esp)
	movl $0,%eax
	movl %ebx,8(%esp)
	leal rows,%ebx
	movl %ebp,12(%esp)
	movl %edx,%ebp
	movl %ecx,16(%esp)
	shll %cl, %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	cmpl %eax,%ebx
	je join_l42
join_l43:
	movl $28,%ebx
	leal up,%ebp
	addl %ebx,%ebp
	movl %edx,%ebx
	movl 4(%esp),%ecx
	subl %ecx,%ebx
	movl %ecx,4(%esp)
	movl 16(%esp),%ecx
	shll %cl, %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	cmpl %eax,%ebp
	je join_l40
join_l41:
	leal down,%ebp
	movl %edx,%ebx
	movl 4(%esp),%ecx
	addl %ecx,%ebx
	movl %ecx,4(%esp)
	movl 16(%esp),%ecx
	shll %cl, %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	cmpl %eax,%ebp
	je join_l38
join_l39:
	movl $2,%ecx
	movl $0,%eax
	leal down,%ebp
	movl %edx,%ebx
	movl %esi,20(%esp)
	movl 4(%esp),%esi
	addl %esi,%ebx
	movl %ecx,24(%esp)
	shll %cl, %ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl $28,%ebx
	leal up,%ebp
	addl %ebx,%ebp
	movl %edx,%ebx
	subl %esi,%ebx
	movl 24(%esp),%ecx
	shll %cl, %ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	leal rows,%ebx
	movl %edx,%ebp
	movl 24(%esp),%ecx
	shll %cl, %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	leal x,%eax
	movl $2,%ecx
	movl %esi,%ebp
	shll %cl, %ebp
	addl %eax,%ebp
	movl %edx,(%ebp)
	movl $7,%ebp
	cmpl %ebp,%esi
	jne join_l36
join_l37:
	movl %edx,28(%esp)
	call print
join_l35:
	jmp L.23
join_l36:
	jmp L.22
L.22:
	movl $1,%ebp
	movl %esi,%eax
	addl %ebp,%eax
	movl $-44,%ebp
	leal 44(%esp), %ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	movl %edx,28(%esp)
	call queens
join_l32:
	jmp L.23
L.23:
	movl $2,%eax
	movl $1,%ecx
	leal down,%edx
	movl 28(%esp),%ebp
	movl %ebp,%ebx
	addl %esi,%ebx
	movl %ecx,32(%esp)
	movl %eax,%ecx
	shll %cl, %ebx
	addl %edx,%ebx
	movl 32(%esp),%edx
	movl %edx,(%ebx)
	movl $28,%ebx
	leal up,%ecx
	addl %ebx,%ecx
	movl %ebp,%ebx
	subl %esi,%ebx
	movl %ecx,36(%esp)
	movl %eax,%ecx
	shll %cl, %ebx
	movl 36(%esp),%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	leal rows,%ebx
	movl %ebp,%ecx
	movl %ecx,40(%esp)
	movl %eax,%ecx
	movl 40(%esp),%eax
	shll %cl, %eax
	addl %ebx,%eax
	movl %edx,(%eax)
	movl %esi,4(%esp)
	movl %ebp,%edx
	movl 20(%esp),%esi
	jmp L.18
join_l38:
	jmp L.18
join_l40:
	jmp L.18
join_l42:
	jmp L.18
L.18:
L.15:
	movl $1,%eax
	addl %eax,%edx
	movl $8,%eax
	cmpl %eax,%edx
	jl join_l28
join_l29:
	movl $0,%eax
	leal 44(%esp), %ebx
	movl $0,%ecx
	leal 44(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	leal 44(%esp), %esp
	ret
join_l28:
	jmp join_l47
join_l47:
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 4(%esp),%eax
	jmp L.14
.section .pcmap_data
stackdata_l51:
.long 0
.section .pcmap
.long join_l35
.long frame_l52
.section .pcmap_data
frame_l52:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long stackdata_l51
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0x4000000a
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l32
.long frame_l53
.section .pcmap_data
frame_l53:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long stackdata_l51
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0x4000000a
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
print:
	leal -24(%esp), %esp
initialize_continuations_l56:
	movl $0,%eax
	jmp L.39
L.39:
	movl $49,%edx
	leal x,%ecx
	movl %ebx,8(%esp)
	movl $2,%ebx
	movl %ebp,12(%esp)
	movl %eax,%ebp
	movl %ecx,16(%esp)
	movl %ebx,%ecx
	shll %cl, %ebp
	movl 16(%esp),%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl $-20,%edx
	leal 24(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	leal i_43,%ecx
	movl $-24,%ebp
	leal 24(%esp), %edx
	addl %ebp,%edx
	movl %ecx,(%edx)
	movl %eax,20(%esp)
	call printf
join_l66:
L.40:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl $8,%eax
	cmpl %eax,%ecx
	jl join_l62
join_l63:
	leal i_44,%eax
	movl $-24,%edx
	leal 24(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	call printf
join_l61:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	leal 24(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	leal 24(%esp), %esp
	ret
join_l62:
	jmp join_l70
join_l70:
	movl %ecx,%eax
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.39
.section .pcmap_data
stackdata_l74:
.long 0
.section .pcmap
.long join_l66
.long frame_l75
.section .pcmap_data
frame_l75:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l74
.long 0x80000008
.long 0x80000001
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
.long 0xfffffffc
.section .pcmap
.long join_l61
.long frame_l76
.section .pcmap_data
frame_l76:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l74
.long 0x80000008
.long 0x80000001
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
