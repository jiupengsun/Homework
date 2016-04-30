#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char* argv[]){
//	float base = atof(argv[1]);
//	float exp = atof(argv[2]);
	int base = 2;
	float exp = 3;
	printf("%f\n", pow(base, exp));
	printf("%f\n", powf(2, 3));
	return 0;
}
