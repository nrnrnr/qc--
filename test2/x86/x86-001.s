.data
/* memory for global registers */
.align 8
Cmm_private_global_area:
.text
.text
p:
nop
movl %eax,%ebx
movl (%eax),%ecx
movl %ecx,%ebx
movl %eax,(%ebx)
movl (%eax),%ecx
movl %ecx,(%ebx)
movsbl (%eax),%ecx
movl %ecx,%ebx
movswl (%eax),%ecx
movl %ecx,%ebx
movzbl (%eax),%ecx
movl %ecx,%ebx
movzwl (%eax),%ecx
movl %ecx,%ebx
movw %ax,(%ebx)
movb %al,(%ebx)
movl %eax,%ecx
addl %eax,%ecx
movl %ecx,%ebx
movl %eax,%ecx
subl %eax,%ecx
movl %ecx,%ebx
movl %eax,%ecx
andl %eax,%ecx
movl %ecx,%ebx
movl %eax,%ecx
orl %eax,%ecx
movl %ecx,%ebx
movl %eax,%ecx
xorl %eax,%ecx
movl %ecx,%ebx
movl (%eax),%ecx
addl %eax,%ecx
movl %ecx,%ebx
movl (%eax),%ecx
subl %eax,%ecx
movl %ecx,%ebx
movl (%eax),%ecx
andl %eax,%ecx
movl %ecx,%ebx
movl (%eax),%ecx
orl %eax,%ecx
movl %ecx,%ebx
movl (%eax),%ecx
xorl %eax,%ecx
movl %ecx,%ebx
movl (%eax),%edx
movl %eax,%ecx
addl %edx,%ecx
movl %ecx,%ebx
movl (%eax),%edx
movl %eax,%ecx
subl %edx,%ecx
movl %ecx,%ebx
movl (%eax),%edx
movl %eax,%ecx
andl %edx,%ecx
movl %ecx,%ebx
movl (%eax),%edx
movl %eax,%ecx
orl %edx,%ecx
movl %ecx,%ebx
movl (%eax),%edx
movl %eax,%ecx
xorl %edx,%ecx
movl %ecx,%ebx
movl (%eax),%edx
movl %eax,%ecx
addl %edx,%ecx
movl %ecx,(%ebx)
movl (%eax),%ecx
movl %eax,%edx
subl %ecx,%edx
movl %edx,(%ebx)
movl (%eax),%ecx
movl %eax,%edx
andl %ecx,%edx
movl %edx,(%ebx)
movl (%eax),%ecx
movl %eax,%edx
orl %ecx,%edx
movl %edx,(%ebx)
movl (%eax),%ecx
movl %eax,%edx
xorl %ecx,%edx
movl %edx,(%ebx)
cmpl %eax,%eax
jl p_l12
jmp p_l13
jmp p_l12
p_l13:
jmp p_l11
p_l12:
jmp L
p_l11:
cmpl %eax,%eax
jle p_l9
jmp p_l10
L:
movl $99,%ecx
movl $32,%eax
addl %eax,%esp
movl %ecx,(%esp)
ret
jmp p_l9
p_l10:
jmp p_l8
nop
nop
p_l9:
jmp L
p_l8:
cmpl %eax,%eax
jbe p_l6
jmp p_l7
jmp p_l6
p_l7:
jmp p_l5
p_l6:
jmp L
p_l5:
jmp L
