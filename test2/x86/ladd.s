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
.long 0xffffffff
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
	movl $-2147483648,%ecx
	leal 60(%esp), %edx
	movl %edi,52(%esp)
	movl $-32,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $0,%edi
	leal 60(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $-2147483648,%edi
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $0,%edi
	leal 60(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 60(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 60(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	movl %eax,56(%esp)
	call ladd
Ljoin_l11:
	leal 60(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 60(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	leal format,%edi
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 60(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	leal 60(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 60(%esp), %edi
	movl $-24,%eax
	addl %eax,%edi
	leal 60(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 60(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	leal 60(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	fildq (%edi)
	fistpq (%eax)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 60(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l18:
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l19
.section .pcmap_data
Lframe_l19:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffffc
.long Lstackdata_l18
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0xffffffe0
.long 0xffffffe8
.long 0xfffffff0
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffffc
.long Lstackdata_l18
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0xffffffe0
.long 0xffffffe8
.long 0xfffffff0
.long 0
.section .text
.section .data
format:
.byte 115
.byte 117
.byte 109
.byte 32
.byte 111
.byte 102
.byte 32
.byte 37
.byte 48
.byte 49
.byte 54
.byte 108
.byte 108
.byte 120
.byte 10
.byte 97
.byte 110
.byte 100
.byte 32
.byte 32
.byte 32
.byte 32
.byte 37
.byte 48
.byte 49
.byte 54
.byte 108
.byte 108
.byte 120
.byte 10
.byte 105
.byte 115
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 37
.byte 48
.byte 49
.byte 54
.byte 108
.byte 108
.byte 120
.byte 10
.byte 0
