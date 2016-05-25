#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "byte.h"


unsigned float_i2f(int x){
	// E = 158 << 23, S means the sign
	int SE = 0x4e800000;
	int GS;
	unsigned ux = x;
	if(x){
		if(x < 0){
			// x is negative
			// get the abs of x
			ux = -x;
			// set the sign of E
			SE = 0xce800000;
		}
		while(ux < 0x80000000){
			// move the highest bit to the left most
			ux <<= 1;	
			// we know the moving step is count, and we omit the highest position of 1
			// so the total exponent is 32 - (count + 1), adding the bias
			// so E is 32-(count+1)+127=158-count
			SE -= 0x800000;
		}
		//G = 0x100 & ux;
		//S = 0x7f & ux;
		GS = 0x17f & ux;
		if(GS)
			ux += 0x80;
		return SE + (ux >> 8);
		/*
		 * old version:
		 * if x does not hold carry, then the 24th bit is 1
		 * otherwise is 0, so after we add 0x800000
		 * the 24th bit is 0 or 1
		 * x = ((x >> 8) + 0x800000) & 0xffffff;
		 * return (sign | E) + x;
		 */
	}
	// if x is 0, then the float is also 0
	return 0;
}

int main(int argc, char* argv[]){
	int x = 0x80000001;
	show_int(float_i2f(x));
	return 0;
}
