#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "byte.h"


int main(int argc, char* argv[]){
	float a = 129;
	float b = 256;
	float c = a - b;
	float d = -127;
	show_float(a);
	show_float(b);
	show_float(c);
	show_float(d);
	return 0;
}
