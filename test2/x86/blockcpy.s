.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
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
	leal -28(%esp), %esp
	movl $4,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l5:
proc_body_start_l4:
	movl %eax,8(%esp)
	movl $0,%eax
	jmp loop
loop:
	movl %ecx,12(%esp)
	movl $-24,%ecx
	movl %edx,16(%esp)
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %ebx,20(%esp)
	movl 8(%esp),%ecx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	leal msg,%edx
	movl $-28,%ebx
	movl %ecx,8(%esp)
	leal 28(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl %eax,24(%esp)
	call printf
join_l14:
	movl $1,%eax
	movl 24(%esp),%ecx
	addl %eax,%ecx
	movl $4,%eax
	movl 8(%esp),%edx
	addl %eax,%edx
	movl 12(%esp),%eax
	cmpl %eax,%ecx
	jb join_l10
join_l11:
	leal nl,%eax
	movl $-28,%ebx
	leal 28(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	call printf
join_l9:
	movl $4,%eax
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
join_l10:
	jmp join_l18
join_l18:
	movl %edx,8(%esp)
	movl %eax,12(%esp)
	movl %ecx,%eax
	movl 12(%esp),%ecx
	movl 20(%esp),%ebx
	movl 16(%esp),%edx
	jmp loop
.section .pcmap_data
stackdata_l21:
.long 0
.section .pcmap
.long join_l14
.long frame_l22
.section .pcmap_data
frame_l22:
.long 0xffffffe4
.long 0x80000008
.long 0xfffffff4
.long stackdata_l21
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffffc
.section .pcmap
.long join_l9
.long frame_l23
.section .pcmap_data
frame_l23:
.long 0xffffffe4
.long 0x80000008
.long 0xfffffff4
.long stackdata_l21
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
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
.section .text
main:
	leal -12(%esp), %esp
initialize_continuations_l26:
proc_body_start_l25:
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%ecx
	movl $-16,%edx
	movl %ebx,4(%esp)
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call print
join_l42:
	leal w,%eax
	leal y,%ecx
	movl %esi,4(%esp)
	movl %eax,%esi
	movl %edi,8(%esp)
	movl %ecx,%edi
	movl $16,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal y,%eax
	movl $4,%ecx
	movl $-16,%esi
	leal 16(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	call print
join_l39:
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%ecx
	movl $-16,%edx
	leal 16(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	call print
join_l36:
	leal x,%esi
	leal z,%edi
	movl $32,%ecx
	rep movsb
	leal -4(%esp), %esp
	leal z,%eax
	movl $8,%ecx
	movl $-16,%esi
	leal 16(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	call print
join_l33:
	leal -4(%esp), %esp
	leal w,%eax
	movl $20,%ecx
	movl $-16,%edx
	leal 16(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	call print
join_l30:
	leal 12(%esp), %eax
	movl $0,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl (%esp),%ebx
	movl 4(%esp),%esi
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
stackdata_l48:
.long 0
.section .pcmap
.long join_l42
.long frame_l49
.section .pcmap_data
frame_l49:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long stackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.section .pcmap
.long join_l39
.long frame_l50
.section .pcmap_data
frame_l50:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long stackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffffc
.section .pcmap
.long join_l36
.long frame_l51
.section .pcmap_data
frame_l51:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long stackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffffc
.section .pcmap
.long join_l33
.long frame_l52
.section .pcmap_data
frame_l52:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long stackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffffc
.section .pcmap
.long join_l30
.long frame_l53
.section .pcmap_data
frame_l53:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long stackdata_l48
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffffc
.section .text
