.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $0,%ecx
	leal 40(%esp), %edx
	movl %eax,32(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $2146435072,%ecx
	leal 40(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fldl (%ecx)
	leal 40(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $18,%ecx
	leal 40(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $2146435072,%ecx
	leal 40(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fldl (%ecx)
	leal 40(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	fstpl (%ecx)
Ljoin_l10:
	leal fmt,%ecx
	leal 40(%esp), %edx
	movl $-40,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 40(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl $-36,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 40(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 40(%esp), %ecx
	leal 40(%esp), %edx
	movl %ebx,36(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 36(%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l17:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l18
.section .pcmap_data
Lframe_l18:
.long 0xffffffd8
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0xffffffe8
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
