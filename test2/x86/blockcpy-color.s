.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
w:
.long 5
.long 6
.long 7
.long 8
x:
.long 1
.long 2
.long 3
.long 4
y:
.long 0
.long 0
.long 0
.long 0
z:
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
msg:
.byte 37
.byte 100
.byte 32
.byte 0
nl:
.byte 10
.byte 0
.section .text
print:
	leal -24(%esp), %esp
	movl %eax,8(%esp)
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 24(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl %ebp,16(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $0,%ebp
loop:
	leal 24(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal msg,%eax
	leal 24(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l12:
	movl $1,%eax
	addl %eax,%ebp
	movl $4,%ecx
	movl 8(%esp),%eax
	addl %ecx,%eax
	movl %eax,8(%esp)
.Lbranch_target_l16:
	movl 12(%esp),%eax
	cmpl %eax,%ebp
	jb loop
.Lbranch_target_l9:
	leal nl,%ecx
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l8:
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl 16(%esp),%ebp
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l19:
.long 0
.section .pcmap
.long .Lcall_successor_l12
.long .Lframe_l20
.section .pcmap_data
.Lframe_l20:
.long 0x80000008
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l19
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0xfffffff0
.long 0xfffffff4
.long 0x40000009
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l21
.section .pcmap_data
.Lframe_l21:
.long 0x80000008
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l19
.long 1
.long 3
.long 0
.long 1
.long 9
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l23:
.Lproc_body_start_l22:
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%edx
	leal 16(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call print
.Lcall_successor_l39:
	leal w,%esi
	leal y,%edi
	movl $16,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%edx
	leal 16(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call print
.Lcall_successor_l36:
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%edx
	leal 16(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call print
.Lcall_successor_l33:
	leal x,%esi
	leal z,%edi
	movl $32,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%edx
	leal 16(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call print
.Lcall_successor_l30:
	leal -4(%esp), %esp
	leal w,%eax
	movl $20,%edx
	leal 16(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call print
.Lcall_successor_l27:
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l45:
.long 0
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l46
.section .pcmap_data
.Lframe_l46:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l45
.long 2
.long 0
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l36
.long .Lframe_l47
.section .pcmap_data
.Lframe_l47:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l45
.long 2
.long 0
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l33
.long .Lframe_l48
.section .pcmap_data
.Lframe_l48:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l45
.long 2
.long 0
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l30
.long .Lframe_l49
.section .pcmap_data
.Lframe_l49:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l45
.long 2
.long 0
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.section .pcmap
.long .Lcall_successor_l27
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l45
.long 2
.long 0
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.section .text
