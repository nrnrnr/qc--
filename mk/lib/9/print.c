/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"

#define	SIZE	8192
extern	int	printcol;
static	int	errcount = { 0 };
static	char	errmsg[] = "print errors";

int	_logging;

extern void	logmsg(int fd, char *s);

int
print(char *fmt, ...)
{
	char buf[SIZE], *out;
	va_list arg;
	int n;

	va_start(arg, fmt);
	out = doprint(buf, buf+SIZE, fmt, arg);
	va_end(arg);
	if(_logging) {
		n = (int)(out-buf);
		logmsg(1, buf);		/* fear not, doprint null-terminates */
	}
	else {
		n = write(1, buf, (int)(out-buf));
		if(n < 0)
			if(++errcount >= 10)
				exits(errmsg);
	}
	return n;
}

int
fprint(int f, char *fmt, ...)
{
	char buf[SIZE], *out;
	va_list arg;
	int n;

	va_start(arg, fmt);
	out = doprint(buf, buf+SIZE, fmt, arg);
	va_end(arg);
	if(_logging && (f==1 || f==2)) {	/* only log stdout and stderr */
		n = (int)(out-buf);
		logmsg(f, buf);		/* fear not, doprint null-terminates */
	}
	else {
		n = write(f, buf, (long)(out-buf));
		if(n < 0)
			if(++errcount >= 10)
				exits(errmsg);
	}
	return n;
}

#if 0
int
sprint(char *buf, char *fmt, ...)
{
	char *out;
	va_list arg;
	int scol;

	scol = printcol;
	va_start(arg, fmt);
	out = doprint(buf, buf+SIZE, fmt, arg);
	va_end(arg);
	printcol = scol;
	return out-buf;
}

int
snprint(char *buf, int len, char *fmt, ...)
{
	char *out;
	va_list arg;
	int scol;

	scol = printcol;
	va_start(arg, fmt);
	out = doprint(buf, buf+len, fmt, arg);
	va_end(arg);
	printcol = scol;
	return out-buf;
}
#endif
