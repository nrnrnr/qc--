.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	movl $4,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	movl %esp,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $1,%eax
	call sw
Ljoin_l24:
	movl $2,%eax
	call sw
Ljoin_l21:
	movl $3,%eax
	call sw
Ljoin_l18:
	movl $4,%eax
	call sw
Ljoin_l15:
	movl $99,%eax
	call sw
Ljoin_l12:
	movl $-3,%eax
	call sw
Ljoin_l9:
	ret
.section .pcmap_data
Lstackdata_l30:
.long 0
.section .pcmap
.long Ljoin_l24
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long Ljoin_l21
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long Ljoin_l18
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long Ljoin_l15
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long Ljoin_l12
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long Ljoin_l9
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0x80000000
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .text
.section .text
sw:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl $1,%edx
	cmpl %edx,%eax
	je Ljoin_l63
Ljoin_l64:
	jmp Ljoin_l59
Ljoin_l59:
	movl $2,%edx
	cmpl %eax,%edx
	jbe Lconj_true_l72
Ljoin_l80:
	jmp Ljoin_l58
Lconj_true_l72:
	movl $3,%edx
	cmpl %edx,%eax
	jbe Ljoin_l57
Ljoin_l79:
	jmp Ljoin_l58
Ljoin_l58:
	jmp Ljoin_l53
Ljoin_l53:
	movl $4,%edx
	cmpl %edx,%eax
	je Ljoin_l51
Ljoin_l52:
	jmp Ljoin_l47
Ljoin_l47:
	movl $5,%edx
	cmpl %eax,%edx
	jbe Lconj_true_l71
Ljoin_l78:
	jmp Lconj_false_l70
Lconj_true_l71:
	movl $-1,%edx
	cmpl %edx,%eax
	jbe Ljoin_l45
Ljoin_l77:
	jmp Lconj_false_l70
Lconj_false_l70:
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l45
Lconj_false_l69:
	movl $-2147483648,%edx
	cmpl %eax,%edx
	jbe Lconj_true_l68
Ljoin_l76:
	jmp Ljoin_l46
Lconj_true_l68:
	movl $-1,%edx
	cmpl %edx,%eax
	jbe Ljoin_l45
Ljoin_l75:
	jmp Ljoin_l46
Ljoin_l46:
	jmp Ljoin_l41
Ljoin_l45:
	leal def,%edx
	movl %ebx,8(%esp)
	movl $-20,%ebx
	movl %ebp,12(%esp)
	leal 20(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl $-16,%edx
	leal 20(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,16(%esp)
	call printf
Ljoin_l44:
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%ecx
	jmp Ljoin_l41
Ljoin_l51:
	leal third,%edx
	movl %ebp,12(%esp)
	movl $-20,%ebp
	movl %ebx,8(%esp)
	leal 20(%esp), %ebx
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,16(%esp)
	call printf
Ljoin_l50:
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%ecx
	jmp Ljoin_l41
Ljoin_l57:
	leal second,%edx
	movl %ebx,8(%esp)
	movl $-20,%ebx
	movl %ebp,12(%esp)
	leal 20(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl $-16,%edx
	leal 20(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,16(%esp)
	call printf
Ljoin_l56:
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%ecx
	jmp Ljoin_l41
Ljoin_l63:
	leal first,%edx
	movl %ebp,12(%esp)
	movl $-20,%ebp
	movl %ebx,8(%esp)
	leal 20(%esp), %ebx
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl $-16,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,16(%esp)
	call printf
Ljoin_l62:
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%ecx
	jmp Ljoin_l41
Ljoin_l41:
	movl $0,%eax
	leal 20(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l81:
.long 0
.section .pcmap
.long Ljoin_l62
.long Lframe_l82
.section .pcmap_data
Lframe_l82:
.long 0xffffffec
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l81
.long 0x80000008
.long 0x80000001
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
.section .pcmap
.long Ljoin_l56
.long Lframe_l83
.section .pcmap_data
Lframe_l83:
.long 0xffffffec
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l81
.long 0x80000008
.long 0x80000001
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
.section .pcmap
.long Ljoin_l50
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0xffffffec
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l81
.long 0x80000008
.long 0x80000001
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
.section .pcmap
.long Ljoin_l44
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0xffffffec
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l81
.long 0x80000008
.long 0x80000001
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
.section .text
.section .data
first:
.byte 102
.byte 105
.byte 114
.byte 115
.byte 116
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
second:
.byte 115
.byte 101
.byte 99
.byte 111
.byte 110
.byte 100
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
third:
.byte 116
.byte 104
.byte 105
.byte 114
.byte 100
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
def:
.byte 100
.byte 101
.byte 102
.byte 97
.byte 117
.byte 108
.byte 116
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
