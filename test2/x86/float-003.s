.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffffffffffff
.section .text
main:
	leal -52(%esp), %esp
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $0,%edx
	movl %edi,32(%esp)
	leal 52(%esp), %edi
	movl %edi,36(%esp)
	movl $-28,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl %esi,44(%esp)
	movl 40(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $2146435072,%edi
	leal 52(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal 52(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	fldl (%edi)
	leal 52(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	fstpl (%edi)
	movl $18,%edi
	leal 52(%esp), %esi
	movl $-36,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	movl $2146435072,%edi
	leal 52(%esp), %esi
	movl $-32,%edx
	addl %edx,%esi
	movl %edi,(%esi)
Ljoin_l10:
	leal fmt,%edi
	leal 52(%esp), %esi
	movl $-52,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal 52(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	leal 52(%esp), %esi
	movl $-48,%edx
	addl %edx,%esi
	fildq (%edi)
	fistpq (%esi)
	leal 52(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %ecx,48(%esp)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 52(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%esi
	movl 32(%esp),%edi
	leal 52(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l17:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l18
.section .pcmap_data
Lframe_l18:
.long 0x80000004
.long 0xffffffcc
.long 0xfffffffc
.long Lstackdata_l17
.long 2
.long 4
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0
.section .text
.section .data
fmt:
.byte 102
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 59
.byte 32
.byte 120
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
