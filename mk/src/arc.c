/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include	"mk.h"

Arc *
newarc(Node *n, Rule *r, char *stem, Resub *match)
{
	Arc *a;

	a = (Arc *)Malloc(sizeof(Arc));
	a->n = n;
	a->r = r;
	a->stem = strdup9(stem);
	rcopy(a->match, match, NREGEXP);
	a->next = 0;
	a->flag = 0;
	a->prog = r->prog;
	return(a);
}

void
dumpa(char *s, Arc *a)
{
	char buf[1024];

	Bprint(&bout, "%sArc@%p: n=%p r=%p flag=0x%x stem='%s'",
		s, a, a->n, a->r, a->flag, a->stem);
	if(a->prog)
		Bprint(&bout, " prog='%s'", a->prog);
	Bprint(&bout, "\n");

	if(a->n){
		snprint(buf, sizeof(buf), "%s    ", (*s == ' ')? s:"");
		dumpn(buf, a->n);
	}
}

void
nrep(void)
{
	Symtab *sym;
	Word *w;

	sym = symlook("NREP", S_VAR, 0);
	if(sym){
		w = (Word *) sym->value;
		if (w && w->s && *w->s)
			nreps = atoi(w->s);
	}
	if(nreps < 1)
		nreps = 1;
	if(DEBUG(D_GRAPH))
		Bprint(&bout, "nreps = %d\n", nreps);
}
