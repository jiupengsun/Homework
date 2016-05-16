#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "byte.h"


unsigned float_i2f(int x) {
	int sign = 0;
	int E = 0;
	int frac = 0;
	unsigned ux;
	int hb = 31;
	sign = (x >> 31) & 0x1;
	if(sign)
		x = -x;
	ux = x;
	while(!(ux >> hb) && hb)
		--hb;// get the highest significant bit
	if(hb > 23){// need rounding
		int monitor = 1 << (hb - 24);
		int guard = monitor << 1;
		int round = (guard - 1) & ux;
		if((round > monitor) || ((round==monitor) && (guard & ux))){
			ux += guard;
			if((1<<hb) & ux)
				++hb;// carry bit
		}
		ux >>= hb - 23;
	} else
		ux <<= 23 - hb;
	frac = ux & 0x7fffff;
	if(x)
		E = hb + 127;
	return (sign << 31) | (E << 23) | frac;
}

int main(int argc, char* argv[]){
	int x = 0x80000001;
	show_int(float_i2f(x));
	return 0;
}
