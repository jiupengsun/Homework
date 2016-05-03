#include<stdio.h>

typedef unsigned char * byte_pointer;

void show_bytes(byte_pointer start, int len){
	int i;
	for(int i=0; i<len; ++i)
		printf("%.2x", start[i]);
	printf("\n");
}

void show_int(int x){
	show_bytes((byte_pointer)&x, sizeof(int));
}

void show_float(float x){
	show_bytes((byte_pointer) &x, sizeof(float));
}

void show_pointer(void *x){
	show_bytes((byte_pointer) &x, sizeof(void *));
}

int arith(int x, int y, int z){
	int t1 = x+y;
	int t2 = z*48;
	int t3 = t1&0xffff;
	int t4 = t2*t3;
	return t4;
}

void sotre_prob(long long *dest, unsigned x, long long y){
	*dest = x*y;
}

void compare(unsigned x, unsigned y, unsigned *c){
	if(x < y)
		*c = x;
	else
		*c = y;
}

int main(){
	unsigned char c = 0x80;
	unsigned i = (unsigned)c;
	show_int(i);
}
