.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section .text
f:
	leal -20(%esp), %esp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $388380743,%eax
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $9975624,%eax
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $32,%eax
	leal 20(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 20(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	call c_fun
Ljoin_l10:
	leal 20(%esp), %edx
	leal 20(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l17:
.long 0
.section .pcmap
.long Ljoin_l10
.long Lframe_l18
.section .pcmap_data
Lframe_l18:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l17
.long 8
.long 0
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .text
.section .text
c_fun:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 36(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
Linitialize_continuations_l21:
Lproc_body_start_l20:
	leal fmt,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call printf
Ljoin_l25:
	leal 36(%esp), %edx
	leal 36(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l32:
.long 0
.section .pcmap
.long Ljoin_l25
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.section .text
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l36:
Lproc_body_start_l35:
	call f
Ljoin_l40:
	movl $0,%eax
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l47:
.long 0
.section .pcmap
.long Ljoin_l40
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 8
.long 2
.long 0
.long 1
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
.section .text
.section .data
fmt:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 101
.byte 100
.byte 32
.byte 99
.byte 95
.byte 102
.byte 117
.byte 110
.byte 40
.byte 48
.byte 120
.byte 37
.byte 48
.byte 49
.byte 54
.byte 108
.byte 108
.byte 120
.byte 44
.byte 32
.byte 37
.byte 108
.byte 102
.byte 41
.byte 10
.byte 0
