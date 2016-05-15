#include <stdio.h>
#include <stdlib.h>
#include "byte.h"

typedef struct{
	int a[2];
	double d;
} struct_t;

double fun(int i){
	volatile struct_t s;
	s.d = 3.14;
	s.a[i] = 1073741824;
	return s.d;
}

int main(int argc, char* argv[]){
	printf("%lf\n", fun(0));
	printf("%lf\n", fun(1));
	printf("%lf\n", fun(2));
	printf("%lf\n", fun(3));
	printf("%lf\n", fun(4));
	printf("%lf\n", fun(6));
	return 0;
}
