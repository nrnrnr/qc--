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
.long 0xffffffff
.section .text
main:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $0,%ecx
	leal 44(%esp), %edx
	movl %edi,32(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $2146435072,%edi
	leal 44(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 44(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 44(%esp), %edi
	movl $-28,%ecx
	addl %ecx,%edi
	fstpl (%edi)
	movl $18,%edi
	leal 44(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $2146435072,%edi
	leal 44(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $1,%edi
.Ljoin_l10:
	leal fmt,%ecx
	leal 44(%esp), %edx
	movl %edi,36(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 44(%esp), %edi
	movl $-28,%ecx
	addl %ecx,%edi
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 44(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	movl 36(%esp),%ecx
	movl %ecx,(%edi)
	movl %eax,40(%esp)
	call printf
.Ljoin_l8:
	movl $0,%eax
	leal 44(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 32(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l17:
.long 0
.section .pcmap
.long .Ljoin_l8
.long .Lframe_l18
.section .pcmap_data
.Lframe_l18:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffffc
.long .Lstackdata_l17
.long 1
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0xffffffe4
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
