/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"

void
exits(const char *s)
{
	if(s == 0 || *s == 0)
		exit(0);
	exit(1);
}

void
_exits(const char *s)
{
	if(s == 0 || *s == 0)
		_exit(0);
	_exit(1);
}
