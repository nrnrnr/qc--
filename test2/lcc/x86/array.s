.globl main
.globl f
.globl g
.globl y
.globl x
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -84(%esp), %esp
initialize_continuations_l4:
proc_body_start_l3:
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
	leal x,%ebx
	movl %ebp,12(%esp)
	movl $4,%ebp
	movl %esi,16(%esp)
	movl %eax,%esi
	movl %ecx,20(%esp)
	movl %ebp,%ecx
	shll %cl, %esi
	addl %ebx,%esi
	movl $2,%ecx
	movl %edx,%ebx
	shll %cl, %ebx
	addl %esi,%ebx
	movl 20(%esp),%esi
	movl %esi,(%ebx)
L.7:
	movl $1,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	cmpl %ebx,%edx
	jl join_l18
join_l19:
	leal x,%ebx
	movl $4,%ecx
	movl %eax,%esi
	shll %cl, %esi
	addl %ebx,%esi
	leal y,%ebx
	movl $2,%ecx
	movl %eax,%ebp
	shll %cl, %ebp
	addl %ebx,%ebp
	movl %esi,(%ebp)
L.3:
	movl $1,%ebp
	addl %ebp,%eax
	movl $3,%ebp
	cmpl %ebp,%eax
	jl join_l16
join_l17:
	call f
join_l15:
	movl $0,%eax
	jmp L.10
L.10:
	movl $-48,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	movl $4,%ecx
	movl %eax,%ebp
	shll %cl, %ebp
	addl %edx,%ebp
	movl %ebp,%edx
	leal y,%ecx
	movl $2,%esi
	movl %eax,%ebx
	movl %ecx,24(%esp)
	movl %esi,%ecx
	shll %cl, %ebx
	movl 24(%esp),%ecx
	addl %ecx,%ebx
	movl %ebp,(%ebx)
	movl $0,%ebx
	jmp L.14
L.14:
	movl $2,%ecx
	movl %ebx,%ebp
	shll %cl, %ebp
	leal x,%ecx
	movl $4,%esi
	movl %edi,28(%esp)
	movl %eax,%edi
	movl %ecx,32(%esp)
	movl %esi,%ecx
	shll %cl, %edi
	movl 32(%esp),%ecx
	addl %ecx,%edi
	movl %ebp,%ecx
	addl %edi,%ecx
	addl %edx,%ebp
	movl (%ecx),%edi
	movl %edi,(%ebp)
L.15:
	movl $1,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	cmpl %ebp,%ebx
	jl join_l12
L.11:
	movl $1,%ebp
	addl %ebp,%eax
	movl $3,%ebp
	cmpl %ebp,%eax
	jl join_l10
join_l11:
	movl $-48,%ebp
	leal 84(%esp), %edi
	addl %ebp,%edi
	movl $-84,%ebp
	leal 84(%esp), %ecx
	addl %ebp,%ecx
	movl %edi,(%ecx)
	leal y,%ecx
	movl $-80,%edi
	leal 84(%esp), %ebp
	addl %edi,%ebp
	movl %ecx,(%ebp)
	call g
join_l9:
	movl $0,%eax
	leal 84(%esp), %ecx
	movl $0,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%esi
	movl 28(%esp),%edi
	leal 84(%esp), %esp
	ret
join_l10:
	jmp join_l24
join_l24:
	movl 28(%esp),%edi
	jmp L.10
join_l12:
	jmp join_l23
join_l23:
	movl 28(%esp),%edi
	jmp L.14
join_l16:
	jmp join_l26
join_l26:
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.2
join_l18:
	jmp join_l25
join_l25:
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.6
.section .pcmap_data
stackdata_l30:
.long 1
.long 0xffffffd0
.section .pcmap
.long join_l15
.long frame_l31
.section .pcmap_data
frame_l31:
.long 0xffffffac
.long 0x80000004
.long 0x80000000
.long stackdata_l30
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffb4
.long 0x40000009
.long 0xffffffb8
.long 0x4000000a
.long 0xffffffbc
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l9
.long frame_l32
.section .pcmap_data
frame_l32:
.long 0xffffffac
.long 0x80000004
.long 0x80000000
.long stackdata_l30
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffb4
.long 0x40000009
.long 0xffffffb8
.long 0x4000000a
.long 0xffffffbc
.long 0x4000000b
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
f:
	leal -32(%esp), %esp
initialize_continuations_l36:
proc_body_start_l35:
	movl $0,%eax
	jmp L.29
L.29:
	movl $0,%edx
	jmp L.33
L.33:
	leal x,%ecx
	movl %ebx,8(%esp)
	movl $4,%ebx
	movl %ebp,12(%esp)
	movl %eax,%ebp
	movl %ecx,16(%esp)
	movl %ebx,%ecx
	shll %cl, %ebp
	movl 16(%esp),%ecx
	addl %ecx,%ebp
	movl $2,%ecx
	movl %edx,%ebx
	shll %cl, %ebx
	addl %ebp,%ebx
	movl $-28,%ebp
	leal 32(%esp), %ecx
	addl %ebp,%ecx
	movl (%ebx),%ebp
	movl %ebp,(%ecx)
	leal i_37,%ecx
	movl $-32,%ebp
	leal 32(%esp), %ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %eax,20(%esp)
	movl %edx,24(%esp)
	call printf
join_l56:
L.34:
	movl $1,%eax
	movl 24(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl join_l53
L.30:
	movl $1,%eax
	movl 20(%esp),%edx
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl join_l51
join_l52:
	leal i_38,%eax
	movl $-32,%ebx
	leal 32(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	call printf
join_l50:
	movl $0,%eax
	jmp L.39
L.39:
	movl $0,%ecx
	jmp L.43
L.43:
	movl $2,%edx
	leal y,%ebp
	movl %eax,%ebx
	movl %ecx,24(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl 24(%esp),%ebx
	movl %ebx,%ecx
	movl %ecx,28(%esp)
	movl %edx,%ecx
	movl 28(%esp),%edx
	shll %cl, %edx
	addl %ebp,%edx
	movl $-28,%ebp
	leal 32(%esp), %ecx
	addl %ebp,%ecx
	movl (%edx),%ebp
	movl %ebp,(%ecx)
	leal i_37,%ecx
	movl $-32,%ebp
	leal 32(%esp), %edx
	addl %ebp,%edx
	movl %ecx,(%edx)
	movl %eax,20(%esp)
	call printf
join_l47:
L.44:
	movl $1,%eax
	addl %eax,%ebx
	movl $4,%eax
	cmpl %eax,%ebx
	jl join_l44
L.40:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl $3,%eax
	cmpl %eax,%ecx
	jl join_l42
join_l43:
	leal i_38,%eax
	movl $-32,%edx
	leal 32(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	call printf
join_l41:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	leal 32(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	leal 32(%esp), %esp
	ret
join_l42:
	jmp join_l61
join_l61:
	movl %ecx,%eax
	jmp L.39
join_l44:
	jmp join_l60
join_l60:
	movl %ebx,%ecx
	movl 20(%esp),%eax
	jmp L.43
join_l51:
	jmp join_l63
join_l63:
	movl %edx,%eax
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.29
join_l53:
	jmp join_l62
join_l62:
	movl %ecx,%edx
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 20(%esp),%eax
	jmp L.33
.section .pcmap_data
stackdata_l67:
.long 0
.section .pcmap
.long join_l56
.long frame_l68
.section .pcmap_data
frame_l68:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long stackdata_l67
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffff4
.long 0
.section .pcmap
.long join_l50
.long frame_l69
.section .pcmap_data
frame_l69:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long stackdata_l67
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.section .pcmap
.long join_l47
.long frame_l70
.section .pcmap_data
frame_l70:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long stackdata_l67
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0x40000007
.long 0xfffffff4
.long 0
.section .pcmap
.long join_l41
.long frame_l71
.section .pcmap_data
frame_l71:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long stackdata_l67
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.section .text
g:
	leal -36(%esp), %esp
	movl $4,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l75:
proc_body_start_l74:
	movl $0,%ecx
	jmp L.51
L.51:
	movl %eax,8(%esp)
	movl $0,%eax
	jmp L.55
L.55:
	movl %edx,12(%esp)
	movl $4,%edx
	movl %ebx,16(%esp)
	movl %ecx,%ebx
	movl %ecx,20(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	movl 8(%esp),%ecx
	addl %ecx,%ebx
	movl $2,%edx
	movl %ecx,8(%esp)
	movl %eax,%ecx
	movl %ecx,24(%esp)
	movl %edx,%ecx
	movl 24(%esp),%edx
	shll %cl, %edx
	addl %ebx,%edx
	movl $-32,%ebx
	leal 36(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	leal i_37,%ecx
	movl $-36,%ebx
	leal 36(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,28(%esp)
	call printf
join_l95:
L.56:
	movl $1,%eax
	movl 28(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl join_l92
L.52:
	movl $1,%eax
	movl 20(%esp),%edx
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl join_l90
join_l91:
	leal i_38,%eax
	movl $-36,%ebx
	leal 36(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	call printf
join_l89:
	movl $0,%eax
	jmp L.59
L.59:
	movl $0,%ecx
	jmp L.63
L.63:
	movl $2,%edx
	movl %eax,%ebx
	movl %ecx,28(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	movl 12(%esp),%ecx
	addl %ecx,%ebx
	movl (%ebx),%ebx
	movl %ebp,32(%esp)
	movl %ecx,12(%esp)
	movl 28(%esp),%ecx
	movl %ecx,%ebp
	movl %ecx,28(%esp)
	movl %edx,%ecx
	shll %cl, %ebp
	addl %ebx,%ebp
	movl $-32,%ebx
	leal 36(%esp), %ecx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	leal i_37,%ecx
	movl $-36,%ebx
	leal 36(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,20(%esp)
	call printf
join_l86:
L.64:
	movl $1,%eax
	movl 28(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl join_l83
L.60:
	movl $1,%eax
	movl 20(%esp),%edx
	addl %eax,%edx
	movl $3,%eax
	cmpl %eax,%edx
	jl join_l81
join_l82:
	leal i_38,%eax
	movl $-36,%ebp
	leal 36(%esp), %ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	call printf
join_l80:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 32(%esp),%ebp
	movl 16(%esp),%ebx
	leal 36(%esp), %esp
	ret
join_l81:
	jmp join_l100
join_l100:
	movl %edx,%eax
	movl 32(%esp),%ebp
	jmp L.59
join_l83:
	jmp join_l99
join_l99:
	movl 32(%esp),%ebp
	movl 20(%esp),%eax
	jmp L.63
join_l90:
	jmp join_l102
join_l102:
	movl %edx,%ecx
	movl 16(%esp),%ebx
	movl 8(%esp),%eax
	movl 12(%esp),%edx
	jmp L.51
join_l92:
	jmp join_l101
join_l101:
	movl %ecx,%eax
	movl 16(%esp),%ebx
	movl 12(%esp),%edx
	movl 20(%esp),%ecx
	jmp L.55
.section .pcmap_data
stackdata_l106:
.long 0
.section .pcmap
.long join_l95
.long frame_l107
.section .pcmap_data
frame_l107:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l106
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffe8
.long 0xfffffff8
.long 0xfffffff0
.long 0
.section .pcmap
.long join_l89
.long frame_l108
.section .pcmap_data
frame_l108:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l106
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xffffffe8
.long 0
.long 0
.long 0
.section .pcmap
.long join_l86
.long frame_l109
.section .pcmap_data
frame_l109:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l106
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffffc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xffffffe8
.long 0xfffffff8
.long 0xfffffff0
.long 0
.section .pcmap
.long join_l80
.long frame_l110
.section .pcmap_data
frame_l110:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long stackdata_l106
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffffc
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
