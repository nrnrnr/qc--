/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"
#include <sys/types.h>
#include <fcntl.h>

long
seek(int fd, long where, int from)
{
	return lseek(fd, where, from);
}
