.globl tiger_main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
.align 32
gc_data:
.long 0
.long 11
Lgbl_33:
.long 6
.byte 32
.byte 115
.byte 116
.byte 114
.byte 50
.byte 32
.byte 0
.long 11
Lgbl_35:
.long 6
.byte 32
.byte 115
.byte 116
.byte 114
.byte 49
.byte 32
.byte 0
.long 6
Lgbl_36:
.long 1
.byte 10
.byte 0
.section .text
a_a_27:
	leal -76(%esp), %esp
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,32(%esp)
	leal 76(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 76(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l13:
	movl %ecx,36(%esp)
	movl $-12,%ecx
	movl %edx,40(%esp)
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,44(%esp)
	leal 76(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-76,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	movl %ebx,48(%esp)
	call tig_print
join_l21:
	leal -32(%esp), %esp
	movl $-12,%edi
	leal 108(%esp), %esi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%edi),%eax
	movl $4,%edi
	movl $-12,%esi
	leal 108(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl $-108,%edi
	leal 108(%esp), %esi
	addl %edi,%esi
	movl (%ebx),%edi
	movl %edi,(%esi)
	call fb_26
join_l18:
	leal 28(%esp), %esp
	movl $8,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 84(%esp), %esp
	ret
killer_C11:
	movl $0,%eax
	movl $8,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
stackdata_l26:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l21
.long frame_l27
.section .pcmap_data
frame_l27:
.long 0xffffffb4
.long 0x8000000c
.long 0xffffffe0
.long stackdata_l26
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long a_a_27_gc_data
.section .pcmap
.long join_l18
.long frame_l28
.section .pcmap_data
frame_l28:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffe0
.long stackdata_l26
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long a_a_27_gc_data
.section .text
.section .data
a_a_27_gc_data:
.long 3
.long 1
.long 0
.long 1
.long 4
.long 1
.long 0
.long 1
.long 0
.section .text
fa_25:
	leal -44(%esp), %esp
	movl $4,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 44(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 44(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l37:
	movl %edx,4(%esp)
	movl $-12,%edx
	movl %ecx,8(%esp)
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,12(%esp)
	leal 44(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $5,%ecx
	cmpl %ecx,%eax
	jl if_true_l48
if_false_l49:
	movl $0,%eax
	jmp end_if_l50
if_true_l48:
	movl $1,%eax
	jmp end_if_l50
end_if_l50:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l43
join_l44:
	jmp LifFalse_30
LifFalse_30:
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
	jmp LifEnd_31
join_l43:
	jmp LifTrue_29
LifTrue_29:
	leal -32(%esp), %esp
	movl $-12,%ecx
	leal 76(%esp), %eax
	addl %ecx,%eax
	movl $1,%ecx
	movl $4,%edx
	movl %ebx,48(%esp)
	movl $-12,%ebx
	movl %ebp,52(%esp)
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl $8,%ecx
	movl $-12,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	addl %ecx,%ebx
	movl $-72,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	movl $-76,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	call a_a_27
join_l42:
	leal 24(%esp), %esp
	jmp LifEnd_31
LifEnd_31:
	movl $0,%eax
	movl $8,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	leal 52(%esp), %esp
	ret
.section .pcmap_data
stackdata_l52:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l42
.long frame_l53
.section .pcmap_data
frame_l53:
.long 0xffffffbc
.long 0x8000000c
.long 0xffffffe0
.long stackdata_l52
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long fa_25_gc_data
.section .text
.section .data
fa_25_gc_data:
.long 3
.long 1
.long 0
.long 1
.long 4
.long 1
.long 0
.long 1
.long 0
.section .text
fb_26:
	leal -40(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l62:
	movl %eax,(%esp)
	movl $-8,%eax
	movl %ecx,4(%esp)
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,8(%esp)
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal -32(%esp), %esp
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-72,%eax
	leal 72(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $-8,%eax
	leal 72(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	leal Lgbl_33,%edx
	movl $-68,%ecx
	movl %ebx,44(%esp)
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	call fa_25
join_l67:
	leal 24(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	leal 44(%esp), %esp
	ret
.section .pcmap_data
stackdata_l72:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l67
.long frame_l73
.section .pcmap_data
frame_l73:
.long 0xffffffc0
.long 0x80000008
.long 0xffffffe0
.long stackdata_l72
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
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
.long fb_26_gc_data
.section .text
.section .data
fb_26_gc_data:
.long 2
.long 1
.long 0
.long 3
.long 1
.long 0
.long 0
.section .text
tiger_main:
	leal -68(%esp), %esp
	movl $4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
initialize_continuations_l82:
	movl $-4,%edx
	leal 68(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -36(%esp), %esp
	movl $-4,%eax
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $4,%ecx
	movl $-104,%edx
	movl %ebx,68(%esp)
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal Lgbl_35,%ecx
	movl $-100,%ebx
	leal 104(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call fa_25
join_l93:
	leal 28(%esp), %esp
	leal -32(%esp), %esp
	movl $-4,%eax
	leal 100(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $1,%ecx
	movl $-100,%edx
	leal 100(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call fb_26
join_l90:
	leal 28(%esp), %esp
	leal Lgbl_36,%eax
	movl $-68,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	call tig_print
join_l87:
	leal 68(%esp), %edx
	movl $0,%ecx
	leal 68(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 68(%esp), %esp
	ret
killer_C80:
	movl $0,%eax
	leal 68(%esp), %ecx
	movl $0,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
stackdata_l99:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l93
.long frame_l100
.section .pcmap_data
frame_l100:
.long 0xffffffa0
.long 0x80000004
.long 0x80000000
.long stackdata_l99
.long 0x80000008
.long 0x80000002
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l90
.long frame_l101
.section .pcmap_data
frame_l101:
.long 0xffffffa0
.long 0x80000004
.long 0x80000000
.long stackdata_l99
.long 0x80000008
.long 0x80000002
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l87
.long frame_l102
.section .pcmap_data
frame_l102:
.long 0xffffffbc
.long 0x80000004
.long 0x80000000
.long stackdata_l99
.long 0x80000008
.long 0x80000002
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 1
.long 1
.long 2
.long 1
.long 0
