#include<stdio.h>
#include<stdlib.h>

int func(int x, int y, int z){
	int r = (x + z) / 2;
	if(r > y){
		x = r - 1;
		return 2 * func(x, y, z);
	} else {
		if(r >= y)
			return 0;
		else {
			z = r + 1;
			return 2 * func(x, y, z) + 1;
		}
	}
}

int fun7(long *x, int y){
	if(!x)
		return 0xffffffff;
	int ix = (int)(*x);
	if(ix <= y){
		if(ix == y)
			return 0;
		else{
			x += 0x10;
			return 2 * fun7(x, y) + 1;
		}
	} else {
		x += 0x8;
		return 2 * fun7(x, y);
	}
}

void main(int argc, char ** argv){
	int x = 0xe;
	int z = 0;
	printf("%d %d\n", 0, func(x, 0, z));
	printf("%d %d\n", 1, func(x, 1, z));
	printf("%d %d\n", 2, func(x, 2, z));
	printf("%d %d\n", 3, func(x, 3, z));
	printf("%d %d\n", 4, func(x, 4, z));
	printf("%d %d\n", 5, func(x, 5, z));
	printf("%d %d\n", 6, func(x, 6, z));
	printf("%d %d\n", 7, func(x, 7, z));
	printf("%d %d\n", 8, func(x, 8, z));
	printf("%d %d\n", 9, func(x, 9, z));
	printf("%d %d\n", 10, func(x, 10, z));
	printf("%d %d\n", 11, func(x, 11, z));
	printf("%d %d\n", 12, func(x, 12, z));
	printf("%d %d\n", 13, func(x, 13, z));
	printf("%d %d\n", 14, func(x, 14, z));
}
