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
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tprint
Ljoin_l15:
	movl $0,%eax
	leal 36(%esp), %edx
	leal 36(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
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
	movl (%eax),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl %edx,(%eax)
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
.long 8
.long 2
.long 0
.long 1
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
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 8
.long 2
.long 0
.long 1
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
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 8
.long 2
.long 0
.long 1
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
.long 0
.section .text
err:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l36:
Lproc_body_start_l35:
	leal i_10,%ecx
	leal 12(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l44:
	movl $1,%edi
	leal 12(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call exit
Ljoin_l41:
	movl $0,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l51:
.long 0
.section .pcmap
.long Ljoin_l44
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 8
.long 1
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.section .pcmap
.long Ljoin_l41
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l51
.long 8
.long 1
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.section .text
getword:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l56:
Lproc_body_start_l55:
	jmp L.12
L.12:
L.13:
	movl %eax,4(%esp)
	call getchar
Ljoin_l78:
	movl %eax,%ecx
	movl $-1,%edx
	cmpl %edx,%eax
	je Ljoin_l74
Ljoin_l75:
	leal 32(%esp), %eax
	movl $-32,%edx
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
	movl 4(%esp),%eax
	jmp L.12
Ljoin_l74:
	jmp L.15
L.15:
	movl 4(%esp),%eax
	movl %eax,%edx
	jmp L.19
L.19:
	movl %edi,12(%esp)
	leal 32(%esp), %edi
	movl %edi,16(%esp)
	movl $-32,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %edx,28(%esp)
	call isletter
Ljoin_l66:
	movl %eax,%edx
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l62
Ljoin_l63:
	movl $0,%eax
	movl 28(%esp),%edx
	movb %al,(%edx)
	movl 4(%esp),%ecx
	cmpl %ecx,%edx
	jbe Ljoin_l60
Ljoin_l61:
	movl $1,%eax
	leal 32(%esp), %edx
	leal 32(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
	leal 32(%esp), %esp
	ret
Ljoin_l60:
	jmp L.20
L.20:
	movl $0,%eax
	leal 32(%esp), %edx
	leal 32(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
	leal 32(%esp), %esp
	ret
Ljoin_l62:
	jmp L.16
L.16:
	movl 28(%esp),%edi
	movl $1,%esi
	movl %edi,%ecx
	addl %esi,%ecx
	movl %edx,%eax
	movb %al,(%edi)
L.17:
	movl %ecx,28(%esp)
	call getchar
Ljoin_l69:
	movl %eax,%ecx
	movl 12(%esp),%edi
	movl 24(%esp),%esi
	movl 4(%esp),%eax
	movl 28(%esp),%edx
	jmp L.19
.section .pcmap_data
Lstackdata_l87:
.long 0
.section .pcmap
.long Ljoin_l78
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l87
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.section .pcmap
.long Ljoin_l73
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l87
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l66
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l87
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xffffffec
.long 0xffffffe4
.long 0
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l69
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l87
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xffffffec
.long 0xffffffe4
.long 0
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
isletter:
	leal -8(%esp), %esp
	leal 8(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
Linitialize_continuations_l94:
Lproc_body_start_l93:
	movl $65,%ecx
	cmpl %ecx,%edx
	jl Ljoin_l104
Ljoin_l105:
	movl $90,%ecx
	cmpl %ecx,%edx
	jg Ljoin_l102
Ljoin_l103:
	movl $32,%ecx
	addl %ecx,%edx
	jmp L.30
Ljoin_l102:
	jmp L.30
Ljoin_l104:
	jmp L.30
L.30:
	movl $97,%ecx
	cmpl %ecx,%edx
	jl Ljoin_l100
Ljoin_l101:
	movl $122,%ecx
	cmpl %ecx,%edx
	jg Ljoin_l98
Ljoin_l99:
	movl %edx,%eax
	leal 8(%esp), %edx
	leal 8(%esp), %ecx
	movl %edx,4(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
Ljoin_l98:
	jmp L.32
Ljoin_l100:
	jmp L.32
L.32:
	movl $0,%eax
	leal 8(%esp), %edx
	leal 8(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .text
lookup:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l116:
Lproc_body_start_l115:
	movl (%ecx),%edx
	movl %edi,8(%esp)
	movl $0,%edi
	cmpl %edi,%edx
	je Ljoin_l154
Ljoin_l155:
	movl (%ecx),%edi
	movl $12,%edx
	addl %edx,%edi
	leal 44(%esp), %edx
	movl %edi,36(%esp)
	movl $-40,%edi
	addl %edi,%edx
	movl 36(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%edx)
	leal 44(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl %eax,16(%esp)
	movl %ecx,20(%esp)
	call strcmp
Ljoin_l153:
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jge Ljoin_l149
Ljoin_l150:
	movl 20(%esp),%edi
	movl (%edi),%edi
	movl $4,%eax
	addl %eax,%edi
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 44(%esp), %edi
	movl $-44,%eax
	addl %eax,%edi
	movl 16(%esp),%eax
	movl %eax,(%edi)
	call lookup
Ljoin_l148:
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 44(%esp), %esp
	ret
Ljoin_l149:
	jmp L.39
L.39:
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l143
Ljoin_l144:
	movl 20(%esp),%edi
	movl (%edi),%edi
	movl $8,%eax
	addl %eax,%edi
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 44(%esp), %edi
	movl $-44,%eax
	addl %eax,%edi
	movl 16(%esp),%eax
	movl %eax,(%edi)
	call lookup
Ljoin_l142:
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 44(%esp), %esp
	ret
Ljoin_l143:
	jmp L.41
L.41:
	movl 20(%esp),%edx
	movl (%edx),%eax
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 44(%esp), %esp
	ret
Ljoin_l154:
	jmp L.37
L.37:
	leal next,%edi
	movl (%edi),%edi
	movl $2000,%edx
	cmpl %edx,%edi
	jl Ljoin_l136
Ljoin_l137:
	leal i_45,%edi
	leal 44(%esp), %edx
	movl %edi,12(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl 12(%esp),%edi
	movl %edi,(%edx)
	movl %eax,16(%esp)
	movl %ecx,20(%esp)
	call err
Ljoin_l135:
	movl 16(%esp),%eax
	movl 20(%esp),%ecx
	jmp L.43
Ljoin_l136:
	jmp L.43
L.43:
	movl $0,%edi
	leal next,%edx
	movl (%edx),%edx
	movl %edi,24(%esp)
	movl $4,%edi
	movl %ecx,20(%esp)
	movl %edi,%ecx
	shll %cl, %edx
	leal words,%edi
	addl %edi,%edx
	movl 24(%esp),%edi
	movl %edi,(%edx)
	leal next,%edi
	movl (%edi),%edi
	movl $4,%ecx
	shll %cl, %edi
	movl $0,%ecx
	leal words,%edx
	movl %edi,28(%esp)
	movl $8,%edi
	addl %edi,%edx
	movl %esi,32(%esp)
	movl 28(%esp),%edi
	movl %edi,%esi
	addl %edx,%esi
	movl %ecx,(%esi)
	leal words,%esi
	movl $4,%edx
	addl %edx,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 44(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %eax,16(%esp)
	call strlen
Ljoin_l132:
	movl $1,%edi
	addl %edi,%eax
	leal 44(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call malloc
Ljoin_l129:
	leal next,%edi
	movl (%edi),%edi
	movl $4,%ecx
	shll %cl, %edi
	leal words,%esi
	movl $12,%edx
	addl %edx,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal next,%edi
	movl (%edi),%edi
	movl $4,%ecx
	shll %cl, %edi
	leal words,%esi
	movl $12,%eax
	addl %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l125
Ljoin_l126:
	leal i_52,%edi
	leal 44(%esp), %esi
	movl $-44,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call err
Ljoin_l124:
	jmp L.49
Ljoin_l125:
	jmp L.49
L.49:
	leal next,%edi
	movl (%edi),%edi
	movl $4,%ecx
	shll %cl, %edi
	leal words,%esi
	movl $12,%eax
	addl %eax,%esi
	addl %esi,%edi
	leal 44(%esp), %esi
	movl $-44,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl 16(%esp),%esi
	movl %esi,(%edi)
	call strcpy
Ljoin_l121:
	leal next,%edx
	movl (%edx),%eax
	movl $1,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl %esi,(%edx)
	movl $4,%ecx
	shll %cl, %eax
	leal words,%edx
	addl %edx,%eax
	movl 20(%esp),%edx
	movl %eax,(%edx)
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 32(%esp),%esi
	movl 8(%esp),%edi
	leal 44(%esp), %esp
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
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 8
.long 12
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xffffffe4
.long 0xffffffe8
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
.long Ljoin_l148
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 8
.long 12
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
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
.long Ljoin_l142
.long Lframe_l165
.section .pcmap_data
Lframe_l165:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 8
.long 12
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
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
.long Ljoin_l135
.long Lframe_l166
.section .pcmap_data
Lframe_l166:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 8
.long 12
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0xffffffe4
.long 0xffffffe8
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
.long Ljoin_l132
.long Lframe_l167
.section .pcmap_data
Lframe_l167:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 8
.long 12
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffdc
.long 0xffffffe4
.long 0xffffffe8
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
.long Ljoin_l129
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 8
.long 12
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffdc
.long 0xffffffe4
.long 0xffffffe8
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
.long Ljoin_l124
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 8
.long 12
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffdc
.long 0xffffffe4
.long 0xffffffe8
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
.long Ljoin_l121
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l162
.long 8
.long 12
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0xffffffe8
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
tprint:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l173:
Lproc_body_start_l172:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l185
Ljoin_l186:
	movl $4,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl %edi,12(%esp)
	movl $-32,%edi
	addl %edi,%ecx
	movl (%edx),%edi
	movl %edi,(%ecx)
	movl %eax,16(%esp)
	call tprint
Ljoin_l184:
	leal i_68,%edi
	movl 16(%esp),%eax
	movl (%eax),%ecx
	movl $12,%edx
	movl %edi,20(%esp)
	movl %eax,%edi
	addl %edx,%edi
	leal 32(%esp), %edx
	movl %edi,24(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl 24(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%edx)
	leal 32(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 32(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	movl 20(%esp),%ecx
	movl %ecx,(%edi)
	call printf
Ljoin_l181:
	movl $8,%edi
	movl 16(%esp),%eax
	addl %edi,%eax
	leal 32(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	call tprint
Ljoin_l178:
	movl 12(%esp),%edi
	jmp L.66
Ljoin_l185:
	jmp L.66
L.66:
	movl $0,%eax
	leal 32(%esp), %edx
	leal 32(%esp), %ecx
	movl %edx,28(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l193:
.long 0
.section .pcmap
.long Ljoin_l184
.long Lframe_l194
.section .pcmap_data
Lframe_l194:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l193
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long Ljoin_l181
.long Lframe_l195
.section .pcmap_data
Lframe_l195:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l193
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long Ljoin_l178
.long Lframe_l196
.section .pcmap_data
Lframe_l196:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l193
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.section .text
strcmp:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l199:
Lproc_body_start_l198:
	jmp L.72
L.72:
	movsbl (%edx),%eax
	movl %edx,(%esp)
	movsbl (%ecx),%edx
	cmpl %edx,%eax
	je Ljoin_l208
Ljoin_l209:
	movl (%esp),%edx
	movsbl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l206
Ljoin_l207:
	movl $-1,%eax
	leal 24(%esp), %edx
	leal 24(%esp), %ecx
	movl %edx,12(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
Ljoin_l206:
	jmp L.76
L.76:
	movsbl (%ecx),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne Ljoin_l203
Ljoin_l204:
	movl $1,%eax
	leal 24(%esp), %edx
	leal 24(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
Ljoin_l203:
	jmp L.78
L.78:
	movl (%esp),%edx
	movsbl (%edx),%eax
	movsbl (%ecx),%edx
	subl %edx,%eax
	leal 24(%esp), %edx
	leal 24(%esp), %ecx
	movl %edx,4(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
Ljoin_l208:
	jmp L.71
L.71:
	movl (%esp),%edx
	movl $1,%eax
	movl %ecx,16(%esp)
	movl %edx,%ecx
	addl %eax,%ecx
	movsbl (%edx),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne Ljoin_l211
Ljoin_l212:
	movl $0,%eax
	leal 24(%esp), %edx
	leal 24(%esp), %ecx
	movl %edx,20(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
Ljoin_l211:
	jmp L.74
L.74:
	movl $1,%edx
	movl 16(%esp),%eax
	addl %edx,%eax
	movl %ecx,%edx
	movl %eax,%ecx
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
