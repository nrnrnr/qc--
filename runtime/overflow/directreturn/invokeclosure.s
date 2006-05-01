.globl invokeclosure_takes3_returns2

.section .text
invokeclosure_takes3_returns2:
        leal -28(%esp), %esp
	/* We never return, so we don't need to save the base pointer. */

.Linitialize_continuations_l14:
        leal .Lcut_entry_l11,%ebx /* why don't we have to save ebx before use? */
        movl %ebx,20(%esp)
        movl %esp,24(%esp)
.Lproc_body_start_l13:
        
	/*Save register. */
	movl %eax,(%esp)  
	
        movl %eax,%ecx
	/* 0(%ecx) is returns_to.  not used here. */
        movl 4(%ecx),%ebp  /* function (f) */
        movl 8(%ecx),%eax  /* argument 1 (a) */
        movl 12(%ecx),%esi /* argument 2 (b) */
        movl 16(%ecx),%edi /* argument 3 (c) */
        leal -8(%esp), %esp
        movl %esi,(%esp)
        movl %edi,4(%esp)
        call *%ebp
.Lcall_successor_l17:
        movl %edx,8(%esp)   /* return value 2 (y) */
        movl (%esp),%edx    /* argument 1 (closure) */
        leal 20(%esp), %ebx /* argument 2 (k) */
        movl %eax,16(%esp)  /* return value 1 (x) */

        movl freestack,%eax
        movl 4(%eax), %esp; jmp *(%eax)
.Lcut_entry_l11:
.Lstart_of_continuation_code_l10:
        movl 8(%esp),%ebx   /* argument 2 (y) */
        movl 16(%esp),%edx  /* argument 1 (x) */

        movl (%esp),%eax  /* loads closure */
	movl (%eax),%eax  /* loads returns_to */
        movl 4(%eax), %esp; jmp *(%eax)
