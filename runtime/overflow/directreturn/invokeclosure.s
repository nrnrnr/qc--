.globl invokeclosure_takes3_returns2
.globl abstract_memory_size
.section .data
abstract_memory_size: .word 12

.section .text
invokeclosure_takes3_returns2:
        leal -70(%esp), %esp
	/* We never return, so we don't need to save the base pointer. */

.Linitialize_continuations_l14:
        leal .Lcut_entry_l11,%ebx /* why don't we have to save ebx before use? */
        movl %ebx,20(%esp)
        movl %esp,24(%esp)
.Lproc_body_start_l13:
        
	/*Save register. */
	movl %eax,4(%esp)  
	
        movl %eax,%ecx
	/* 0(%ecx) is returns_to.  not used here. */
        movl 16(%ecx),%ebp  /* function (f) */
        movl 20(%ecx),%eax  /* argument 1 (a) */
        movl 24(%ecx),%esi /* argument 2 (b) */
        movl 28(%ecx),%edi /* argument 3 (c) */
        leal -8(%esp), %esp
        movl %esi,(%esp)
        movl %edi,4(%esp)
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
	movl 4(%esp), %eax  /* load closure */
	movl 8(%eax), %edi /* dst overflow block */
	leal 4(%esp), %esi    /* src overflow block */
	movl 12(%eax), %ecx /* overflow block size */
	std
	rep movsd
	
/* now we can call functions or whatever */

/* freestack cut */
        movl 4(%esp),%edx    /* argument 1 (closure) */
        leal 20(%esp), %ebx /* argument 2 (k) */
        movl freestack,%eax
        movl 4(%eax), %esp; jmp *(%eax)
.Lcut_entry_l11:
.Lstart_of_continuation_code_l10:
/* ok now we're going to modify the saved machine state */
        movl 4(%esp),%eax  /* loads closure */
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
