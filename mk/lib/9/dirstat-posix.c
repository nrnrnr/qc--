/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <pwd.h>
#include <grp.h>

static void
statconv(Dir *dir, struct stat *s)
{
	ulong q;

	q = 0;
	if(S_ISDIR(s->st_mode))
		q = CHDIR;
	q |= s->st_ino & 0x00FFFFFFUL;
	dir->qid.path = q;
	dir->qid.vers = s->st_mtime;
	dir->mode = (dir->qid.path&CHDIR)|(s->st_mode&0777);
	dir->atime = s->st_atime;
	dir->mtime = s->st_mtime;
	dir->length = s->st_size;
	dir->dev = s->st_dev;
	dir->type = 'M';
	if(S_ISFIFO(s->st_mode))
		dir->type = '|';
}

int
dirfstat(int fd, Dir *d)
{
	struct stat sbuf;

	if(fstat(fd, &sbuf) < 0)
		return -1;
	statconv(d, &sbuf);
	return 0;
}

int
dirstat(char *f, Dir *d)
{
	struct stat sbuf;

	if(stat(f, &sbuf) < 0)
		return -1;
	statconv(d, &sbuf);
	return 0;
}
