/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"
#include <bio.h>

struct	bgetd
{
	Biobuf*	b;
	int		eof;
};

static int
Bgetdf(void *vp)
{
	int c;
	struct bgetd *bg = vp;

	c = Bgetc(bg->b);
	if(c == Beof)
		bg->eof = 1;
	return c;
}

int
Bgetd(Biobuf *bp, double *dp)
{
	double d;
	struct bgetd b;

	b.b = bp;
	b.eof = 0;
	d = charstod(Bgetdf, &b);
	if(b.eof)
		return -1;
	Bungetc(bp);
	*dp = d;
	return 1;
}
