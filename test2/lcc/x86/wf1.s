.globl main
.globl err
.globl getword
.globl isletter
.globl lookup
.globl tprint
.globl strcmp
.globl next
.globl words
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -36(%esp), %esp
Linitialize_continuations_l10:
Lproc_body_start_l9:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal next,%ecx
	movl %eax,(%ecx)
	jmp L.3
L.3:
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call getword
Ljoin_l20:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l16
Ljoin_l17:
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call tprint
Ljoin_l15:
	movl $0,%eax
	leal 36(%esp), %ecx
	leal 36(%esp), %edx
	movl %ebx,8(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 8(%esp),%ebx
	leal 36(%esp), %esp
	ret
Ljoin_l16:
	jmp L.2
L.2:
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call lookup
Ljoin_l23:
	movl (%eax),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl %ecx,(%eax)
	jmp L.3
.section .pcmap_data
Lstackdata_l30:
.long 2
.long 0xffffffe8
.long 0xfffffffc
.section .pcmap
.long Ljoin_l20
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l15
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l23
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
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
.long 0
.long 0x80000000
.section .text
err:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l36:
Lproc_body_start_l35:
	leal i_10,%eax
	leal 16(%esp), %edx
	movl %ecx,8(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 16(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	call printf
Ljoin_l44:
	movl $1,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call exit
Ljoin_l41:
	movl $0,%eax
	leal 16(%esp), %ecx
	leal 16(%esp), %edx
	movl %ebx,12(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l51:
.long 0
.section .pcmap
.long Ljoin_l44
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
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
.long Ljoin_l41
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
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
getword:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l56:
Lproc_body_start_l55:
	jmp L.12
L.12:
L.13:
	movl %ecx,4(%esp)
	call getchar
Ljoin_l78:
	movl %eax,%ecx
	movl $-1,%edx
	cmpl %edx,%eax
	je Ljoin_l74
Ljoin_l75:
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl %ecx,8(%esp)
	call isletter
Ljoin_l73:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l70
Ljoin_l82:
	movl 8(%esp),%ecx
	jmp L.15
Ljoin_l70:
	jmp Ljoin_l83
Ljoin_l83:
	movl 4(%esp),%ecx
	jmp L.12
Ljoin_l74:
	jmp L.15
L.15:
	movl 4(%esp),%eax
	movl %eax,%edx
	jmp L.19
L.19:
	leal 24(%esp), %eax
	movl %ecx,8(%esp)
	movl $-24,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,12(%esp)
	call isletter
Ljoin_l66:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l62
Ljoin_l63:
	movl $0,%eax
	movl 12(%esp),%edx
	movb %al,(%edx)
	movl 4(%esp),%eax
	cmpl %eax,%edx
	jbe Ljoin_l60
Ljoin_l61:
	movl $1,%eax
	leal 24(%esp), %ecx
	leal 24(%esp), %edx
	movl %edi,20(%esp)
	movl $0,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 20(%esp),%edi
	leal 24(%esp), %esp
	ret
Ljoin_l60:
	jmp L.20
L.20:
	movl $0,%eax
	leal 24(%esp), %edx
	leal 24(%esp), %ecx
	movl %ebx,16(%esp)
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl 16(%esp),%ebx
	leal 24(%esp), %esp
	ret
Ljoin_l62:
	jmp L.16
L.16:
	movl 12(%esp),%edx
	movl $1,%eax
	movl %ebx,16(%esp)
	movl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,%eax
	movb %al,(%edx)
L.17:
	call getchar
Ljoin_l69:
	movl %eax,%ecx
	movl %ebx,%edx
	movl 16(%esp),%ebx
	movl 4(%esp),%eax
	jmp L.19
.section .pcmap_data
Lstackdata_l87:
.long 0
.section .pcmap
.long Ljoin_l78
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l87
.long 0x80000008
.long 0x80000008
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l73
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l87
.long 0x80000008
.long 0x80000008
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
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l66
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l87
.long 0x80000008
.long 0x80000008
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
.long 0xffffffec
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l69
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l87
.long 0x80000008
.long 0x80000008
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
.long 0xffffffec
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
isletter:
	leal -8(%esp), %esp
	leal 8(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l94:
Lproc_body_start_l93:
	movl $65,%edx
	cmpl %edx,%ecx
	jl Ljoin_l104
Ljoin_l105:
	movl $90,%edx
	cmpl %edx,%ecx
	jg Ljoin_l102
Ljoin_l103:
	movl $32,%edx
	addl %edx,%ecx
	jmp L.30
Ljoin_l102:
	jmp L.30
Ljoin_l104:
	jmp L.30
L.30:
	movl $97,%edx
	cmpl %edx,%ecx
	jl Ljoin_l100
Ljoin_l101:
	movl $122,%edx
	cmpl %edx,%ecx
	jg Ljoin_l98
Ljoin_l99:
	movl %ecx,%eax
	leal 8(%esp), %ecx
	leal 8(%esp), %edx
	movl %edi,4(%esp)
	movl $0,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 4(%esp),%edi
	leal 8(%esp), %esp
	ret
Ljoin_l98:
	jmp L.32
Ljoin_l100:
	jmp L.32
L.32:
	movl $0,%edx
	movl %edx,%eax
	leal 8(%esp), %edx
	leal 8(%esp), %ecx
	movl %ebx,(%esp)
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl (%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .text
lookup:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l116:
Lproc_body_start_l115:
	movl (%edx),%eax
	movl %ecx,8(%esp)
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l154
Ljoin_l155:
	movl (%edx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl %edi,32(%esp)
	movl $-36,%edi
	addl %edi,%ecx
	movl (%eax),%edi
	movl %edi,(%ecx)
	leal 40(%esp), %ecx
	movl $-40,%edi
	addl %edi,%ecx
	movl 8(%esp),%edi
	movl %edi,(%ecx)
	movl %edx,12(%esp)
	call strcmp
Ljoin_l153:
	leal 40(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jge Ljoin_l149
Ljoin_l150:
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call lookup
Ljoin_l148:
	leal 40(%esp), %ecx
	leal 40(%esp), %edx
	movl $0,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 32(%esp),%edi
	leal 40(%esp), %esp
	ret
Ljoin_l149:
	jmp L.39
L.39:
	leal 40(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jle Ljoin_l143
Ljoin_l144:
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call lookup
Ljoin_l142:
	leal 40(%esp), %ecx
	leal 40(%esp), %edx
	movl $0,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 32(%esp),%edi
	leal 40(%esp), %esp
	ret
Ljoin_l143:
	jmp L.41
L.41:
	movl 12(%esp),%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	leal 40(%esp), %edx
	movl $0,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 32(%esp),%edi
	leal 40(%esp), %esp
	ret
Ljoin_l154:
	jmp L.37
L.37:
	leal next,%eax
	movl (%eax),%ecx
	movl $2000,%eax
	cmpl %eax,%ecx
	jl Ljoin_l136
Ljoin_l137:
	leal i_45,%eax
	leal 40(%esp), %ecx
	movl %edx,12(%esp)
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call err
Ljoin_l135:
	movl 12(%esp),%edx
	jmp L.43
Ljoin_l136:
	jmp L.43
L.43:
	movl $0,%eax
	leal next,%ecx
	movl (%ecx),%ecx
	movl %edx,12(%esp)
	movl $4,%edx
	movl %ecx,16(%esp)
	movl %edx,%ecx
	movl 16(%esp),%edx
	shll %cl, %edx
	leal words,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal next,%eax
	movl (%eax),%edx
	movl $4,%eax
	movl %eax,%ecx
	shll %cl, %edx
	movl $0,%ecx
	leal words,%eax
	movl %ebx,20(%esp)
	movl $8,%ebx
	addl %ebx,%eax
	movl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	leal words,%ebx
	movl $4,%eax
	addl %eax,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call strlen
Ljoin_l132:
	movl $1,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call malloc
Ljoin_l129:
	leal next,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	shll %cl, %edx
	leal words,%ecx
	movl $12,%ebx
	addl %ebx,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal next,%eax
	movl (%eax),%edx
	movl $4,%eax
	movl %eax,%ecx
	shll %cl, %edx
	leal words,%ecx
	movl $12,%eax
	addl %eax,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l125
Ljoin_l126:
	leal i_52,%ecx
	leal 40(%esp), %edx
	movl $-40,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call err
Ljoin_l124:
	jmp L.49
Ljoin_l125:
	jmp L.49
L.49:
	leal next,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl %ecx,24(%esp)
	movl %eax,%ecx
	movl 24(%esp),%eax
	shll %cl, %eax
	leal words,%ecx
	movl $12,%edx
	addl %edx,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call strcpy
Ljoin_l121:
	leal next,%eax
	movl (%eax),%ecx
	movl $1,%edx
	movl %ecx,%ebx
	addl %edx,%ebx
	movl %ebx,(%eax)
	movl $4,%eax
	movl %ecx,28(%esp)
	movl %eax,%ecx
	movl 28(%esp),%eax
	shll %cl, %eax
	leal words,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %ecx
	leal 40(%esp), %ebx
	movl $0,%edx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 20(%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l162:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l153
.long Lframe_l163
.section .pcmap_data
Lframe_l163:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 0x80000008
.long 0x8000000c
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
.long 0x4000000b
.long 0xffffffe4
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
.long Ljoin_l148
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 0x80000008
.long 0x8000000c
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
.long Ljoin_l142
.long Lframe_l165
.section .pcmap_data
Lframe_l165:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 0x80000008
.long 0x8000000c
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
.long Ljoin_l135
.long Lframe_l166
.section .pcmap_data
Lframe_l166:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 0x80000008
.long 0x8000000c
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
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l132
.long Lframe_l167
.section .pcmap_data
Lframe_l167:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l129
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l124
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe0
.long 0xffffffe4
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
.long Ljoin_l121
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 0x80000008
.long 0x8000000c
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xffffffe4
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
tprint:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l173:
Lproc_body_start_l172:
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l185
Ljoin_l186:
	movl $4,%eax
	movl %ecx,%edx
	addl %eax,%edx
	leal 24(%esp), %eax
	movl %ecx,12(%esp)
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	call tprint
Ljoin_l184:
	leal i_68,%eax
	movl 12(%esp),%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
	movl 12(%esp),%ebx
	movl %ebx,%ebp
	addl %ecx,%ebp
	leal 24(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	leal 24(%esp), %ecx
	movl $-20,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l181:
	movl $8,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	call tprint
Ljoin_l178:
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	jmp L.66
Ljoin_l185:
	jmp L.66
L.66:
	movl $0,%eax
	leal 24(%esp), %ecx
	leal 24(%esp), %edx
	movl %ebx,16(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l193:
.long 0
.section .pcmap
.long Ljoin_l184
.long Lframe_l194
.section .pcmap_data
Lframe_l194:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l193
.long 0x80000008
.long 0x80000002
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
.long 0xfffffff4
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l181
.long Lframe_l195
.section .pcmap_data
Lframe_l195:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l193
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0xfffffffc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l178
.long Lframe_l196
.section .pcmap_data
Lframe_l196:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l193
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0xfffffffc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
.section .text
strcmp:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 12(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
Linitialize_continuations_l199:
Lproc_body_start_l198:
	jmp L.72
L.72:
	movsbl (%ecx),%edx
	movl %ecx,(%esp)
	movsbl (%eax),%ecx
	cmpl %ecx,%edx
	je Ljoin_l208
Ljoin_l209:
	movl (%esp),%ecx
	movsbl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l206
Ljoin_l207:
	movl $-1,%eax
	leal 12(%esp), %ecx
	leal 12(%esp), %edx
	movl %edi,8(%esp)
	movl $0,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
Ljoin_l206:
	jmp L.76
L.76:
	movsbl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l203
Ljoin_l204:
	movl $1,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl %edi,8(%esp)
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edi
	movl %edi,(%ecx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
Ljoin_l203:
	jmp L.78
L.78:
	movl (%esp),%ecx
	movsbl (%ecx),%ecx
	movsbl (%eax),%edx
	subl %edx,%ecx
	movl %ecx,%eax
	leal 12(%esp), %ecx
	leal 12(%esp), %edx
	movl %ebx,4(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 4(%esp),%ebx
	leal 12(%esp), %esp
	ret
Ljoin_l208:
	jmp L.71
L.71:
	movl (%esp),%edx
	movl $1,%ecx
	movl %edi,8(%esp)
	movl %edx,%edi
	addl %ecx,%edi
	movsbl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l211
Ljoin_l212:
	movl $0,%eax
	leal 12(%esp), %ecx
	leal 12(%esp), %edx
	movl $0,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
Ljoin_l211:
	jmp L.74
L.74:
	movl $1,%edx
	addl %edx,%eax
	movl %edi,%ecx
	movl 8(%esp),%edi
	jmp L.72
.section .text
.section .bss
.align 4
next:
.skip 4, 0
.align 4
words:
.skip 32000, 0
.section .data
i_68:
.byte 37
.byte 100
.byte 9
.byte 37
.byte 115
.byte 10
.byte 0
i_52:
.byte 111
.byte 117
.byte 116
.byte 32
.byte 111
.byte 102
.byte 32
.byte 119
.byte 111
.byte 114
.byte 100
.byte 32
.byte 115
.byte 116
.byte 111
.byte 114
.byte 97
.byte 103
.byte 101
.byte 0
i_45:
.byte 111
.byte 117
.byte 116
.byte 32
.byte 111
.byte 102
.byte 32
.byte 110
.byte 111
.byte 100
.byte 101
.byte 32
.byte 115
.byte 116
.byte 111
.byte 114
.byte 97
.byte 103
.byte 101
.byte 0
i_10:
.byte 63
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
