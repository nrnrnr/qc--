/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"

/*
renamed from strdup() to avoid conflict with strdup in libc on some
systems CL
*/
char*
strdup9(const char *s) 
{  
	char *os;

	os = malloc(strlen(s) + 1);
	if(os == 0)
		return 0;
	return strcpy(os, s);
}
