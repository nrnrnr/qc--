/*
Copyright © 2001 Norman Ramsey.  All rights reserved.  

newprint - replacement print functions using stdio
*/

#include <stdio.h>
#include <stdarg.h>
#include <assert.h>

#define SIZE    4096

int
sprint(char *buf, char *fmt, ...)
{
	int written;
	va_list arg;

	va_start(arg, fmt);
	written = vsprintf(buf, fmt, arg);
        assert(written < SIZE);
	va_end(arg);
	return written;
}

int
snprint(char *buf, int len, char *fmt, ...)
{
	int written;
	va_list arg;

	va_start(arg, fmt);
	written = vsprintf(buf, fmt, arg);
        assert(written < len);
	va_end(arg);
	return written;
}
