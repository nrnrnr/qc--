/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"
#include <Windows.h>

static char	errstring[ERRLEN];

enum
{
	Magic = 0xffffff
};

static void
winerror(int e, char *buf)
{
	int r;
	char buf2[ERRLEN], *p, *q;
	
	r = FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM,
		0, e, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
		buf2, sizeof(buf2), 0);

	if(r == 0)
		snprint(buf2, ERRLEN, "windows error %d", e);

	q = buf;
	for(p = buf2; *p; p++) {
		if(*p == '\r')
			continue;
		if(*p == '\n')
			*q++ = ' ';
		else
			*q++ = *p;
	}
	*q = '\0';
}

void
werrstr(char *fmt, ...)
{
	va_list arg;

	va_start(arg, fmt);
	doprint(errstring, errstring+sizeof(errstring), fmt, arg);
	va_end(arg);
	SetLastError(Magic);
}

int
errstr(char *buf)
{
	DWORD le;

	le = GetLastError();
	if(le == Magic)
		strncpy(buf, errstring, ERRLEN);
	else
		winerror(le, buf);
	return 1;
}

void
oserrstr(char *buf)
{
	DWORD le;

	le = GetLastError();
	winerror(le, buf);
}
