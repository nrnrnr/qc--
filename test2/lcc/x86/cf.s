.globl main
.globl f
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -48(%esp), %esp
	leal 48(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%eax
	cmpl %eax,%ecx
	jg Ljoin_l37
Ljoin_l38:
	leal f_4,%eax
	leal 48(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	jmp L.3
Ljoin_l37:
	jmp L.2
L.2:
	movl $4,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	call atof
Ljoin_l36:
	leal 48(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fstps (%eax)
	leal f_5,%eax
	flds (%eax)
	leal 48(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	flds (%eax)
	fdivp
	leal 48(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	fstps (%eax)
	jmp L.3
L.3:
	movl $0,%ecx
	jmp L.6
L.6:
	movl $1,%edx
	movl %ecx,%eax
	addl %edx,%eax
	leal f_4,%edx
	movl %ebx,28(%esp)
	movl $2,%ebx
	movl %ecx,32(%esp)
	movl %ebx,%ecx
	movl 32(%esp),%ebx
	shll %cl, %ebx
	leal f,%ecx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
L.7:
	movl $127,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l32
Ljoin_l33:
	movl $0,%ecx
	jmp L.11
L.11:
	movl %ecx,36(%esp)
	call getchar
Ljoin_l31:
	movl %eax,%ecx
	movl $-1,%edx
	cmpl %edx,%eax
	jne Ljoin_l27
Ljoin_l28:
	leal i_14,%eax
	leal 48(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l26:
	movl $0,%eax
	jmp L.15
L.15:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal f,%ecx
	addl %ecx,%edx
	leal 48(%esp), %ecx
	movl $-28,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	leal f_4,%ecx
	flds (%ecx)
	leal 48(%esp), %ecx
	movl $-28,%ebx
	addl %ebx,%ecx
	flds (%ecx)
	fcompp
	movl %eax,40(%esp)
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz Ljoin_l22
Ljoin_l23:
	leal 48(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	fildl (%eax)
	leal 48(%esp), %eax
	movl $-28,%ebx
	addl %ebx,%eax
	flds (%eax)
	fdivp
	leal 48(%esp), %eax
	movl $-32,%ebx
	addl %ebx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l20
Ljoin_l21:
	movl $32,%eax
	movl 40(%esp),%ebx
	cmpl %eax,%ebx
	jg Ljoin_l18
Ljoin_l19:
	leal i_23,%eax
	leal 48(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl 40(%esp),%edx
	movl %edx,(%eax)
	call printf
Ljoin_l17:
	jmp L.22
Ljoin_l18:
	jmp L.21
L.21:
	leal i_24,%eax
	leal 48(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl 40(%esp),%edx
	movl %edx,(%eax)
	call printf
Ljoin_l14:
	jmp L.22
L.22:
	leal 48(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	fildl (%eax)
	movl $2,%eax
	movl 40(%esp),%edx
	movl %edx,%ebx
	movl %eax,%ecx
	shll %cl, %ebx
	leal f,%ecx
	addl %ecx,%ebx
	flds (%ebx)
	leal f_5,%ebx
	flds (%ebx)
	fmulp
	fdivp
	leal 48(%esp), %ebx
	movl $-44,%ecx
	addl %ecx,%ebx
	fstpl (%ebx)
	leal i_25,%ebx
	leal 48(%esp), %ecx
	movl $-48,%eax
	addl %eax,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l11:
	movl 36(%esp),%ecx
	jmp L.19
Ljoin_l20:
	jmp L.19
Ljoin_l22:
	jmp Ljoin_l42
Ljoin_l42:
	movl 36(%esp),%ecx
	jmp L.19
L.19:
L.16:
	movl $1,%eax
	movl 40(%esp),%edx
	addl %eax,%edx
	movl $127,%eax
	cmpl %eax,%edx
	jle Ljoin_l7
Ljoin_l8:
	movl $0,%eax
	leal 48(%esp), %ecx
	leal 48(%esp), %ebx
	movl $0,%edx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 28(%esp),%ebx
	leal 48(%esp), %esp
	ret
Ljoin_l7:
	jmp Ljoin_l43
Ljoin_l43:
	movl %edx,%eax
	jmp L.15
Ljoin_l27:
	jmp L.10
L.10:
	movl $2,%ebx
	movl %ecx,44(%esp)
	movl %ebx,%ecx
	movl 44(%esp),%ebx
	shll %cl, %ebx
	leal f,%ecx
	addl %ecx,%ebx
	leal f_13,%ecx
	flds (%ecx)
	flds (%ebx)
	faddp
	fstps (%ebx)
	movl $1,%ebx
	movl 36(%esp),%ecx
	addl %ebx,%ecx
	jmp L.11
Ljoin_l32:
	jmp Ljoin_l44
Ljoin_l44:
	movl %eax,%ecx
	movl 28(%esp),%ebx
	jmp L.6
.section .pcmap_data
Lstackdata_l48:
.long 0
.section .pcmap
.long Ljoin_l36
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x8000000b
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
.long 0
.long 0
.long 0xffffffe0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0x80000000
.section .pcmap
.long Ljoin_l31
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0xffffffe0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0x80000000
.section .pcmap
.long Ljoin_l26
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0xffffffe0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0x80000000
.section .pcmap
.long Ljoin_l17
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0xffffffe0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0x80000000
.section .pcmap
.long Ljoin_l14
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0xffffffe0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0x80000000
.section .pcmap
.long Ljoin_l11
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l48
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0xffffffe0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0x80000000
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
