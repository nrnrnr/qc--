.globl invokeclosure_takes5_returns4
.globl abstract_memory_size
.section .data
abstract_memory_size: .word 12

.section .text
invokeclosure_takes5_returns4:
        leal -70(%esp), %esp
	/* We never return, so we don't need to save the base pointer. */

.Linitialize_continuations_l14:
        leal .Lcut_entry_l11,%ebx /* why don't we have to save ebx before use? */
        movl %ebx,20(%esp)
        movl %esp,24(%esp)
.Lproc_body_start_l13:
        
	/*Save register. */
	movl %eax,8(%esp)  
        
	/* prepare for call */
	leal -16(%esp), %esp
	
        movl %eax,%ecx
	/* 0(%ecx) is returns_to.  not used here. */
        movl 16(%ecx),%ebp  /* function (f) */
        movl 20(%ecx),%eax  /* argument 1 (a) */
        movl 24(%ecx),%esi /* argument 2 (b) */
        movl %esi,(%esp)
        movl 28(%ecx),%esi /* argument 3 (c) */
        movl %esi,4(%esp)
        movl 32(%ecx),%esi /* argument 4 (d) */
        movl %esi,8(%esp)
        movl 36(%ecx),%esi /* argument 5 (e) */
        movl %esi,12(%esp)
        call *%ebp
.Lcall_successor_l17:
/* save abstract machine state */
	movl %eax,30(%esp)
	movl %ebx,34(%esp)
/* we don't need to save ECX.	movl %ecx,38(%esp) */
	movl %edx,42(%esp)
	movl %esi,46(%esp)
	movl %edi,50(%esp)
	movl %ebp,54(%esp)
	movl %esp,58(%esp)

/* copy overflow block */
	movl 8(%esp), %eax  /* load closure */
	movl 8(%eax), %edi /* dst overflow block */
	movl %esp, %esi    /* src overflow block */
	movl 12(%eax), %ecx /* overflow block size */
	cld
	rep movsd


/* now we can call functions or whatever */

/* freestack cut */
        movl 8(%esp),%edx    /* argument 1 (closure) */
        leal 20(%esp), %ebx /* argument 2 (k) */
        movl freestack,%eax
        movl 4(%eax), %esp; jmp *(%eax)
.Lcut_entry_l11:
.Lstart_of_continuation_code_l10:
/* ok now we're going to modify the saved machine state */
        movl 8(%esp),%eax  /* loads closure */
	movl 4(%eax),%ecx  /* old SP */
	movl %ecx,58(%esp) /* replace new SP */

	movl (%eax),%ecx /* old RA.  we get to keep this. */
	
/* restore machine state */
	movl 30(%esp),%eax
	movl 34(%esp),%ebx
/* we don't need to save ECX.	movl %ecx,38(%esp) */
	movl 42(%esp),%edx
	movl 46(%esp),%esi
	movl 50(%esp),%edi
	movl 54(%esp),%ebp
	movl 58(%esp),%esp

	jmp *%ecx
