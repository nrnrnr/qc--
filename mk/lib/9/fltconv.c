/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include "lib9.h"

int
fltconv(va_list *arg, Fconv *fp)
{
	char s1[FDIGIT+10], s2[FDIGIT+10];
	double f, g, h;
	int e, d, i, n, s;
	int c1, c2, c3, f2, ucase;

	f2 = fp->f2;
	fp->f2 = NONE;

	f = va_arg(*arg, double);
	if(isNaN(f)){
		strconv("NaN", fp);
		return 0;
	}
	if(isInf(f, 1)){
		strconv("+Inf", fp);
		return 0;
	}
	if(isInf(f, -1)){
		strconv("-Inf", fp);
		return 0;
	}
	s = 0;
	if(f < 0) {
		f = -f;
		s++;
	}
	ucase = 0;
	if(fp->chr >= 'A' && fp->chr <= 'Z') {
		ucase = 1;
		fp->chr += 'a'-'A';
	}

loop:
	e = 0;
	if(f != 0) {
		frexp(f, &e);
		e = e * .30103;
		d = e/2;
		h = f * pow10(-d);		/* 10**-e in 2 parts */
		g = h * pow10(d-e);
		while(g < 1) {
			e--;
			g = h * pow10(d-e);
		}
		while(g >= 10) {
			e++;
			g = h * pow10(d-e);
		}
	}
	if(f2 == NONE)
		f2 = FDEFLT;
	if(fp->chr == 'g' && f2 > 0)
		f2--;
	if(f2 > FDIGIT)
		f2 = FDIGIT;

	/*
	 * n is number of digits to convert
	 * 1 before, f2 after, 1 extra for rounding
	 */
	n = f2 + 2;
	if(fp->chr == 'f') {

		/*
		 * e+1 before, f2 after, 1 extra
		 */
		n += e;
		if(n <= 0)
			n = 1;
	}
	if(n >= FDIGIT+2) {
		if(fp->chr == 'e')
			f2 = -1;
		fp->chr = 'e';
		goto loop;
	}

	/*
	 * convert n digits
	 */
	g = f;
	if(e < 0) {
		if(e < -55) {
			g *= pow10(50);
			g *= pow10(-e-51);
		} else
			g *= pow10(-e-1);
	}
	for(i=0; i<n; i++) {
		d = e-i;
		if(d >= 0) {
			h = pow10(d);
			d = floor(g/h);
			g -= d * h;
		} else {
			g *= 10;
			d = floor(g);
			g -= d;
		}
		s1[i+1] = d + '0';
	}

	/*
	 * round by adding .5 into extra digit
	 */
	d = 5;
	for(i=n-1; i>=0; i--) {
		s1[i+1] += d;
		d = 0;
		if(s1[i+1] > '9') {
			s1[i+1] -= 10;
			d++;
		}
	}
	i = 1;
	if(d) {
		s1[0] = '1';
		e++;
		i = 0;
	}

	/*
	 * copy into final place
	 * c1 digits of leading '0'
	 * c2 digits from conversion
	 * c3 digits after '.'
	 */
	d = 0;
	if(s)
		s2[d++] = '-';
	else
	if(fp->f3 & FPLUS)
		s2[d++] = '+';
	c1 = 0;
	c2 = f2 + 1;
	c3 = f2;
	if(fp->chr == 'g')
	if(e >= -5 && e <= f2) {
		c1 = -e - 1;
		if(c1 < 0)
			c1 = 0;
		c3 = f2 - e;
		fp->chr = 'h';
	}
	if(fp->chr == 'f') {
		c1 = -e;
		if(c1 < 0)
			c1 = 0;
		if(c1 > f2)
			c1 = c2;
		c2 += e;
		if(c2 < 0)
			c2 = 0;
	}
	while(c1 > 0) {
		if(c1+c2 == c3)
			s2[d++] = '.';
		s2[d++] = '0';
		c1--;
	}
	while(c2 > 0) {
		if(c1+c2 == c3)
			s2[d++] = '.';
		s2[d++] = s1[i++];
		c2--;
	}

	/*
	 * strip trailing '0' on g conv
	 */
	if(fp->f3 & FSHARP) {
		if(c1+c2 == c3)
			s2[d++] = '.';
	} else
	if(fp->chr == 'g' || fp->chr == 'h') {
		for(n=d-1; n>=0; n--)
			if(s2[n] != '0')
				break;
		for(i=n; i>=0; i--)
			if(s2[i] == '.') {
				d = n;
				if(i != n)
					d++;
				break;
			}
	}
	if(fp->chr == 'e' || fp->chr == 'g') {
		if(ucase)
			s2[d++] = 'E';
		else
			s2[d++] = 'e';
		c1 = e;
		if(c1 < 0) {
			s2[d++] = '-';
			c1 = -c1;
		} else
			s2[d++] = '+';
		if(c1 >= 100) {
			s2[d++] = c1/100 + '0';
			c1 = c1%100;
		}
		s2[d++] = c1/10 + '0';
		s2[d++] = c1%10 + '0';
	}
	s2[d] = 0;
	strconv(s2, fp);
	return 0;
}
