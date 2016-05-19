#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "byte.h"


unsigned float_i2f(int x){
	int sign;
	int count = 0;
	int R;
	int G;
	int S;
	if(x){
		// get the sign of x
		sign = x & 0x80000000;
		if(sign)
			// x is negative
			// get the abs of x
			x = -x;
		while(x > 0){
			// move the highest bit to the left most
			x <<= 1;	
			++count;
		}
		R = 0x100 & x;
		G = 0x80 & x;
		S = 0x7f & x;
		if(G){
			// only check rounding when G is larger than 0
			// if S is not zero, then round to upper
			// else if R is 1, then round to even
			if(S | R){
				//carry bit
				x += R;	
				//check whether overflow, if we already know the lsb of x is 1
				//so if x is overflow, then the lsb of x is 0
				count += !(x >> 31);
			}
		}
		// we know the moving step is count, and we omit the highest position of 1
		// so the total exponent is 32 - (count + 1), adding the bias
		// so E is 32-(count+1)+127=158-count
		return sign | ((158 - count) << 23) | ((x >> 8) & 0x7fffff);
	}
	// if x is 0, then the float is also 0
	return 0;
}

int main(int argc, char* argv[]){
	int x = 0x80000001;
	show_int(float_i2f(x));
	return 0;
}
