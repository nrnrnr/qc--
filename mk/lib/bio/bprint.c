/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include	"lib9.h"
#include	<bio.h>

extern	int	printcol;

int
Bprint(Biobuf *bp, char *fmt, ...)
{
	va_list	ap;
	char *ip, *ep, *out;
	int n, pcol;

	ep = (char*)bp->ebuf;
	ip = ep + bp->ocount;
	pcol = printcol;
	va_start(ap, fmt);
	out = doprint(ip, ep, fmt, ap);
	va_end(ap);
	if(out >= ep-5) {
		Bflush(bp);
		ip = ep + bp->ocount;
		printcol = pcol;
		va_start(ap, fmt);
		out = doprint(ip, ep, fmt, ap);
		va_end(ap);
		if(out >= ep-5)
			return Beof;
	}
	n = out-ip;
	bp->ocount += n;
	return n;
}
