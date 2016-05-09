#include<stdio.h>
#include "byte.h"


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

//exercise 3.26
int arithDivide(int x){
	return x / 4;
}

//exercise 3.27
int test1(int x, int y){
	int val = x+y;
	if(y > 0){
		if(x<y)	
			val = x-y;
		else
			val = x^y;
	} else if(y<-2)
		val = 4*x;
	return val;
}

//picture 3-18
int switch_eg(int x, int n){
	int result = x;
	switch(n){
		case 100:
			result *= 13;
			break;
		case 102:
			result += 10;
		case 103:
			result += 11;
			break;
		case 104:
		case 106:
			result *= result;
			break;
		default:
			result = 0;
	}
	return result;
}

void change(int *x){
	*x -= 1;
}

int main(){
	int x = 1;
	change(&x);
	printf("%d\n", x);
}
