/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include	"mk.h"

/* table-driven version in bootes dump of 12/31/96 */

long
timeof(char *name, int force)
{

	if(utfrune(name, '('))
		return atimeof(force, name);	/* archive */

	if(force)
		return mtime(name);
	return filetime(name);
}

void
touch(char *name)
{
	Bprint(&bout, "touch(%s)\n", name);
	if(nflag)
		return;

	if(utfrune(name, '('))
		atouch(name);		/* archive */
	else if(chgtime(name) < 0) {
		perror(name);
		Exit();
	}
}

void
delete(char *name)
{
	if(utfrune(name, '(') == 0) {		/* file */
		if(remove(name) < 0)
			perror(name);
	} else
		fprintf(stderr, "hoon off; mk can'tdelete archive members\n");
}

void
timeinit(char *s)
{
	long t;
	char *cp;
	Rune r;
	int c, n;

	t = time(0);
	while (*s) {
		cp = s;
		do{
			n = chartorune(&r, s);
			if (r == ' ' || r == ',' || r == '\n')
				break;
			s += n;
		} while(*s);
		c = *s;
		*s = 0;
		symlook(strdup9(cp), S_TIME, (void *)t)->value = (void *)t;
		if (c)
			*s++ = c;
		while(*s){
			n = chartorune(&r, s);
			if(r != ' ' && r != ',' && r != '\n')
				break;
			s += n;
		}
	}
}
