/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include <lib9.h>
#include <regexp.h>


main(int ac, char **av)
{
	Resub rs[10];
	Reprog *p;
	char *s;
	int i;

	p = regcomp("[^a-z]");
	s = "\n";
	if(regexec(p, s, rs, 10))
		print("%s %lux %lux %lux\n", s, s, rs[0].sp, rs[0].ep);
	s = "0";
	if(regexec(p, s, rs, 10))
		print("%s %lux %lux %lux\n", s, s, rs[0].sp, rs[0].ep);
	exits(0);
}
