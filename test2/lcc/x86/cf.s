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
	leal -52(%esp), %esp
	movl $4,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%edx
	cmpl %edx,%eax
	jg Ljoin_l37
Ljoin_l38:
	leal f_4,%ecx
	movl $-36,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	jmp L.3
Ljoin_l37:
	jmp L.2
L.2:
	movl $4,%eax
	addl %eax,%ecx
	movl $-52,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call atof
Ljoin_l36:
	movl $-40,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	fstps (%ecx)
	leal f_5,%ecx
	flds (%ecx)
	movl $-40,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	flds (%eax)
	fdivp
	movl $-36,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	fstps (%ecx)
	jmp L.3
L.3:
	movl $0,%eax
	jmp L.6
L.6:
	movl $1,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	leal f_4,%edx
	movl %ebx,28(%esp)
	leal f,%ebx
	movl %ebp,32(%esp)
	movl $2,%ebp
	movl %ecx,36(%esp)
	movl %ebp,%ecx
	shll %cl, %eax
	addl %ebx,%eax
	movl (%edx),%ebx
	movl %ebx,(%eax)
L.7:
	movl $127,%eax
	movl 36(%esp),%ebx
	cmpl %eax,%ebx
	jle Ljoin_l32
Ljoin_l33:
	movl $0,%eax
	jmp L.11
L.11:
	movl %eax,40(%esp)
	call getchar
Ljoin_l31:
	movl %eax,%ecx
	movl $-1,%edx
	cmpl %edx,%eax
	jne Ljoin_l27
Ljoin_l28:
	leal i_14,%eax
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l26:
	movl $0,%eax
	jmp L.15
L.15:
	leal f,%ecx
	movl $2,%edx
	movl %eax,%ebx
	movl %ecx,44(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	movl 44(%esp),%ecx
	addl %ecx,%ebx
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	leal f_4,%ecx
	flds (%ecx)
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	flds (%edx)
	fcompp
	movl %eax,36(%esp)
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz Ljoin_l22
Ljoin_l23:
	movl $-28,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
	movl $-28,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	fildl (%ecx)
	movl $-32,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	flds (%edx)
	fdivp
	movl $-36,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	flds (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l20
Ljoin_l21:
	movl $32,%eax
	movl 36(%esp),%ecx
	cmpl %eax,%ecx
	jg Ljoin_l18
Ljoin_l19:
	leal i_23,%ebx
	movl $-52,%ebp
	leal 52(%esp), %eax
	addl %ebp,%eax
	movl %ebx,(%eax)
	movl $-48,%eax
	leal 52(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	call printf
Ljoin_l17:
	jmp L.22
Ljoin_l18:
	jmp L.21
L.21:
	leal i_24,%eax
	movl $-52,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-48,%eax
	leal 52(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	call printf
Ljoin_l14:
	jmp L.22
L.22:
	movl $-28,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
	movl $-28,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	leal f,%edx
	movl $2,%ecx
	movl 36(%esp),%ebx
	movl %ebx,%ebp
	shll %cl, %ebp
	addl %edx,%ebp
	flds (%ebp)
	leal f_5,%ebp
	flds (%ebp)
	fmulp
	fdivp
	movl $-48,%ebp
	leal 52(%esp), %edx
	addl %ebp,%edx
	fstpl (%edx)
	leal i_25,%edx
	movl $-52,%ebp
	leal 52(%esp), %ecx
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call printf
Ljoin_l11:
	jmp L.19
Ljoin_l20:
	jmp L.19
Ljoin_l22:
	jmp L.19
L.19:
L.16:
	movl $1,%eax
	movl 36(%esp),%ebx
	addl %eax,%ebx
	movl $127,%eax
	cmpl %eax,%ebx
	jle Ljoin_l7
Ljoin_l8:
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	leal 52(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	leal 52(%esp), %esp
	ret
Ljoin_l7:
	jmp Ljoin_l42
Ljoin_l42:
	movl %ebx,%eax
	jmp L.15
Ljoin_l27:
	jmp L.10
L.10:
	leal f,%ebx
	movl $2,%edx
	movl %ecx,48(%esp)
	movl %edx,%ecx
	movl 48(%esp),%edx
	shll %cl, %edx
	addl %ebx,%edx
	leal f_13,%ebx
	flds (%ebx)
	flds (%edx)
	faddp
	fstps (%edx)
	movl $1,%edx
	movl 40(%esp),%ebx
	addl %edx,%ebx
	movl %ebx,%eax
	jmp L.11
Ljoin_l32:
	jmp Ljoin_l43
Ljoin_l43:
	movl %ebx,%eax
	movl 32(%esp),%ebp
	movl 28(%esp),%ebx
	jmp L.6
.section .pcmap_data
Lstackdata_l47:
.long 0
.section .pcmap
.long Ljoin_l36
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
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
.long 0xffffffdc
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0x80000000
.section .pcmap
.long Ljoin_l31
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0xffffffdc
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0x80000000
.section .pcmap
.long Ljoin_l26
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0xffffffdc
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0x80000000
.section .pcmap
.long Ljoin_l17
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0xffffffdc
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0x80000000
.section .pcmap
.long Ljoin_l14
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0xffffffdc
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0x80000000
.section .pcmap
.long Ljoin_l11
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x40000007
.long 0xfffffff4
.long 0
.long 0xffffffdc
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0xffffffe0
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
