.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.text
p:
leal -32(%esp), %esp
nop
nop
leal 32(%esp), %eax
movl (%eax),%eax
movl %eax,28(%esp)
initialize_continuations_l3:
movl $1,%eax
movl %eax,24(%esp)
movl $2,%eax
movl %eax,16(%esp)
movl $3,%eax
movl %eax,4(%esp)
movl 4(%esp),%eax
movl %eax,(%esp)
movl 16(%esp),%eax
movl 24(%esp),%ecx
movl %eax,(%ecx)
movl 16(%esp),%eax
movl %eax,(%esp)
movl 16(%esp),%eax
movl 24(%esp),%ecx
movb %al,(%ecx)
movl 24(%esp),%eax
movsbl (%eax),%eax
movl %eax,8(%esp)
movl 8(%esp),%eax
movl 24(%esp),%ecx
movl %eax,(%ecx)
movl 16(%esp),%eax
movzbl (%eax),%eax
movl %eax,12(%esp)
movl 12(%esp),%eax
movl 16(%esp),%ecx
movl %eax,(%ecx)
movl 24(%esp),%eax
movl 16(%esp),%ecx
addl %ecx,%eax
movl (%esp),%ecx
addl %ecx,%eax
nop
movl $0,%ecx
leal 32(%esp), %edx
movl %edx,20(%esp)
movl 20(%esp),%edx
addl %ecx,%edx
movl %edx,20(%esp)
movl 20(%esp),%ecx
movl 28(%esp),%edx
movl %edx,(%ecx)
leal 32(%esp), %esp
ret
