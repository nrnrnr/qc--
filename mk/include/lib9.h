/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <stdarg.h>
#include <errno.h>
#include <string.h>
#include "math.h"
#include <fcntl.h>
#include <setjmp.h>
#include <float.h>
#include <unistd.h>
#include <assert.h>

#define	nil		((void*)0)

#if defined(PEDANTIC_ANSI) || defined(__STRICT_ANSI__)
typedef unsigned long	ulong;
typedef unsigned short	ushort;
#elif defined(__FreeBSD__)      /* by wkj@eecs.harvard.edu */
typedef unsigned long	ulong; 
#endif

typedef unsigned char	uchar;
typedef signed char	schar;
typedef unsigned short	Rune;
#ifdef LONGLONG
typedef long long int	vlong;
typedef unsigned long long int	uvlong;
#define LONGLONGSTMT(S) S
#define LONGLONGDECL(D) D
#else
#define LONGLONGSTMT(S) {assert(0);}
#define LONGLONGDECL(D)
#endif

/*
 * rune routines from converted str routines
 */
extern	long	utflen(char*);
extern	char*	utfrune(char*, long);
extern	char*	utfrrune(char*, long);

enum
{
	UTFmax		= 3,		/* maximum bytes per rune */
	Runesync	= 0x80,		/* cannot represent part of a UTF sequence (<) */
	Runeself	= 0x80,		/* rune and UTF sequences are the same (<) */
	Runeerror	= 0x80		/* decoding error in UTF */
};

/*
 * new rune routines
 */
extern	int	runetochar(char*, Rune*);
extern	int	chartorune(Rune*, char*);
extern	int	runelen(long);
extern	int	fullrune(char*, int);
extern	int	runestrlen(Rune*);
extern	int	runenlen(Rune*, int);

extern	char*	doprint(char*, char*, char*, va_list);

#define	USED(x)		if(x);else
#define	SET(x)



#define nelem(x)	(sizeof(x)/sizeof((x)[0]))

enum
{
	NAMELEN	= 28,
	ERRLEN	= 64,
	DIRLEN	= 116
};

#define CHDIR		0x80000000	/* mode bit for directories */
#define CHAPPEND	0x40000000	/* mode bit for append only files */
#define CHEXCL		0x20000000	/* mode bit for exclusive use files */
#define CHMOUNT		0x10000000	/* mode bit for mounted channel */
#define CHREAD		0x4		/* mode bit for read permission */
#define CHWRITE		0x2		/* mode bit for write permission */
#define CHEXEC		0x1		/* mode bit for execute permission */

#define	OREAD		0		/* open for read */
#define	OWRITE		1		/* write */
#define	ORDWR		2		/* read and write */
#define	OEXEC		3		/* execute, == read but check execute permission */
#define	OTRUNC		16		/* or'ed in (except for exec), truncate file first */
#define	OCEXEC		32		/* or'ed in, close on exec */
#define	ORCLOSE		64		/* or'ed in, remove on close */

typedef
struct Qid
{
	unsigned long	path;
	unsigned long	vers;
} Qid;

typedef
struct Dir
{
	char	name[NAMELEN];
	Qid	qid;
	unsigned long	mode;
	int	atime;
	int	mtime;
	unsigned long	length;
	ushort	type;
	dev_t	dev;
} Dir;

/*
 * print routines
 */
typedef	struct	Fconv	Fconv;
struct	Fconv
{
	char*	out;		/* pointer to next output */
	char*	eout;		/* pointer to end */
	int	f1;
	int	f2;
	int	f3;
	int	chr;
};
extern	int	print(char*, ...);
extern	int	snprint(char*, int, char*, ...);
extern	int	sprint(char*, char*, ...);
extern	int	fprint(int, char*, ...);
extern	char*	strdup9(const char*);
#ifdef LONGLONG
#define strtoll(s, t, i)	strtoll_inferno(s, t, i)
extern	vlong	strtoll_inferno(const char*, char**, int);
#endif

extern	int	fmtinstall(int, int (*)(va_list*, Fconv*));
extern	int	numbconv(va_list*, Fconv*);
extern	void	strconv(char*, Fconv*);
extern	int	fltconv(va_list*, Fconv*);

