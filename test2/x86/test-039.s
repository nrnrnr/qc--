.globl sp1
.globl sp2
.globl sp3
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
sp1:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l3:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l9
join_l10:
	movl $1,%ecx
	movl %edx,4(%esp)
	movl %eax,%edx
	subl %ecx,%edx
	movl %eax,8(%esp)
	movl %edx,%eax
	call sp1
join_l7:
	movl $-20,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 8(%esp),%edx
	addl %edx,%eax
	imull %edx,%ecx
	movl $4,%edx
	movl %ebx,12(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $0,%ecx
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl 4(%esp),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 20(%esp), %esp
	ret
join_l9:
	movl $1,%eax
	movl $1,%ecx
	movl %edx,4(%esp)
	movl $4,%edx
	movl %edi,16(%esp)
	leal 20(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $0,%ecx
	leal 20(%esp), %edi
	addl %ecx,%edi
	movl 4(%esp),%ecx
	movl %ecx,(%edi)
	movl 16(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
stackdata_l15:
.long 0
.section .pcmap
.long join_l7
.long frame_l16
.section .pcmap_data
frame_l16:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff0
.long stackdata_l15
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.section .text
sp2:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl (%edx),%ecx
initialize_continuations_l19:
	movl $1,%edx
	movl %ecx,(%esp)
	movl $-4,%ecx
	movl %ebx,4(%esp)
	leal 12(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $1,%edx
	movl $0,%ebx
	leal 12(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 4(%esp),%ebx
	movl $-8,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	jmp sp2_help
.section .pcmap_data
stackdata_l28:
.long 0
.section .text
sp2_help:
	leal -20(%esp), %esp
	movl $4,%edx
	leal 20(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 20(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l31:
	movl %edx,4(%esp)
	movl $1,%edx
	movl %ecx,8(%esp)
	movl (%esp),%ecx
	cmpl %edx,%ecx
	je join_l34
join_l35:
	movl $1,%edx
	movl %eax,12(%esp)
	movl %ecx,%eax
	subl %edx,%eax
	movl 4(%esp),%edx
	addl %ecx,%edx
	movl %ecx,(%esp)
	movl $4,%ecx
	movl %ebx,16(%esp)
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl 8(%esp),%edx
	movl (%esp),%ebx
	imull %ebx,%edx
	movl $8,%ebx
	leal 20(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	movl $0,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	jmp sp2_help
join_l34:
	movl %eax,12(%esp)
	movl 4(%esp),%eax
	movl $12,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $8,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
.section .pcmap_data
stackdata_l42:
.long 0
.section .text
sp3:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl (%edx),%ecx
initialize_continuations_l45:
	movl $1,%edx
	movl %eax,(%esp)
	movl $1,%eax
	jmp loop
loop:
	movl %ecx,4(%esp)
	movl $1,%ecx
	movl %ebx,8(%esp)
	movl (%esp),%ebx
	cmpl %ecx,%ebx
	je join_l47
join_l48:
	addl %ebx,%edx
	imull %ebx,%eax
	movl $1,%ecx
	subl %ecx,%ebx
	jmp join_l52
join_l52:
	movl %ebx,(%esp)
	movl 8(%esp),%ebx
	movl 4(%esp),%ecx
	jmp loop
join_l47:
	movl %eax,12(%esp)
	movl %edx,%eax
	movl $4,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
stackdata_l56:
.long 0
.section .text
