.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section .text
p:
	leal -8(%esp), %esp
	leal 8(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $3,%edx
	movl $-8,%eax
	movl %ecx,4(%esp)
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $-8,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $0,%edx
	leal 8(%esp), %ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l13:
.long 0
.section .text
.section .text
main:
	leal -20(%esp), %esp
	movl $4,%eax
	leal 20(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 20(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l16:
Lproc_body_start_l15:
	call p
Ljoin_l23:
	movl $-8,%eax
	leal 20(%esp), %ecx
	addl %eax,%ecx
	fstps (%ecx)
	leal answer,%ecx
	movl $-20,%eax
	leal 20(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-8,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	flds (%edx)
	movl $-16,%edx
	leal 20(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	call printf
Ljoin_l20:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	movl %ebx,16(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000003
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
.long 0xfffffff8
.section .pcmap
.long Ljoin_l20
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 0x80000008
.long 0x80000003
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
.long 0xfffffff8
.section .text
.section .data
answer:
.byte 73
.byte 110
.byte 116
.byte 101
.byte 103
.byte 101
.byte 114
.byte 32
.byte 51
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 101
.byte 114
.byte 116
.byte 115
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 108
.byte 111
.byte 97
.byte 116
.byte 105
.byte 110
.byte 103
.byte 45
.byte 112
.byte 111
.byte 105
.byte 110
.byte 116
.byte 32
.byte 37
.byte 52
.byte 46
.byte 50
.byte 108
.byte 102
.byte 10
.byte 0
