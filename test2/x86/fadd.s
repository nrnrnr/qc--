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
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal y,%ecx
	flds (%ecx)
	leal x,%ecx
	flds (%ecx)
	faddp
	leal z,%ecx
	fstps (%ecx)
	leal fmt,%ecx
	leal 36(%esp), %edx
	movl %edi,28(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal x,%edi
	flds (%edi)
	leal 36(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	fstpl (%edi)
	leal y,%edi
	flds (%edi)
	leal 36(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	fstpl (%edi)
	leal z,%edi
	flds (%edi)
	leal 36(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	fstpl (%edi)
	movl %eax,32(%esp)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l15:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l16
.section .pcmap_data
Lframe_l16:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long Lstackdata_l15
.long 1
.long 0
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.section .text
