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
	leal -68(%esp), %esp
	leal 68(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %eax
	movl (%eax),%eax
	movl %eax,56(%esp)
	movl %edi,64(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $-2147483648,%ecx
	leal 68(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 68(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-2147483648,%ecx
	leal 68(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 68(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 68(%esp), %ecx
	movl $-40,%eax
	addl %eax,%ecx
	leal 68(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 68(%esp), %ecx
	movl $-32,%eax
	addl %eax,%ecx
	leal 68(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	call ladd
.Lcall_successor_l10:
	leal 68(%esp), %ecx
	movl $-24,%edi
	movl %edi,52(%esp)
	movl %ecx,60(%esp)
	movl 52(%esp),%edi
	movl 60(%esp),%ecx
	addl %edi,%ecx
	movl %ecx,60(%esp)
	movl 60(%esp),%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal format,%ecx
	leal 68(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 68(%esp), %ecx
	movl $-40,%eax
	addl %eax,%ecx
	leal 68(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 68(%esp), %ecx
	movl $-32,%eax
	addl %eax,%ecx
	leal 68(%esp), %eax
	movl $-56,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 68(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	leal 68(%esp), %eax
	movl $-48,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 68(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	movl 64(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l17:
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l18
.section .pcmap_data
.Lframe_l18:
.long 0x80000004
.long 0xffffffbc
.long 0xfffffff4
.long .Lstackdata_l17
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffffc
.long 0
.long 0
.long 0xffffffd8
.long 0xffffffe0
.long 0xffffffe8
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xffffffbc
.long 0xfffffff4
.long .Lstackdata_l17
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffffc
.long 0
.long 0
.long 0xffffffd8
.long 0xffffffe0
.long 0xffffffe8
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
