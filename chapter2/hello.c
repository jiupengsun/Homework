#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "byte.h"


int rotateRight(int x, int n) {
	/*
	 * Retrieve n bit
	 * Left shift x till 32 - n 
	 * Or the n bit
	 */
	// x >=0 mask=0x0
	// x <0 mask=0xffffffff
	int mask = x >> 31;
	// m=32-n
	int m = 33 + ~n;
	return ((mask ^ x) << m) ^ (x >> n);
}

int main(int argc, char* argv[]){
	int x = 0x80000000;
	show_int(rotateRight(x, 0));
	return 0;
}
