/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"
#include <sys/types.h>
#include <fcntl.h>

int
create(char *f, int mode, int perm)
{
	int m;

	m = 0;
	switch(mode & 3){
	case OREAD:
	case OEXEC:
		m = O_RDONLY;
		break;
	case OWRITE:
		m = O_WRONLY;
		break;
	case ORDWR:
		m = O_RDWR;
		break;
	}
	m |= O_CREAT|O_TRUNC;

	if(perm & CHDIR){
		if(mkdir(f, perm) < 0)
			return -1;
		perm &= CHDIR;
		m &= 3;
	}
	return open(f, m, perm);
}
