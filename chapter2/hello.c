#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "byte.h"


unsigned float_i2f(int x) {
	int sign;
	unsigned u;
	unsigned ux = x;
	int hb = 0;
	int diff;
	if(x){
		sign = x & 0x80000000;
		if(sign)
			ux = -x;
		// get the highest significant bit
		u = ux;
		while(u){
			u >>= 1;
			++hb;
		}
		diff = hb - 23;
		if(diff > 0){// need rounding
			int guard = 1 << diff;
			int monitor = guard >> 1;
			int round = (guard - 1) & ux;
			if((round > monitor) || ((round==monitor) && (guard & ux))){
				ux += guard;
				if(!((1<<hb) & ux))
					++hb;// carry bit
			}
			ux >>= diff;
		} else
			ux <<= -diff;
		return sign | ((hb + 127) << 23) | (ux & 0x7fffff);
	}
	return 0;
}

int main(int argc, char* argv[]){
	int x = 0x80000000;
	show_int(float_i2f(x));
	return 0;
}
