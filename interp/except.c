#include <stdlib.h>
#include <stdio.h>
#include <cii/assert.h>
#include <cii/except.h>
#define T Except_T
#ifdef WIN32
__declspec(thread)
#endif
Except_Frame *Except_stack = NULL;
void Except_raise(const T *e, const char *file,
	int line) {
	Except_Frame *p = Except_stack;
	assert(e);
	if (p == NULL) {
		fprintf(stderr, "Uncaught exception");
		if (e->reason)
			fprintf(stderr, " %s", e->reason);
		else
			fprintf(stderr, " at 0x%p", (void*)e);
		if (file && line > 0)
			fprintf(stderr, " raised at %s:%d\n", file, line);
		fprintf(stderr, "aborting...\n");
		fflush(stderr);
		abort();
	}
	p->exception = e;
	p->file = file;
	p->line = line;
	Except_stack = Except_stack->prev;
	longjmp(p->env, Except_raised);
}
