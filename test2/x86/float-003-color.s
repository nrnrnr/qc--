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
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %eax
	movl (%eax),%eax
	movl %eax,36(%esp)
	movl %edi,32(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $0,%ecx
	leal 40(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $2146435072,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $18,%ecx
	leal 40(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $2146435072,%ecx
	leal 40(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $1,%eax
.Lbranch_target_l8:
	leal fmt,%ecx
	leal 40(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	leal 40(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	fildq (%ecx)
	fistpq (%edi)
	leal 40(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl 32(%esp),%edi
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l16:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l17
.section .pcmap_data
.Lframe_l17:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l16
.long 1
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0xffffffe8
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
