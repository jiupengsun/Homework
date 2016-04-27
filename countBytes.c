#include <stdio.h>
#include <string.h>
#include <stdint.h>

typedef unsigned char *byte_pointer;

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

int tadd_ok(int x, int y){
	int sum = x + y;
	int negative_overflow = x < 0 && y<0 && sum>0;
	int positive_overflow = x>0 && y>0 && sum<0;
	return !negative_overflow && !positive_overflow;
}

int tsub_ok(int x, int y){
	return y==INT32_MIN && x>=0 || tadd_ok(x, -y);
}

int tmult_ok(int x, int y){
	int mult = x*y;
	return !x || mult/x==y;
}

int tmult_ok2(int x, int y){
	long long mult = (long long)x*y;
	return mult == (int)mult;
}

// 2.59
int is_Little_Endian(){
	int x = 1;
	byte_pointer bp = (byte_pointer)&x;
	return bp[0] == 1;
}

//2.60
unsigned replace_byte(unsigned x, unsigned char b, int i){
	unsigned r = (unsigned)b;
	unsigned shift = 0xff << (i << 3);
	return (x & ~shift) || (r << (i << 3));
}

//2.62
int int_shifts_are_logical(){
	unsigned b = (sizeof(unsigned) << 3) - 1;
	unsigned x = 1;
	return (((x<<b) & (-1 >> 1)) >> b) ^ 1;
}

//2.63
int sra(int x, int k){
	/*Perform shift logically*/
	int xsrl = (unsigned) x >> k;
	if(x >= 0)
		return xsrl;
	unsigned bitSize = sizeof(int);
	int m = 1;
	int i = k;
	while(i-- > 0){
		m = (m << 1) | 1;	
	}
	m <<= (bitSize << 3) - k;
	return xsrl | m;
}

int srl(unsigned x, int k){
	/*Perform shift arithmetically*/
	unsigned xsra = (int) x >> k;
	unsigned bitSize = sizeof(int);
	int m = 1;
	int i = k;
	while(i-- > 0){
		m = (m << 1) | 1;
	}
	m <<= (bitSize << 3) - k;
	return (int)x < 0 ? xsra & ~m : xsra;
}

//2.64
int any_even_one(unsigned x){

	int m = 1;
	int i = 15;
	while(i-- > 0){
		m &= x & i;
		i <<= 2;
	}
	return m;
}

//2.65
//compress bit and accumulate the higher bits and lower bits
//till only 16 bits left, cuz 32 is larger than 16
int even_ones(unsigned x){
	x = ((x & 0xAAAAAAAA) >> 1) + (x & 0x55555555);
	x = ((x & 0xCCCCCCCC) >> 2) + (x & 0x33333333);
	x = ((x & 0xF0F0F0F0) >> 4) + (x & 0x0F0F0F0F);
	x = ((x & 0xFF00FF00) >> 8) + (x & 0x00FF00FF);
	x = ((x & 0xFFFF0000) >> 16) + (x & 0x0000FFFF);
	return (x & 1) == 0;
} 

//2.66
//ensure each bit in the lower position is 1
//then execute x & ~(x >> 1)
int leftmost_one(unsigned x){
	x = (x >> 1) | x;
	x = (x >> 2) | x;
	x = (x >> 4) | x;
	x = (x >> 8) | x;
	x = (x >> 16) | x;
	return x & ~(x >> 1);
}

//2.67
int int_size_is_32(){
	int x = 1;
	return (x<<15) > 0 && (x << 31) < 0;
}

int main(){
	//short sx = -12345;
	//unsigned uy = sx;
	//printf("uy = %u:\t", uy);
	//show_bytes((byte_pointer)&uy, sizeof(unsigned));
	//printf("INT32_MIN=%d\t-INT32_MIN=%d\n", INT32_MIN, -INT32_MIN);
	//printf("INT32_MAX=%d\t-INT32_MAX=%d\n", INT32_MAX, -INT32_MAX);
	short x1 = 0x1;
	short x2 = 0x6;
	short r = x1 * x2;
	int x = 3;
	int y = -4;
	unsigned ux = x;
	unsigned uy = y;
	//show_bytes((byte_pointer)&r, sizeof(unsigned short));
	int a = 0xFFFF;
	//printf("%d\n", a);
	printf("%d\n", (x*~y+ux*uy) == -x);	
	show_int(a<<16);
	printf("%d\n", (a<<16)-a);
	printf("%d\n", a*a);
	printf("%d\n", int_size_is_32());
	show_int(srl(2, 1));
	show_int(srl(0x80000000, 1));
	show_int(leftmost_one(0x40000000));
	return 0;
}

