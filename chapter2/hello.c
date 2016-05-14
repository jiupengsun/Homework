#include <stdio.h>
#include <stdlib.h>
#include "byte.h"

unsigned float_twice(unsigned uf) {
	// Get the Exp
	unsigned E = (uf & 0x7f800000) >> 23;
	// Infinite or NaN
	if(E == 0xff)
		return uf;
	if(E == 0 && (uf & 0x00400000) == 0){
		return (uf & 0xff800000) | (uf & 0x004fffff << 1);
	}
	return ((++E) << 23) | (uf & 0x807fffff);
}

int main(int argc, char* argv[]){
	int x = 0x1;
	show_int(float_twice(x));
	return 0;
}
