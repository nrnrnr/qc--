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
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $0,%ecx
	movl $-16,%edx
	movl %eax,32(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $2146435072,%eax
	movl $-12,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-16,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	movl $-24,%edx
	leal 40(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	movl $18,%eax
	movl $-16,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	movl $-12,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-16,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	movl $-24,%edx
	leal 40(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
Ljoin_l10:
	leal fmt,%eax
	movl $-40,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-24,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl $-36,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	movl $-28,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	movl %ebx,36(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
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
.long 0x80000000
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
