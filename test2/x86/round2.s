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
.long 0xffffffff
.section .data
print_float:
.byte 37
.byte 102
.byte 10
.byte 0
print_int:
.byte 37
.byte 100
.byte 10
.byte 0
.section .text
main:
	leal -60(%esp), %esp
	leal 60(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	fnstcw 32(%esp)
	movzwl 32(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	movl $2,%edx
	movl %edi,36(%esp)
	leal 60(%esp), %edi
	movl %edi,40(%esp)
	movl $-32,%edi
	movl %edi,44(%esp)
	movl 40(%esp),%edi
	movl %esi,48(%esp)
	movl 44(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 60(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	fildl (%edi)
	movl $3,%edi
	leal 60(%esp), %esi
	movl $-32,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	fildl (%edi)
	fdivp
	leal 60(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	fstps (%edi)
	fnstcw 24(%esp)
	movzwl 24(%esp),%edi
	andl $-3073,%edi
	movl $1,%esi
	shll $10, %esi
	orl %esi,%edi
	movw %di,24(%esp)
	fldcw 24(%esp)
	leal 60(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	flds (%edi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	fistpl (%edi)
	leal print_int,%edi
	leal 60(%esp), %esi
	movl $-60,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-56,%edx
	addl %edx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %eax,52(%esp)
	movl %ecx,56(%esp)
	call printf
Ljoin_l17:
	fnstcw 22(%esp)
	movzwl 22(%esp),%edi
	andl $-3073,%edi
	movl $2,%esi
	shll $10, %esi
	orl %esi,%edi
	movw %di,22(%esp)
	fldcw 22(%esp)
	leal 60(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	flds (%edi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	fistpl (%edi)
	leal print_int,%edi
	leal 60(%esp), %esi
	movl $-60,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-56,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printf
Ljoin_l14:
	fnstcw 20(%esp)
	movzwl 20(%esp),%edi
	andl $-3073,%edi
	movl $0,%esi
	shll $10, %esi
	orl %esi,%edi
	movw %di,20(%esp)
	fldcw 20(%esp)
	leal 60(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	flds (%edi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	fistpl (%edi)
	leal print_int,%edi
	leal 60(%esp), %esi
	movl $-60,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-56,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printf
Ljoin_l11:
	fnstcw 18(%esp)
	movzwl 18(%esp),%edi
	andl $-3073,%edi
	movl $3,%esi
	shll $10, %esi
	orl %esi,%edi
	movw %di,18(%esp)
	fldcw 18(%esp)
	leal 60(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	flds (%edi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	fistpl (%edi)
	leal print_int,%edi
	leal 60(%esp), %esi
	movl $-60,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-56,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printf
Ljoin_l8:
	fnstcw 16(%esp)
	movzwl 16(%esp),%edx
	andl $-3073,%edx
	movl 56(%esp),%ecx
	shll $10, %ecx
	orl %ecx,%edx
	movw %dx,16(%esp)
	fldcw 16(%esp)
	movl $0,%eax
	leal 60(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%esi
	movl 36(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l24:
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff8
.long Lstackdata_l24
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffd0
.long 0xffffffcc
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l26
.section .pcmap_data
Lframe_l26:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff8
.long Lstackdata_l24
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffd0
.long 0xffffffcc
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l27
.section .pcmap_data
Lframe_l27:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff8
.long Lstackdata_l24
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffd0
.long 0xffffffcc
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l28
.section .pcmap_data
Lframe_l28:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff8
.long Lstackdata_l24
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0xfffffffc
.long 0xffffffd0
.long 0xffffffcc
.long 0
.section .text
