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
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $-2147483648,%ecx
	leal 68(%esp), %edx
	movl %eax,52(%esp)
	movl $-40,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $0,%eax
	leal 68(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-2147483648,%eax
	leal 68(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 68(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 68(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call ladd
.Lcall_successor_l10:
	leal 68(%esp), %ecx
	movl %ecx,56(%esp)
	movl $-24,%ecx
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	movl %ebx,64(%esp)
	movl 60(%esp),%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal format,%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 68(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 68(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 68(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	movl 64(%esp),%ebx
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
.long 0xfffffff0
.long .Lstackdata_l17
.long 0
.long 5
.long 0
.long 1
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
.long 0xfffffff0
.long .Lstackdata_l17
.long 1
.long 5
.long 0
.long 1
.long 7
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
