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
.align 4
x:
.long 0x40400000
y:
.long 0x3e10fcf8
z:
.skip 4, 0
fmt:
.byte 37
.byte 102
.byte 32
.byte 43
.byte 32
.byte 37
.byte 102
.byte 32
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
.section .text
main:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl (%eax),%eax
	movl %eax,28(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal y,%eax
	flds (%eax)
	leal x,%eax
	flds (%eax)
	faddp
	leal z,%eax
	fstps (%eax)
	leal fmt,%eax
	leal 32(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal x,%eax
	flds (%eax)
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal y,%eax
	flds (%eax)
	leal 32(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal z,%eax
	flds (%eax)
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l14:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l15
.section .pcmap_data
.Lframe_l15:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l14
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
