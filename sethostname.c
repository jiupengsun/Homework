#include<unistd.h>
#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int gethostname(char *name, size_t len);
int sethostname(const char*name, size_t len);

char *cmuhost = "makoshark.ics.cs.cmu.edu";
char *localhost = "samy-ubuntu-pc";

void main(int argc, char ** argv){
	int mode;
	if(argc > 1){
		mode = atoi(argv[1]);
		int r = -1;
		if(mode)
			r = sethostname(cmuhost, strlen(cmuhost));
		else
			r = sethostname(localhost, strlen(localhost));
		int len = 50;
		char hostname[len];
		gethostname(hostname, len);
		printf("Transform host name to %s, and return %d\n", hostname, r);

	}
}
