.globl main
.globl f
.globl g
.globl y
.globl x
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -72(%esp), %esp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $0,%eax
	jmp L.2
L.2:
	movl $0,%edx
	jmp L.6
L.6:
	movl $1000,%ecx
	imull %eax,%ecx
	addl %edx,%ecx
	movl %ebx,8(%esp)
	movl $2,%ebx
	movl %ebp,12(%esp)
	movl %edx,%ebp
	movl %ecx,16(%esp)
	movl %ebx,%ecx
	shll %cl, %ebp
	movl $4,%ecx
	movl %eax,%ebx
	shll %cl, %ebx
	leal x,%ecx
	addl %ecx,%ebx
	addl %ebx,%ebp
	movl 16(%esp),%ebx
	movl %ebx,(%ebp)
L.7:
	movl $1,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	cmpl %ebx,%edx
	jl Ljoin_l20
Ljoin_l21:
	movl $4,%ecx
	movl %eax,%ebx
	shll %cl, %ebx
	leal x,%ecx
	addl %ecx,%ebx
	movl $2,%ecx
	movl %eax,%ebp
	shll %cl, %ebp
	leal y,%ecx
	addl %ecx,%ebp
	movl %ebx,(%ebp)
L.3:
	movl $1,%ebx
	addl %ebx,%eax
	movl $3,%ebx
	cmpl %ebx,%eax
	jl Ljoin_l18
Ljoin_l19:
	call f
Ljoin_l17:
	movl $0,%eax
	jmp L.10
L.10:
	movl $4,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal 72(%esp), %ecx
	movl $-48,%ebx
	addl %ebx,%ecx
	addl %ecx,%edx
	movl %edx,%ecx
	movl $2,%ebx
	movl %eax,%ebp
	movl %ecx,20(%esp)
	movl %ebx,%ecx
	shll %cl, %ebp
	leal y,%ecx
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl $0,%edx
	jmp L.14
L.14:
	movl $2,%ecx
	movl %edx,%ebp
	shll %cl, %ebp
	movl $4,%ecx
	movl %eax,%ebx
	shll %cl, %ebx
	leal x,%ecx
	addl %ecx,%ebx
	movl %ebp,%ecx
	addl %ebx,%ecx
	movl 20(%esp),%ebx
	addl %ebx,%ebp
	movl (%ecx),%ecx
	movl %ecx,(%ebp)
L.15:
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	cmpl %ecx,%edx
	jl Ljoin_l14
L.11:
	movl $1,%ecx
	addl %ecx,%eax
	movl $3,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l12
Ljoin_l13:
	leal 72(%esp), %ecx
	movl $-48,%ebp
	addl %ebp,%ecx
	leal 72(%esp), %ebp
	movl $-72,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	leal y,%ecx
	leal 72(%esp), %ebp
	movl $-68,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	call g
Ljoin_l11:
	movl $0,%eax
	leal 72(%esp), %ecx
	leal 72(%esp), %edx
	movl $0,%ebp
	addl %ebp,%edx
	movl (%ecx),%ebp
	movl %ebp,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	leal 72(%esp), %esp
	ret
Ljoin_l12:
	jmp L.10
Ljoin_l14:
	jmp L.14
Ljoin_l18:
	jmp Ljoin_l26
Ljoin_l26:
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.2
Ljoin_l20:
	jmp Ljoin_l25
Ljoin_l25:
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.6
.section .pcmap_data
Lstackdata_l30:
.long 1
.long 0xffffffd0
.section .pcmap
.long Ljoin_l17
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffc0
.long 0x40000009
.long 0xffffffc4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long Ljoin_l11
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000009
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffc0
.long 0x40000009
.long 0xffffffc4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
f:
	leal -28(%esp), %esp
Linitialize_continuations_l35:
Lproc_body_start_l34:
	movl $0,%eax
	jmp L.29
L.29:
	movl $0,%edx
	jmp L.33
L.33:
	movl $2,%ecx
	movl %ebx,8(%esp)
	movl %edx,%ebx
	shll %cl, %ebx
	movl $4,%ecx
	movl %ebp,12(%esp)
	movl %eax,%ebp
	shll %cl, %ebp
	leal x,%ecx
	addl %ecx,%ebp
	addl %ebp,%ebx
	leal 28(%esp), %ebp
	movl $-24,%ecx
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	leal i_37,%ecx
	leal 28(%esp), %ebp
	movl $-28,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,16(%esp)
	movl %edx,20(%esp)
	call printf
Ljoin_l55:
L.34:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl Ljoin_l52
L.30:
	movl $1,%eax
	movl 16(%esp),%edx
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl Ljoin_l50
Ljoin_l51:
	leal i_38,%eax
	leal 28(%esp), %ebp
	movl $-28,%ebx
	addl %ebx,%ebp
	movl %eax,(%ebp)
	call printf
Ljoin_l49:
	movl $0,%eax
	jmp L.39
L.39:
	movl $0,%ecx
	jmp L.43
L.43:
	movl $2,%edx
	movl %ecx,%ebp
	movl %ecx,20(%esp)
	movl %edx,%ecx
	shll %cl, %ebp
	movl %eax,%ecx
	movl %ecx,24(%esp)
	movl %edx,%ecx
	movl 24(%esp),%edx
	shll %cl, %edx
	leal y,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ecx,%ebp
	leal 28(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ebp),%edx
	movl %edx,(%ecx)
	leal i_37,%ecx
	leal 28(%esp), %edx
	movl $-28,%ebp
	addl %ebp,%edx
	movl %ecx,(%edx)
	movl %eax,16(%esp)
	call printf
Ljoin_l46:
L.44:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl Ljoin_l43
L.40:
	movl $1,%eax
	movl 16(%esp),%edx
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl Ljoin_l41
Ljoin_l42:
	leal i_38,%eax
	leal 28(%esp), %ebp
	movl $-28,%ebx
	addl %ebx,%ebp
	movl %eax,(%ebp)
	call printf
Ljoin_l40:
	movl $0,%eax
	leal 28(%esp), %ecx
	leal 28(%esp), %edx
	movl $0,%ebp
	addl %ebp,%edx
	movl (%ecx),%ebp
	movl %ebp,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	leal 28(%esp), %esp
	ret
Ljoin_l41:
	jmp Ljoin_l60
Ljoin_l60:
	movl %edx,%eax
	jmp L.39
Ljoin_l43:
	jmp Ljoin_l59
Ljoin_l59:
	movl 16(%esp),%eax
	jmp L.43
Ljoin_l50:
	jmp Ljoin_l62
Ljoin_l62:
	movl %edx,%eax
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.29
Ljoin_l52:
	jmp Ljoin_l61
Ljoin_l61:
	movl %ecx,%edx
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%eax
	jmp L.33
.section .pcmap_data
Lstackdata_l66:
.long 0
.section .pcmap
.long Ljoin_l55
.long Lframe_l67
.section .pcmap_data
Lframe_l67:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l66
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l49
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l66
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l46
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l66
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l40
.long Lframe_l70
.section .pcmap_data
Lframe_l70:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l66
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
g:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 36(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l73:
Lproc_body_start_l72:
	movl $0,%eax
	jmp L.51
L.51:
	movl %edx,8(%esp)
	movl $0,%edx
	jmp L.55
L.55:
	movl %ecx,12(%esp)
	movl $2,%ecx
	movl %ebx,16(%esp)
	movl %edx,%ebx
	shll %cl, %ebx
	movl $4,%ecx
	movl %ebp,20(%esp)
	movl %eax,%ebp
	shll %cl, %ebp
	movl 8(%esp),%ecx
	addl %ecx,%ebp
	addl %ebp,%ebx
	leal 36(%esp), %ebp
	movl $-32,%ecx
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	leal i_37,%ecx
	leal 36(%esp), %ebp
	movl $-36,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,24(%esp)
	movl %edx,28(%esp)
	call printf
Ljoin_l93:
L.56:
	movl $1,%eax
	movl 28(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl Ljoin_l90
L.52:
	movl $1,%eax
	movl 24(%esp),%edx
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl Ljoin_l88
Ljoin_l89:
	leal i_38,%eax
	leal 36(%esp), %ebp
	movl $-36,%ebx
	addl %ebx,%ebp
	movl %eax,(%ebp)
	call printf
Ljoin_l87:
	movl $0,%eax
	jmp L.59
L.59:
	movl $0,%ecx
	jmp L.63
L.63:
	movl $2,%edx
	movl %ecx,%ebp
	movl %ecx,28(%esp)
	movl %edx,%ecx
	shll %cl, %ebp
	movl %eax,%ecx
	movl %ecx,32(%esp)
	movl %edx,%ecx
	movl 32(%esp),%edx
	shll %cl, %edx
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl (%edx),%ebx
	addl %ebx,%ebp
	leal 36(%esp), %ebx
	movl $-32,%edx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	leal i_37,%edx
	leal 36(%esp), %ebx
	movl $-36,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl %eax,24(%esp)
	call printf
Ljoin_l84:
L.64:
	movl $1,%eax
	movl 28(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl Ljoin_l81
L.60:
	movl $1,%eax
	movl 24(%esp),%edx
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl Ljoin_l79
Ljoin_l80:
	leal i_38,%eax
	leal 36(%esp), %ebx
	movl $-36,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l78:
	movl $0,%eax
	leal 36(%esp), %ecx
	leal 36(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 36(%esp), %esp
	ret
Ljoin_l79:
	jmp Ljoin_l98
Ljoin_l98:
	movl %edx,%eax
	jmp L.59
Ljoin_l81:
	jmp Ljoin_l97
Ljoin_l97:
	movl 24(%esp),%eax
	jmp L.63
Ljoin_l88:
	jmp Ljoin_l100
Ljoin_l100:
	movl %edx,%eax
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	movl 8(%esp),%edx
	movl 12(%esp),%ecx
	jmp L.51
Ljoin_l90:
	jmp Ljoin_l99
Ljoin_l99:
	movl %ecx,%edx
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	movl 12(%esp),%ecx
	movl 24(%esp),%eax
	jmp L.55
.section .pcmap_data
Lstackdata_l104:
.long 0
.section .pcmap
.long Ljoin_l93
.long Lframe_l105
.section .pcmap_data
Lframe_l105:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffe8
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l87
.long Lframe_l106
.section .pcmap_data
Lframe_l106:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l84
.long Lframe_l107
.section .pcmap_data
Lframe_l107:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xffffffe8
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l78
.long Lframe_l108
.section .pcmap_data
Lframe_l108:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l104
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
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
.section .bss
.align 4
y:
.skip 12, 0
.align 4
x:
.skip 48, 0
.section .data
i_38:
.byte 10
.byte 0
i_37:
.byte 32
.byte 37
.byte 100
.byte 0
