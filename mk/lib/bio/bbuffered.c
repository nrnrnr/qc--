/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include	"lib9.h"
#include	<bio.h>

int
Bbuffered(Biobuf *bp)
{
	switch(bp->state) {
	case Bracteof:
	case Bractive:
		return -bp->icount;

	case Bwactive:
		return bp->bsize + bp->ocount;

	case Binactive:
		return 0;
	}
	fprint(2, "Bbuffered: unknown state %d\n", bp->state);
	return 0;
}
