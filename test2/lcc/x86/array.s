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
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.section .text
main:
	leal -88(%esp), %esp
	leal 88(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	movl $0,%ecx
	jmp L.2
L.2:
	movl $0,%edx
	jmp L.6
L.6:
	movl %eax,8(%esp)
	movl $1000,%eax
	imull %ecx,%eax
	addl %edx,%eax
	movl %eax,12(%esp)
	movl $2,%eax
	movl %eax,16(%esp)
	movl %edx,%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	shll %cl, %eax
	movl $4,%ecx
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
L.7:
	movl $1,%eax
	addl %eax,%edx
	movl $4,%eax
	cmpl %eax,%edx
	jl .Ljoin_l20
.Ljoin_l21:
	movl $4,%eax
	movl 20(%esp),%ecx
	movl %ecx,%edx
	movl %eax,%ecx
	shll %cl, %edx
	leal x,%eax
	addl %eax,%edx
	movl $2,%eax
	movl %eax,28(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 28(%esp),%ecx
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.3:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl $3,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l18
.Ljoin_l19:
	call f
.Ljoin_l17:
	movl $0,%eax
	jmp L.10
L.10:
	movl $4,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal 88(%esp), %ecx
	movl %eax,20(%esp)
	movl $-48,%eax
	addl %eax,%ecx
	addl %ecx,%edx
	movl %edx,%eax
	movl $2,%ecx
	movl %eax,32(%esp)
	movl 20(%esp),%eax
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $0,%eax
	jmp L.14
L.14:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl $4,%ecx
	movl %eax,36(%esp)
	movl 20(%esp),%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	addl %eax,%edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
L.15:
	movl $1,%ecx
	movl 36(%esp),%edx
	addl %ecx,%edx
	movl $4,%ecx
	cmpl %ecx,%edx
	jl .Ljoin_l14
L.11:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl $3,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l12
.Ljoin_l13:
	leal 88(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	leal 88(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal y,%eax
	leal 88(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call g
.Ljoin_l11:
	movl $0,%eax
	leal 88(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %esp
	ret
.Ljoin_l12:
	jmp .Ljoin_l28
.Ljoin_l28:
	movl %ecx,%eax
	jmp L.10
.Ljoin_l14:
	jmp .Ljoin_l27
.Ljoin_l27:
	movl %edx,%eax
	jmp L.14
.Ljoin_l18:
	jmp .Ljoin_l26
.Ljoin_l26:
	movl 8(%esp),%eax
	jmp L.2
.Ljoin_l20:
	jmp .Ljoin_l25
.Ljoin_l25:
	movl 8(%esp),%eax
	movl 20(%esp),%ecx
	jmp L.6
.section .pcmap_data
.Lstackdata_l32:
.long 1
.long 0xffffffd0
.section .pcmap
.long .Ljoin_l17
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l32
.long 0
.long 9
.long 0
.long 1
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
.long .Ljoin_l11
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l32
.long 0
.long 9
.long 0
.long 1
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
f:
	leal -48(%esp), %esp
	leal 48(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l37:
.Lproc_body_start_l36:
	movl $0,%ecx
	jmp L.29
L.29:
	movl $0,%edx
	jmp L.33
L.33:
	movl %eax,8(%esp)
	movl $2,%eax
	movl %eax,12(%esp)
	movl %edx,%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	shll %cl, %eax
	movl $4,%ecx
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	leal 48(%esp), %eax
	movl %eax,24(%esp)
	movl $-44,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal i_37,%eax
	leal 48(%esp), %ecx
	movl %eax,36(%esp)
	movl $-48,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,40(%esp)
	call printf
.Ljoin_l57:
L.34:
	movl $1,%eax
	movl 40(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l54
L.30:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl $3,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l52
.Ljoin_l53:
	leal i_38,%eax
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l51:
	movl $0,%eax
	jmp L.39
L.39:
	movl $0,%ecx
	jmp L.43
L.43:
	movl $2,%edx
	movl %eax,16(%esp)
	movl %ecx,%eax
	movl %ecx,40(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	movl %eax,44(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%eax
	movl %edx,%ecx
	shll %cl, %eax
	leal y,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 44(%esp),%ecx
	addl %eax,%ecx
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal i_37,%eax
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l48:
L.44:
	movl $1,%eax
	movl 40(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l45
L.40:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl $3,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l43
.Ljoin_l44:
	leal i_38,%eax
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l42:
	movl $0,%eax
	leal 48(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
.Ljoin_l43:
	jmp .Ljoin_l64
.Ljoin_l64:
	movl %ecx,%eax
	jmp L.39
.Ljoin_l45:
	jmp .Ljoin_l63
.Ljoin_l63:
	movl 16(%esp),%eax
	jmp L.43
.Ljoin_l52:
	jmp .Ljoin_l62
.Ljoin_l62:
	movl 8(%esp),%eax
	jmp L.29
.Ljoin_l54:
	jmp .Ljoin_l61
.Ljoin_l61:
	movl %ecx,%edx
	movl 8(%esp),%eax
	movl 16(%esp),%ecx
	jmp L.33
.section .pcmap_data
.Lstackdata_l68:
.long 0
.section .pcmap
.long .Ljoin_l57
.long .Lframe_l69
.section .pcmap_data
.Lframe_l69:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffd8
.long .Lstackdata_l68
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff8
.long 0xffffffe0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l51
.long .Lframe_l70
.section .pcmap_data
.Lframe_l70:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffd8
.long .Lstackdata_l68
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l48
.long .Lframe_l71
.section .pcmap_data
.Lframe_l71:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffd8
.long .Lstackdata_l68
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff8
.long 0xffffffe0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l42
.long .Lframe_l72
.section .pcmap_data
.Lframe_l72:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffd8
.long .Lstackdata_l68
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
g:
	leal -60(%esp), %esp
	leal 60(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l75:
.Lproc_body_start_l74:
	movl %eax,8(%esp)
	movl $0,%eax
	jmp L.51
L.51:
	movl %eax,12(%esp)
	movl $0,%eax
	jmp L.55
L.55:
	movl %eax,16(%esp)
	movl $2,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	shll %cl, %eax
	movl $4,%ecx
	movl %eax,28(%esp)
	movl 12(%esp),%eax
	shll %cl, %eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl %eax,36(%esp)
	movl $-56,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal i_37,%eax
	leal 60(%esp), %ecx
	movl %eax,40(%esp)
	movl $-60,%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,44(%esp)
	call printf
.Ljoin_l95:
L.56:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l92
L.52:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl $3,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l90
.Ljoin_l91:
	leal i_38,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l89:
	movl $0,%eax
	jmp L.59
L.59:
	movl $0,%ecx
	jmp L.63
L.63:
	movl $2,%edx
	movl %eax,12(%esp)
	movl %ecx,%eax
	movl %ecx,16(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	movl %eax,48(%esp)
	movl 12(%esp),%ecx
	movl %ecx,%eax
	movl %edx,%ecx
	shll %cl, %eax
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 48(%esp),%edx
	addl %eax,%edx
	leal 60(%esp), %eax
	movl %eax,52(%esp)
	movl $-56,%eax
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal i_37,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l86:
L.64:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l83
L.60:
	movl $1,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl $3,%eax
	cmpl %eax,%ecx
	jl .Ljoin_l81
.Ljoin_l82:
	leal i_38,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l80:
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.Ljoin_l81:
	jmp .Ljoin_l102
.Ljoin_l102:
	movl %ecx,%eax
	jmp L.59
.Ljoin_l83:
	jmp .Ljoin_l101
.Ljoin_l101:
	movl 12(%esp),%eax
	jmp L.63
.Ljoin_l90:
	jmp .Ljoin_l100
.Ljoin_l100:
	movl %ecx,%eax
	movl 44(%esp),%edx
	movl 24(%esp),%ecx
	jmp L.51
.Ljoin_l92:
	jmp .Ljoin_l99
.Ljoin_l99:
	movl %ecx,%eax
	movl 44(%esp),%edx
	movl 24(%esp),%ecx
	jmp L.55
.section .pcmap_data
.Lstackdata_l106:
.long 0
.section .pcmap
.long .Ljoin_l95
.long .Lframe_l107
.section .pcmap_data
.Lframe_l107:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff0
.long .Lstackdata_l106
.long 0
.long 5
.long 0
.long 1
.long 0xffffffcc
.long 0xffffffdc
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l89
.long .Lframe_l108
.section .pcmap_data
.Lframe_l108:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff0
.long .Lstackdata_l106
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l86
.long .Lframe_l109
.section .pcmap_data
.Lframe_l109:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff0
.long .Lstackdata_l106
.long 0
.long 5
.long 0
.long 1
.long 0
.long 0xffffffdc
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l80
.long .Lframe_l110
.section .pcmap_data
.Lframe_l110:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff0
.long .Lstackdata_l106
.long 0
.long 5
.long 0
.long 1
.long 0
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
