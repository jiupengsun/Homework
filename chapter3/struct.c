#include <stdio.h>
#include "byte.h"

struct S1 {
	int i;
	char c;
	int j;
};

int main(){
	struct S1 ss;
	struct S1 *sp = &ss;
	ss.i=1;
	ss.c = 'a';
	ss.j = 2;
	printf("%d\n", *(sp));
	printf("%d\n", sizeof(ss));
	show_bytes((byte_pointer)&ss, sizeof(struct S1));
//	printf("%c\n", (char*)(sp+4));
//	printf("%d\n", *(sp));
	return 0;
}
