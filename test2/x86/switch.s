.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffffffffffff
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $1,%eax
	movl %ecx,(%esp)
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
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l30:
.long 0
.section .pcmap
.long Ljoin_l24
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long Lstackdata_l30
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l21
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long Lstackdata_l30
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l18
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long Lstackdata_l30
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long Lstackdata_l30
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l12
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long Lstackdata_l30
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long Lstackdata_l30
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .text
sw:
	leal -52(%esp), %esp
	leal 52(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl $1,%ecx
	cmpl %ecx,%eax
	je Ljoin_l63
Ljoin_l64:
	jmp Ljoin_l59
Ljoin_l59:
	movl $2,%ecx
	cmpl %eax,%ecx
	jbe Ljoin_l72
Ljoin_l80:
	jmp Ljoin_l58
Ljoin_l72:
	movl $3,%ecx
	cmpl %ecx,%eax
	jbe Ljoin_l57
Ljoin_l79:
	jmp Ljoin_l58
Ljoin_l58:
	jmp Ljoin_l53
Ljoin_l53:
	movl $4,%ecx
	cmpl %ecx,%eax
	je Ljoin_l51
Ljoin_l52:
	jmp Ljoin_l47
Ljoin_l47:
	movl $5,%ecx
	cmpl %eax,%ecx
	jbe Ljoin_l71
Ljoin_l78:
	jmp Ljoin_l70
Ljoin_l71:
	movl $-1,%ecx
	cmpl %ecx,%eax
	jbe Ljoin_l45
Ljoin_l77:
	jmp Ljoin_l70
Ljoin_l70:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l45
Ljoin_l69:
	movl $-2147483648,%ecx
	cmpl %eax,%ecx
	jbe Ljoin_l68
Ljoin_l76:
	jmp Ljoin_l46
Ljoin_l68:
	movl $-1,%ecx
	cmpl %ecx,%eax
	jbe Ljoin_l45
Ljoin_l75:
	jmp Ljoin_l46
Ljoin_l46:
	jmp Ljoin_l41
Ljoin_l45:
	leal def,%ecx
	movl %edi,8(%esp)
	leal 52(%esp), %edi
	movl %edi,12(%esp)
	movl $-52,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 52(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,24(%esp)
	call printf
Ljoin_l44:
	movl 8(%esp),%edi
	movl 20(%esp),%esi
	movl 24(%esp),%edx
	jmp Ljoin_l41
Ljoin_l51:
	leal third,%ecx
	movl %edi,8(%esp)
	leal 52(%esp), %edi
	movl %edi,28(%esp)
	movl $-52,%edi
	movl %edi,32(%esp)
	movl 28(%esp),%edi
	movl %esi,20(%esp)
	movl 32(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 52(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,24(%esp)
	call printf
Ljoin_l50:
	movl 8(%esp),%edi
	movl 20(%esp),%esi
	movl 24(%esp),%edx
	jmp Ljoin_l41
Ljoin_l57:
	leal second,%ecx
	movl %edi,8(%esp)
	leal 52(%esp), %edi
	movl %edi,36(%esp)
	movl $-52,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl %esi,20(%esp)
	movl 40(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 52(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,24(%esp)
	call printf
Ljoin_l56:
	movl 8(%esp),%edi
	movl 20(%esp),%esi
	movl 24(%esp),%edx
	jmp Ljoin_l41
Ljoin_l63:
	leal first,%ecx
	movl %edi,8(%esp)
	leal 52(%esp), %edi
	movl %edi,44(%esp)
	movl $-52,%edi
	movl %edi,48(%esp)
	movl 44(%esp),%edi
	movl %esi,20(%esp)
	movl 48(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 52(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,24(%esp)
	call printf
Ljoin_l62:
	movl 8(%esp),%edi
	movl 20(%esp),%esi
	movl 24(%esp),%edx
	jmp Ljoin_l41
Ljoin_l41:
	leal 52(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l81:
.long 0
.section .pcmap
.long Ljoin_l44
.long Lframe_l82
.section .pcmap_data
Lframe_l82:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffd4
.long 0
.long 0
.section .pcmap
.long Ljoin_l50
.long Lframe_l83
.section .pcmap_data
Lframe_l83:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffd4
.long 0
.long 0
.section .pcmap
.long Ljoin_l56
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffd4
.long 0
.long 0
.section .pcmap
.long Ljoin_l62
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xffffffe0
.long 11
.long 0xffffffd4
.long 0
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
