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
.section .text
f:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $388380743,%ecx
	leal 28(%esp), %edx
	movl %edi,20(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $9975624,%edi
	leal 28(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $32,%edi
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 28(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	fildl (%edi)
	leal 28(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	fstpl (%edi)
	movl %eax,24(%esp)
	call c_fun
Ljoin_l10:
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l17:
.long 0
.section .pcmap
.long Ljoin_l10
.long Lframe_l18
.section .pcmap_data
Lframe_l18:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
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
.long 0xfffffff8
.long 0
.section .text
.section .text
c_fun:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 44(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 44(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l21:
Lproc_body_start_l20:
	leal fmt,%ecx
	leal 44(%esp), %edx
	movl %edi,36(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 44(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 44(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	leal 44(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	movl %eax,40(%esp)
	call printf
Ljoin_l25:
	leal 44(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 36(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l32:
.long 0
.section .pcmap
.long Ljoin_l25
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0x80000004
.long 0xffffffd4
.long 0xfffffffc
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
.long 0xfffffff8
.long 0xffffffe8
.long 0xfffffff0
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
	leal 4(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l36:
Lproc_body_start_l35:
	movl %eax,(%esp)
	call f
Ljoin_l40:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
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
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
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
