.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $0,%ecx
	leal 36(%esp), %edx
	movl %edi,32(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $2146435072,%edi
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 36(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	fstpl (%edi)
	movl $18,%edi
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $2146435072,%edi
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 36(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	fstpl (%edi)
Ljoin_l10:
	leal fmt,%edi
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 36(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 36(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 36(%esp), %edx
	leal 36(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 32(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l17:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l18
.section .pcmap_data
Lframe_l18:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l17
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0x80000000
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
