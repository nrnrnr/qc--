/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "mk.h"

void
bulkmtime(char *dir)
{
	char buf[8196];
	char *ss;
	char *s;
	Dir db;

	if (dir) {
		s = dir;
		if (strcmp(dir, "/") == 0)
			strcpy(buf, dir);
		else
			sprint(buf, "%s/", dir);
		if(mkdirstat(dir, &db) >= 0 && (db.qid.path&CHDIR) == 0){
			/* bugger off */
			fprintf(stderr, "mk: %s is not a directory path=%lux\n", dir, db.qid.path);
			Exit();
		}
	} else {
		s = ".";
		buf[0] = 0;
	}
	if (symlook(s, S_BULKED, 0))
		return;
	ss = strdup9(s);
	symlook(ss, S_BULKED, (void *)ss);
	dirtime(s, buf);
}

long
mtime(char *name)
{
	Dir sbuf;
	char *s, *ss;
	char carry;

	s = utfrrune(name, '/');
	if (s == name)
		s++;
	if (s) {
		ss = name;
		carry = *s;
		*s = 0;
	} else {
		ss = 0;
		carry = 0;
	}
	bulkmtime(ss);
	if(carry)
		*s = carry;
	if(mkdirstat(name, &sbuf) < 0)
		return 0;
	return sbuf.mtime;
}

long
filetime(char *name)
{
	Symtab *sym;

	sym = symlook(name, S_TIME, 0);
	if (sym)
		return (long) sym->value;		/* uggh */
	return mtime(name);
}
