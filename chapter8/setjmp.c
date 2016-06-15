#include "csapp.h"

jmp_buf buf;

int error1 = 0;
int error2 = 1;

void foo(void), bar(void);

int main(){
	int rc;

	rc = setjmp(buf);
	if (rc == 0)
		foo();
	else if (rc == 1)
		printf("Error1\n");
	else if (rc == 2)
		printf("Error2\n");
	else
		printf("Unknown error\n");
	exit(0);

}

void foo(){
	printf("call foo\n");
	if(error1)
		longjmp(buf, 1);
	bar();
}

void bar(){
	printf("call bar\n");
	if(error2)
		longjmp(buf, 2);
}
