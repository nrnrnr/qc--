.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffffffffffff
.section .data
fmt:
.byte 37
.byte 102
.byte 32
.byte 114
.byte 111
.byte 117
.byte 110
.byte 100
.byte 101
.byte 100
.byte 32
.byte 37
.byte 115
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
up:
.byte 117
.byte 112
.byte 0
down:
.byte 100
.byte 111
.byte 119
.byte 110
.byte 0
nearest:
.byte 110
.byte 101
.byte 97
.byte 114
.byte 101
.byte 115
.byte 116
.byte 0
zero:
.byte 122
.byte 101
.byte 114
.byte 111
.byte 0
.section .text
test:
	leal -108(%esp), %esp
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl %edi,56(%esp)
	leal 108(%esp), %edi
	movl %edi,60(%esp)
	movl $-80,%edi
	movl %edi,64(%esp)
	movl 60(%esp),%edi
	movl %esi,68(%esp)
	movl 64(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 108(%esp), %edi
	movl $-80,%esi
	addl %esi,%edi
	fildl (%edi)
	leal 108(%esp), %edi
	movl $-80,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 108(%esp), %edi
	movl $-80,%esi
	addl %esi,%edi
	fildl (%edi)
	fdivp
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	fstps (%edi)
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	flds (%edi)
	leal 108(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	fnstcw 36(%esp)
	movzwl 36(%esp),%esi
	shll $20, %esi
	shrl $30, %esi
	fnstcw 34(%esp)
	movl %edi,72(%esp)
	movzwl 34(%esp),%edi
	andl $-3073,%edi
	movl %edi,76(%esp)
	movl $1,%edi
	shll $10, %edi
	movl %esi,80(%esp)
	movl 76(%esp),%esi
	orl %edi,%esi
	movw %si,34(%esp)
	fldcw 34(%esp)
	movl 72(%esp),%edi
	fistpl (%edi)
	fnstcw 32(%esp)
	movzwl 32(%esp),%edi
	andl $-3073,%edi
	movl 80(%esp),%esi
	shll $10, %esi
	orl %esi,%edi
	movw %di,32(%esp)
	fldcw 32(%esp)
	leal fmt,%edi
	leal 108(%esp), %esi
	movl %edi,84(%esp)
	movl $-108,%edi
	addl %edi,%esi
	movl 84(%esp),%edi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	flds (%edi)
	leal 108(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	fstpl (%edi)
	leal down,%edi
	leal 108(%esp), %esi
	movl %edi,88(%esp)
	movl $-96,%edi
	addl %edi,%esi
	movl 88(%esp),%edi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl %edi,92(%esp)
	movl $-92,%edi
	addl %edi,%esi
	movl 92(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,104(%esp)
	movl %eax,96(%esp)
	movl %ecx,100(%esp)
	call printf
Ljoin_l18:
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	flds (%edi)
	leal 108(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	fnstcw 42(%esp)
	movzwl 42(%esp),%esi
	shll $20, %esi
	shrl $30, %esi
	fnstcw 40(%esp)
	movzwl 40(%esp),%eax
	andl $-3073,%eax
	movl $2,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,40(%esp)
	fldcw 40(%esp)
	fistpl (%edi)
	fnstcw 38(%esp)
	movzwl 38(%esp),%edi
	andl $-3073,%edi
	shll $10, %esi
	orl %esi,%edi
	movw %di,38(%esp)
	fldcw 38(%esp)
	leal fmt,%edi
	leal 108(%esp), %esi
	movl $-108,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	flds (%edi)
	leal 108(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	fstpl (%edi)
	leal up,%edi
	leal 108(%esp), %esi
	movl $-96,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-92,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printf
Ljoin_l15:
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	flds (%edi)
	leal 108(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	fnstcw 48(%esp)
	movzwl 48(%esp),%esi
	shll $20, %esi
	shrl $30, %esi
	fnstcw 46(%esp)
	movzwl 46(%esp),%eax
	andl $-3073,%eax
	movl $0,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,46(%esp)
	fldcw 46(%esp)
	fistpl (%edi)
	fnstcw 44(%esp)
	movzwl 44(%esp),%edi
	andl $-3073,%edi
	shll $10, %esi
	orl %esi,%edi
	movw %di,44(%esp)
	fldcw 44(%esp)
	leal fmt,%edi
	leal 108(%esp), %esi
	movl $-108,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	flds (%edi)
	leal 108(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	fstpl (%edi)
	leal nearest,%edi
	leal 108(%esp), %esi
	movl $-96,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-92,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printf
Ljoin_l12:
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	flds (%edi)
	leal 108(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	fnstcw 54(%esp)
	movzwl 54(%esp),%esi
	shll $20, %esi
	shrl $30, %esi
	fnstcw 52(%esp)
	movzwl 52(%esp),%eax
	andl $-3073,%eax
	movl $3,%ecx
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,52(%esp)
	fldcw 52(%esp)
	fistpl (%edi)
	fnstcw 50(%esp)
	movzwl 50(%esp),%edi
	andl $-3073,%edi
	shll $10, %esi
	orl %esi,%edi
	movw %di,50(%esp)
	fldcw 50(%esp)
	leal fmt,%edi
	leal 108(%esp), %esi
	movl $-108,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-88,%esi
	addl %esi,%edi
	flds (%edi)
	leal 108(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	fstpl (%edi)
	leal zero,%edi
	leal 108(%esp), %esi
	movl $-96,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-84,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-92,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printf
Ljoin_l9:
	movl 96(%esp),%edx
	movl %edx,%ecx
	movl 100(%esp),%eax
	addl %eax,%ecx
	subl %eax,%edx
	imull %edx,%ecx
	leal 108(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 104(%esp),%ecx
	movl %ecx,(%edx)
	movl 68(%esp),%esi
	movl 56(%esp),%edi
	leal 112(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l24:
.long 0
.section .pcmap
.long Ljoin_l18
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0x80000008
.long 0xffffff94
.long 0xfffffffc
.long Lstackdata_l24
.long 2
.long 4
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffcc
.long 0xfffffff4
.long 0xfffffff8
.long 0xffffffa8
.long 0xffffffac
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l26
.section .pcmap_data
Lframe_l26:
.long 0x80000008
.long 0xffffff94
.long 0xfffffffc
.long Lstackdata_l24
.long 2
.long 4
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffcc
.long 0xfffffff4
.long 0xfffffff8
.long 0xffffffa8
.long 0xffffffac
.long 0
.section .pcmap
.long Ljoin_l12
.long Lframe_l27
.section .pcmap_data
Lframe_l27:
.long 0x80000008
.long 0xffffff94
.long 0xfffffffc
.long Lstackdata_l24
.long 2
.long 4
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffcc
.long 0xfffffff4
.long 0xfffffff8
.long 0xffffffa8
.long 0xffffffac
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l28
.section .pcmap_data
Lframe_l28:
.long 0x80000008
.long 0xffffff94
.long 0xfffffffc
.long Lstackdata_l24
.long 2
.long 4
.long 0
.long 1
.long 10
.long 0xffffffd8
.long 11
.long 0xffffffcc
.long 0xfffffff4
.long 0xfffffff8
.long 0xffffffa8
.long 0xffffffac
.long 0
.section .text
main:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l31:
Lproc_body_start_l30:
	leal -4(%esp), %esp
	movl $3,%eax
	movl $2,%edx
	movl %edi,4(%esp)
	leal 24(%esp), %edi
	movl %edi,8(%esp)
	movl $-24,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,20(%esp)
	call test
Ljoin_l41:
	leal -4(%esp), %esp
	movl $4,%eax
	movl $3,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test
Ljoin_l38:
	leal -4(%esp), %esp
	movl $-7,%eax
	movl $3,%edi
	leal 24(%esp), %esi
	movl $-24,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call test
Ljoin_l35:
	movl $0,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l47:
.long 0
.section .pcmap
.long Ljoin_l41
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l47
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l38
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l47
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l35
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l47
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.section .text
