/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include	"lib9.h"
#include <syslog.h>

extern int _logging;	/* print.c */

int
logopen(char *logname)
{
	openlog(logname, LOG_PID, LOG_DAEMON);
	_logging = 1;
	return 1;
}

void
logmsg(int fd, char *s)
{
	int pri;

	pri = LOG_INFO;
	if (fd == 2)
		pri = LOG_ERR;
	syslog(pri, "%s", s);
}

void
logclose(void)
{
	_logging = 0;
	closelog();
}
