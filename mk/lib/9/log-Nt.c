/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include	"lib9.h"

int
logopen(char *logname)
{
	USED(logname);
	return 0;
}

void
logmsg(int fd, char *s)
{
	(void) write(fd, s, strlen(s));
}

void
logclose(void)
{
}
