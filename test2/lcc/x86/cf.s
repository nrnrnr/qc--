.globl main
.globl f
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -60(%esp), %esp
	movl $4,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %ecx,28(%esp)
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l4:
proc_body_start_l3:
	movl $1,%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	cmpl %ecx,%edx
	jg join_l37
join_l38:
	leal f_4,%edx
	movl $-44,%ecx
	movl %ebx,36(%esp)
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	jmp L.3
join_l37:
	jmp L.2
L.2:
	movl $4,%ecx
	movl 32(%esp),%edx
	addl %ecx,%edx
	movl $-60,%ecx
	movl %ebx,36(%esp)
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call atof
join_l36:
	movl $-48,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	fstps (%edx)
	leal f_5,%edx
	flds (%edx)
	movl $-48,%edx
	leal 60(%esp), %ecx
	addl %edx,%ecx
	flds (%ecx)
	fdivp
	movl $-44,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	fstps (%edx)
	jmp L.3
L.3:
	movl $0,%ecx
	jmp L.6
L.6:
	movl $1,%ebx
	movl %ecx,%edx
	addl %ebx,%edx
	leal f_4,%ebx
	movl %ebp,40(%esp)
	leal f,%ebp
	movl %esi,44(%esp)
	movl $2,%esi
	movl %ecx,48(%esp)
	movl %esi,%ecx
	movl 48(%esp),%esi
	shll %cl, %esi
	addl %ebp,%esi
	movl (%ebx),%ebp
	movl %ebp,(%esi)
L.7:
	movl $127,%ebp
	cmpl %ebp,%edx
	jle join_l32
join_l33:
	movl $0,%ebp
	jmp L.11
L.11:
	call getchar
join_l31:
	movl %eax,%ecx
	movl %ecx,%edx
	movl $-1,%esi
	cmpl %esi,%ecx
	jne join_l27
join_l28:
	leal i_14,%ecx
	movl $-60,%esi
	leal 60(%esp), %ebx
	addl %esi,%ebx
	movl %ecx,(%ebx)
	call printf
join_l26:
	movl $0,%ecx
	jmp L.15
L.15:
	leal f,%edx
	movl $2,%ebx
	movl %ecx,%esi
	movl %ecx,52(%esp)
	movl %ebx,%ecx
	shll %cl, %esi
	addl %edx,%esi
	movl $-40,%edx
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl (%esi),%edx
	movl %edx,(%ecx)
	leal f_4,%ecx
	flds (%ecx)
	movl $-40,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	flds (%edx)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz join_l22
join_l23:
	movl $-36,%edx
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl %ebp,(%ecx)
	movl $-36,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-40,%edx
	leal 60(%esp), %ecx
	addl %edx,%ecx
	flds (%ecx)
	fdivp
	movl $-44,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	flds (%edx)
	fcompp
	fstsw %ax
	sahf
	ja join_l20
join_l21:
	movl $32,%edx
	movl 52(%esp),%ecx
	cmpl %edx,%ecx
	jg join_l18
join_l19:
	leal i_23,%ebx
	movl $-60,%esi
	leal 60(%esp), %edx
	addl %esi,%edx
	movl %ebx,(%edx)
	movl $-56,%edx
	leal 60(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %ecx,52(%esp)
	call printf
join_l17:
	jmp L.22
join_l18:
	jmp L.21
L.21:
	leal i_24,%edx
	movl $-60,%esi
	leal 60(%esp), %ebx
	addl %esi,%ebx
	movl %edx,(%ebx)
	movl $-56,%edx
	leal 60(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %ecx,52(%esp)
	call printf
join_l14:
	jmp L.22
L.22:
	movl $-36,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %ebp,(%edx)
	movl $-36,%edx
	leal 60(%esp), %ecx
	addl %edx,%ecx
	fildl (%ecx)
	leal f,%ecx
	movl $2,%edx
	movl 52(%esp),%ebx
	movl %ebx,%esi
	movl %ecx,56(%esp)
	movl %edx,%ecx
	shll %cl, %esi
	movl 56(%esp),%ecx
	addl %ecx,%esi
	flds (%esi)
	leal f_5,%esi
	flds (%esi)
	fmulp
	fdivp
	movl $-56,%esi
	leal 60(%esp), %ecx
	addl %esi,%ecx
	fstpl (%ecx)
	leal i_25,%ecx
	movl $-60,%esi
	leal 60(%esp), %edx
	addl %esi,%edx
	movl %ecx,(%edx)
	call printf
join_l11:
	movl %ebx,52(%esp)
	jmp L.19
join_l20:
	jmp L.19
join_l22:
	jmp L.19
L.19:
L.16:
	movl $1,%ecx
	movl 52(%esp),%ebx
	addl %ecx,%ebx
	movl $127,%ecx
	cmpl %ecx,%ebx
	jle join_l7
join_l8:
	movl $0,%ecx
	movl %ecx,%eax
	leal 60(%esp), %ecx
	movl $0,%edx
	leal 60(%esp), %esi
	addl %edx,%esi
	movl (%ecx),%edx
	movl %edx,(%esi)
	movl 40(%esp),%ebp
	movl 36(%esp),%ebx
	movl 44(%esp),%esi
	leal 60(%esp), %esp
	ret
join_l7:
	jmp join_l42
join_l42:
	movl %ebx,%ecx
	jmp L.15
join_l27:
	jmp L.10
L.10:
	leal f,%esi
	movl $2,%ecx
	shll %cl, %edx
	addl %esi,%edx
	leal f_13,%esi
	flds (%esi)
	flds (%edx)
	faddp
	fstps (%edx)
	movl $1,%edx
	addl %edx,%ebp
	jmp L.11
join_l32:
	jmp join_l43
join_l43:
	movl %edx,%ecx
	movl 44(%esp),%esi
	movl 40(%esp),%ebp
	jmp L.6
.section .pcmap_data
stackdata_l47:
.long 0
.section .pcmap
.long join_l36
.long frame_l48
.section .pcmap_data
frame_l48:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long stackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
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
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xffffffd8
.section .pcmap
.long join_l31
.long frame_l49
.section .pcmap_data
frame_l49:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long stackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xffffffd8
.section .pcmap
.long join_l26
.long frame_l50
.section .pcmap_data
frame_l50:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long stackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xffffffd8
.section .pcmap
.long join_l17
.long frame_l51
.section .pcmap_data
frame_l51:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long stackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff8
.long 0x40000009
.long 0
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xffffffd8
.section .pcmap
.long join_l14
.long frame_l52
.section .pcmap_data
frame_l52:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long stackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff8
.long 0x40000009
.long 0
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xffffffd8
.section .pcmap
.long join_l11
.long frame_l53
.section .pcmap_data
frame_l53:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long stackdata_l47
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x40000007
.long 0x40000009
.long 0
.long 0xffffffd4
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xffffffd8
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
