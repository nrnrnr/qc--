.data
/* memory for global registers */
.align 8
Cmm_private_global_area:
.text
.text
p:
nop
movl $1,%eax
movl $2,%ecx
movl $3,%edx
movl %ecx,(%eax)
movl %ecx,%edx
movb %cl,(%eax)
movsbl (%eax),%ebx
movl %ebx,(%eax)
movzbl (%ecx),%ebx
movl %ebx,(%ecx)
addl %ecx,%eax
addl %edx,%eax
movl $32,%ecx
movl %esp,%edx
addl %ecx,%edx
movl %eax,(%edx)
ret
nop
nop
