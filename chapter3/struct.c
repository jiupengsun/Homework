#include <stdio.h>
#include "byte.h"

struct S1 {
	int i;
	char c;
	char d;
	int j;
};

struct P4 {
	short w[3];
	char *c[3];
};

int main(){
	struct P4 p;
	struct P4 *sp = &p;
	p.w[0] = 1;
	p.w[1] = 2;
	p.w[2] = 3;
	p.c[0] = "test";
	printf("%d\n", sizeof(p));
	show_bytes((byte_pointer)&p, sizeof(struct P4));
//	printf("%c\n", (char*)(sp+4));
//	printf("%d\n", *(sp));
	return 0;
}
