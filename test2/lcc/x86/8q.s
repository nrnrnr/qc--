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
	jl Ljoin_l14
Ljoin_l15:
	movl $0,%ecx
	jmp L.6
L.6:
	movl $1,%edx
	movl $2,%ebp
	movl %ecx,%ebx
	movl %ecx,12(%esp)
	movl %ebp,%ecx
	shll %cl, %ebx
	leal rows,%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
L.7:
	movl $1,%edx
	movl 12(%esp),%ebx
	addl %edx,%ebx
	movl $8,%edx
	cmpl %edx,%ebx
	jl Ljoin_l12
Ljoin_l13:
	movl $0,%edx
	leal 16(%esp), %ecx
	movl $-16,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call queens
Ljoin_l11:
	movl $0,%eax
	leal 16(%esp), %ecx
	leal 16(%esp), %edx
	movl $0,%ebp
	addl %ebp,%edx
	movl (%ecx),%ebp
	movl %ebp,(%edx)
	movl 4(%esp),%ebx
	movl 8(%esp),%ebp
	leal 16(%esp), %esp
	ret
Ljoin_l12:
	jmp Ljoin_l19
Ljoin_l19:
	movl %ebx,%ecx
	jmp L.6
Ljoin_l14:
	jmp Ljoin_l20
Ljoin_l20:
	movl 8(%esp),%ebp
	movl 4(%esp),%ebx
	jmp L.2
.section .pcmap_data
Lstackdata_l24:
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l24
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .text
queens:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l28:
Lproc_body_start_l27:
	movl $0,%eax
	jmp L.14
L.14:
	movl $2,%ecx
	movl %edx,4(%esp)
	movl $0,%edx
	movl %ebx,8(%esp)
	movl %eax,%ebx
	movl %ecx,12(%esp)
	shll %cl, %ebx
	leal rows,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %edx,%ecx
	je Ljoin_l45
Ljoin_l46:
	movl %eax,%ecx
	movl 4(%esp),%ebx
	subl %ebx,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl 16(%esp),%ebx
	shll %cl, %ebx
	leal up,%ecx
	movl %ebp,20(%esp)
	movl $28,%ebp
	addl %ebp,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %edx,%ecx
	je Ljoin_l43
Ljoin_l44:
	movl %eax,%ecx
	movl 4(%esp),%ebx
	addl %ebx,%ecx
	movl %ecx,24(%esp)
	movl 12(%esp),%ecx
	movl 24(%esp),%ebp
	shll %cl, %ebp
	leal down,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	cmpl %edx,%ecx
	je Ljoin_l41
Ljoin_l42:
	movl $2,%ecx
	movl $0,%edx
	movl %eax,%ebp
	addl %ebx,%ebp
	movl %ecx,28(%esp)
	shll %cl, %ebp
	leal down,%ecx
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl %eax,%ebp
	subl %ebx,%ebp
	movl 28(%esp),%ecx
	shll %cl, %ebp
	leal up,%ecx
	movl $28,%ebx
	addl %ebx,%ecx
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl %eax,%ebp
	movl 28(%esp),%ecx
	shll %cl, %ebp
	leal rows,%ecx
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl $2,%ecx
	movl 4(%esp),%edx
	movl %edx,%ebp
	shll %cl, %ebp
	leal x,%ecx
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $7,%ebp
	cmpl %ebp,%edx
	jne Ljoin_l39
Ljoin_l40:
	movl %eax,32(%esp)
	call print
Ljoin_l38:
	jmp L.23
Ljoin_l39:
	jmp L.22
L.22:
	movl $1,%ebp
	movl %edx,%ecx
	addl %ebp,%ecx
	leal 40(%esp), %ebp
	movl $-40,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,32(%esp)
	call queens
Ljoin_l35:
	jmp L.23
L.23:
	movl $2,%eax
	movl $1,%ecx
	movl 32(%esp),%edx
	movl %edx,%ebp
	movl 4(%esp),%ebx
	addl %ebx,%ebp
	movl %ecx,36(%esp)
	movl %eax,%ecx
	shll %cl, %ebp
	leal down,%ecx
	addl %ecx,%ebp
	movl 36(%esp),%ecx
	movl %ecx,(%ebp)
	movl %edx,%ebp
	subl %ebx,%ebp
	movl %eax,%ecx
	shll %cl, %ebp
	leal up,%ecx
	movl $28,%edx
	addl %edx,%ecx
	addl %ecx,%ebp
	movl 36(%esp),%ecx
	movl %ecx,(%ebp)
	movl 32(%esp),%ebp
	movl %ebp,%edx
	movl %eax,%ecx
	shll %cl, %edx
	leal rows,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl %ebp,%eax
	jmp L.18
Ljoin_l41:
	jmp L.18
Ljoin_l43:
	jmp Ljoin_l50
Ljoin_l50:
	movl 4(%esp),%ebx
	jmp L.18
Ljoin_l45:
	jmp Ljoin_l51
Ljoin_l51:
	movl %ebp,20(%esp)
	movl 4(%esp),%ebx
	jmp L.18
L.18:
L.15:
	movl $1,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l31
Ljoin_l32:
	movl $0,%ecx
	movl %ecx,%eax
	leal 40(%esp), %ecx
	leal 40(%esp), %edx
	movl $0,%ebp
	addl %ebp,%edx
	movl (%ecx),%ebp
	movl %ebp,(%edx)
	movl 8(%esp),%ebx
	movl 20(%esp),%ebp
	leal 40(%esp), %esp
	ret
Ljoin_l31:
	jmp Ljoin_l52
Ljoin_l52:
	movl %ebx,%edx
	movl 20(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.14
.section .pcmap_data
Lstackdata_l56:
.long 0
.section .pcmap
.long Ljoin_l38
.long Lframe_l57
.section .pcmap_data
Lframe_l57:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l56
.long 0x80000008
.long 0x8000000e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
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
.long Ljoin_l35
.long Lframe_l58
.section .pcmap_data
Lframe_l58:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l56
.long 0x80000008
.long 0x8000000e
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffdc
.long 0xfffffff8
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
Linitialize_continuations_l61:
Lproc_body_start_l60:
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
	movl %ebx,8(%esp)
	movl $-12,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal i_43,%ecx
	leal 16(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,12(%esp)
	call printf
Ljoin_l71:
L.40:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl $8,%eax
	cmpl %eax,%ecx
	jl Ljoin_l67
Ljoin_l68:
	leal i_44,%eax
	leal 16(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l66:
	movl $0,%eax
	leal 16(%esp), %ecx
	leal 16(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
Ljoin_l67:
	jmp Ljoin_l75
Ljoin_l75:
	movl %ecx,%eax
	movl 8(%esp),%ebx
	jmp L.39
.section .pcmap_data
Lstackdata_l79:
.long 0
.section .pcmap
.long Ljoin_l71
.long Lframe_l80
.section .pcmap_data
Lframe_l80:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l79
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
.long Ljoin_l66
.long Lframe_l81
.section .pcmap_data
Lframe_l81:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l79
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
