/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"
#include <pwd.h>

char*
getuser(void)
{
	struct passwd *p;

	static char *user = 0;

	if (!user) {
		p = getpwuid(getuid());
		if (p && p->pw_name) {
			user = malloc(strlen(p->pw_name)+1);
			if (user)
				strcpy(user, p->pw_name);
		}
	}
	if(!user)
		user = "unknown";
	return user;
}
