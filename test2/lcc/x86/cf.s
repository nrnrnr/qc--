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
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %ecx,40(%esp)
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
initialize_continuations_l3:
	movl $1,%ecx
	movl %edx,44(%esp)
	movl 40(%esp),%edx
	cmpl %ecx,%edx
	jg join_l36
join_l37:
	leal f_4,%edx
	flds (%edx)
	movl $-52,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	jmp L.3
join_l36:
	jmp L.2
L.2:
	movl $4,%ecx
	movl 44(%esp),%edx
	addl %ecx,%edx
	movl $-72,%ecx
	movl %ebx,48(%esp)
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call atof
join_l35:
	movl $-60,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	leal f_5,%edx
	flds (%edx)
	movl $-60,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	fldl (%ecx)
	fdivp
	movl $-52,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	fstpl (%edx)
	movl 48(%esp),%ebx
	jmp L.3
L.3:
	movl $0,%ecx
	jmp L.6
L.6:
	movl $1,%edx
	movl %ebx,48(%esp)
	movl %ecx,%ebx
	addl %edx,%ebx
	leal f_4,%edx
	movl %ebp,52(%esp)
	leal f,%ebp
	movl %esi,56(%esp)
	movl $2,%esi
	movl %ecx,60(%esp)
	movl %esi,%ecx
	movl 60(%esp),%esi
	shll %cl, %esi
	addl %ebp,%esi
	movl (%edx),%ebp
	movl %ebp,(%esi)
L.7:
	movl $127,%ebp
	cmpl %ebp,%ebx
	jle join_l31
join_l32:
	movl $0,%ebp
	jmp L.11
L.11:
	call getchar
join_l30:
	movl %eax,%ecx
	movl %ecx,%edx
	movl $-1,%esi
	cmpl %esi,%ecx
	jne join_l26
join_l27:
	leal i_14,%ecx
	movl $-72,%esi
	leal 72(%esp), %ebx
	addl %esi,%ebx
	movl %ecx,(%ebx)
	call printf
join_l25:
	movl $0,%ecx
	jmp L.15
L.15:
	leal f,%edx
	movl $2,%ebx
	movl %ecx,%esi
	movl %ecx,64(%esp)
	movl %ebx,%ecx
	shll %cl, %esi
	addl %edx,%esi
	flds (%esi)
	movl $-44,%esi
	leal 72(%esp), %edx
	addl %esi,%edx
	fstpl (%edx)
	leal f_4,%edx
	flds (%edx)
	movl $-44,%edx
	leal 72(%esp), %esi
	addl %edx,%esi
	fldl (%esi)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz join_l21
join_l22:
	movl $-36,%esi
	leal 72(%esp), %edx
	addl %esi,%edx
	movl %ebp,(%edx)
	movl $-36,%edx
	leal 72(%esp), %esi
	addl %edx,%esi
	fildl (%esi)
	movl $-44,%esi
	leal 72(%esp), %edx
	addl %esi,%edx
	fldl (%edx)
	fdivp
	movl $-52,%edx
	leal 72(%esp), %esi
	addl %edx,%esi
	fldl (%esi)
	fcompp
	fstsw %ax
	sahf
	ja join_l19
join_l20:
	movl $32,%esi
	movl 64(%esp),%edx
	cmpl %esi,%edx
	jg join_l17
join_l18:
	leal i_23,%esi
	movl $-72,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	movl %esi,(%ecx)
	movl $-68,%ecx
	leal 72(%esp), %esi
	addl %ecx,%esi
	movl %edx,(%esi)
	movl %edx,64(%esp)
	call printf
join_l16:
	jmp L.22
join_l17:
	jmp L.21
L.21:
	leal i_24,%esi
	movl $-72,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %esi,(%ebx)
	movl $-68,%ebx
	leal 72(%esp), %esi
	addl %ebx,%esi
	movl %edx,(%esi)
	movl %edx,64(%esp)
	call printf
join_l13:
	jmp L.22
L.22:
	movl $-36,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %ebp,(%edx)
	movl $-36,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	fildl (%ecx)
	leal f,%ecx
	movl $2,%edx
	movl 64(%esp),%esi
	movl %esi,%ebx
	movl %ecx,68(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	movl 68(%esp),%ecx
	addl %ecx,%ebx
	flds (%ebx)
	leal f_5,%ebx
	flds (%ebx)
	fmulp
	fdivp
	movl $-68,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	fstpl (%ecx)
	leal i_25,%ecx
	movl $-72,%ebx
	leal 72(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call printf
join_l10:
	movl %esi,64(%esp)
	jmp L.19
join_l19:
	jmp L.19
join_l21:
	jmp L.19
L.19:
L.16:
	movl $1,%ecx
	movl 64(%esp),%esi
	addl %ecx,%esi
	movl $127,%ecx
	cmpl %ecx,%esi
	jle join_l6
join_l7:
	movl $0,%ecx
	movl %ecx,%eax
	leal 72(%esp), %ecx
	movl $0,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	leal 72(%esp), %esp
	ret
join_l6:
	jmp join_l41
join_l41:
	movl %esi,%ecx
	jmp L.15
join_l26:
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
join_l31:
	jmp join_l42
join_l42:
	movl %ebx,%ecx
	movl 56(%esp),%esi
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	jmp L.6
.section .pcmap_data
stackdata_l46:
.long 0
.section .pcmap
.long join_l35
.long frame_l47
.section .pcmap_data
frame_l47:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l46
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
.long 0xffffffcc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0xffffffd4
.section .pcmap
.long join_l30
.long frame_l48
.section .pcmap_data
frame_l48:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l46
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
.long 0xffffffcc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0xffffffd4
.section .pcmap
.long join_l25
.long frame_l49
.section .pcmap_data
frame_l49:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l46
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
.long 0xffffffcc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0xffffffd4
.section .pcmap
.long join_l16
.long frame_l50
.section .pcmap_data
frame_l50:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l46
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
.long 0xffffffcc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0xffffffd4
.section .pcmap
.long join_l13
.long frame_l51
.section .pcmap_data
frame_l51:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l46
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
.long 0xffffffcc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0xffffffd4
.section .pcmap
.long join_l10
.long frame_l52
.section .pcmap_data
frame_l52:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l46
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
.long 0x4000000a
.long 0x40000009
.long 0
.long 0xffffffcc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0xffffffd4
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
