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
.long 6
Lgbl_23:
.long 1
.byte 10
.byte 0
.section .text
tiger_main:
	leal -76(%esp), %esp
	movl $4,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l11:
proc_body_start_l10:
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $4,%edx
	movl $-12,%ecx
	movl %ebx,32(%esp)
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $8,%ebx
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_21
Lloop_start_21:
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $25,%ebx
	cmpl %ebx,%eax
	jle if_true_l28
if_false_l29:
	movl $0,%eax
	jmp end_if_l30
if_true_l28:
	movl $1,%eax
	jmp end_if_l30
end_if_l30:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l23
join_l24:
	jmp Lloop_end_20
Lloop_end_20:
	leal Lgbl_23,%eax
	movl $-76,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	call tig_print
join_l16:
	leal 76(%esp), %edx
	movl $0,%ecx
	leal 76(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 76(%esp), %esp
	ret
join_l23:
	jmp Lloop_body_22
Lloop_body_22:
	movl $1,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $4,%eax
	movl $-12,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $64,%ecx
	movl $4,%edx
	movl $-12,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	call tig_chr
join_l22:
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l19:
	movl $1,%eax
	movl $8,%ecx
	movl $-12,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	jmp join_l31
join_l31:
	movl 44(%esp),%edi
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	jmp Lloop_start_21
killer_C8:
	movl $0,%eax
	leal 76(%esp), %ecx
	movl $0,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
stackdata_l35:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l22
.long frame_l36
.section .pcmap_data
frame_l36:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long stackdata_l35
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l19
.long frame_l37
.section .pcmap_data
frame_l37:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long stackdata_l35
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l16
.long frame_l38
.section .pcmap_data
frame_l38:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long stackdata_l35
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 3
.long 1
.long 0
.long 1
