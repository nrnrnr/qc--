.globl main
.globl f
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
.section .data
.section .text
main:
	leal -64(%esp), %esp
	leal 64(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl %edi,28(%esp)
	movl $1,%edi
	cmpl %edi,%eax
	jg Ljoin_l37
Ljoin_l38:
	leal f_4,%edi
	leal 64(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	jmp L.3
Ljoin_l37:
	jmp L.2
L.2:
	movl $4,%edi
	addl %edi,%ecx
	leal 64(%esp), %edi
	movl $-64,%eax
	addl %eax,%edi
	movl (%ecx),%eax
	movl %eax,(%edi)
	movl %edx,32(%esp)
	call atof
Ljoin_l36:
	leal 64(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	fstps (%edi)
	leal f_5,%edi
	flds (%edi)
	leal 64(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	flds (%edi)
	fdivp
	leal 64(%esp), %edi
	movl $-48,%eax
	addl %eax,%edi
	fstps (%edi)
	movl 32(%esp),%edx
	jmp L.3
L.3:
	movl $0,%edi
	jmp L.6
L.6:
	movl $1,%eax
	movl %edi,%ecx
	addl %eax,%ecx
	leal f_4,%eax
	movl %edi,36(%esp)
	movl $2,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	shll %cl, %edi
	leal f,%ecx
	addl %ecx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
L.7:
	movl $127,%edi
	movl 44(%esp),%eax
	cmpl %edi,%eax
	jle Ljoin_l32
Ljoin_l33:
	movl $0,%edi
	jmp L.11
L.11:
	movl %edx,32(%esp)
	call getchar
Ljoin_l31:
	movl %eax,%ecx
	movl $-1,%edx
	cmpl %edx,%eax
	jne Ljoin_l27
Ljoin_l28:
	leal i_14,%eax
	leal 64(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l26:
	movl $0,%edx
	jmp L.15
L.15:
	movl $2,%ecx
	movl %edx,%eax
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	leal 64(%esp), %ecx
	movl %edi,48(%esp)
	movl $-44,%edi
	addl %edi,%ecx
	movl (%eax),%edi
	movl %edi,(%ecx)
	leal f_4,%edi
	flds (%edi)
	leal 64(%esp), %edi
	movl $-44,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz Ljoin_l22
Ljoin_l23:
	leal 64(%esp), %edi
	movl $-40,%ecx
	addl %ecx,%edi
	movl 48(%esp),%ecx
	movl %ecx,(%edi)
	leal 64(%esp), %edi
	movl $-40,%eax
	addl %eax,%edi
	fildl (%edi)
	leal 64(%esp), %edi
	movl $-44,%eax
	addl %eax,%edi
	flds (%edi)
	fdivp
	leal 64(%esp), %edi
	movl $-48,%eax
	addl %eax,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l20
Ljoin_l21:
	movl $32,%edi
	cmpl %edi,%edx
	jg Ljoin_l18
Ljoin_l19:
	leal i_23,%edi
	leal 64(%esp), %eax
	movl %edi,56(%esp)
	movl $-64,%edi
	addl %edi,%eax
	movl 56(%esp),%edi
	movl %edi,(%eax)
	leal 64(%esp), %edi
	movl $-60,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %edx,44(%esp)
	call printf
Ljoin_l17:
	jmp L.22
Ljoin_l18:
	jmp L.21
L.21:
	leal i_24,%edi
	leal 64(%esp), %eax
	movl %edi,52(%esp)
	movl $-64,%edi
	addl %edi,%eax
	movl 52(%esp),%edi
	movl %edi,(%eax)
	leal 64(%esp), %edi
	movl $-60,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	movl %edx,44(%esp)
	call printf
Ljoin_l14:
	jmp L.22
L.22:
	leal 64(%esp), %edi
	movl $-40,%eax
	addl %eax,%edi
	movl 48(%esp),%eax
	movl %eax,(%edi)
	leal 64(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	fildl (%edi)
	movl $2,%ecx
	movl 44(%esp),%edi
	movl %edi,%edx
	shll %cl, %edx
	leal f,%ecx
	addl %ecx,%edx
	flds (%edx)
	leal f_5,%ecx
	flds (%ecx)
	fmulp
	fdivp
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	fstpl (%ecx)
	leal i_25,%ecx
	leal 64(%esp), %edx
	movl $-64,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	call printf
Ljoin_l11:
	movl 44(%esp),%edx
	movl 48(%esp),%ecx
	jmp L.19
Ljoin_l20:
	jmp L.19
Ljoin_l22:
	jmp Ljoin_l42
Ljoin_l42:
	movl 48(%esp),%ecx
	jmp L.19
L.19:
L.16:
	movl $1,%edi
	addl %edi,%edx
	movl $127,%edi
	cmpl %edi,%edx
	jle Ljoin_l7
Ljoin_l8:
	movl $0,%eax
	leal 64(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%edi
	leal 64(%esp), %esp
	ret
Ljoin_l7:
	jmp Ljoin_l44
Ljoin_l44:
	movl %ecx,%edi
	jmp L.15
Ljoin_l27:
	jmp L.10
L.10:
	movl $2,%edx
	movl %ecx,60(%esp)
	movl %edx,%ecx
	movl 60(%esp),%edx
	shll %cl, %edx
	leal f,%ecx
	addl %ecx,%edx
	leal f_13,%ecx
	flds (%ecx)
	flds (%edx)
	faddp
	fstps (%edx)
	movl $1,%edx
	addl %edx,%edi
	movl 32(%esp),%edx
	jmp L.11
Ljoin_l32:
	jmp Ljoin_l43
Ljoin_l43:
	movl %eax,%edi
	jmp L.6
.section .pcmap_data
Lstackdata_l48:
.long 0
.section .pcmap
.long Ljoin_l36
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffe0
.long Lstackdata_l48
.long 8
.long 11
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd0
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.section .pcmap
.long Ljoin_l31
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffe0
.long Lstackdata_l48
.long 8
.long 11
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0xffffffd0
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.section .pcmap
.long Ljoin_l26
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffe0
.long Lstackdata_l48
.long 8
.long 11
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0xffffffd0
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffe0
.long Lstackdata_l48
.long 8
.long 11
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0xffffffd0
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffe0
.long Lstackdata_l48
.long 8
.long 11
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0xffffffd0
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffe0
.long Lstackdata_l48
.long 8
.long 11
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0xffffffec
.long 0xfffffff0
.long 0
.long 0xffffffd0
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.section .text
.section .bss
.align 4
f:
.skip 512, 0
.section .data
i_25:
.byte 9
.byte 37
.byte 46
.byte 49
.byte 102
.byte 10
.byte 0
i_24:
.byte 37
.byte 99
.byte 0
i_23:
.byte 37
.byte 48
.byte 51
.byte 111
.byte 0
i_14:
.byte 99
.byte 104
.byte 97
.byte 114
.byte 9
.byte 102
.byte 114
.byte 101
.byte 113
.byte 10
.byte 0
.align 4
f_13:
.long 0x3f800000
.align 4
f_5:
.long 0x42c80000
.align 4
f_4:
.long 0
