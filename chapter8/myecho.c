#include <stdio.h>
#include <string.h>


void main(int argv, char ** argc, char **envp){
	int i = 0;
	printf("Command line arguments:\n");
	for(i=0; i<argv; ++i)
		printf("argv[%d]: %s\n", i, argc[i]);

	printf("Environment variables:\n");
	i = 0;
	while(envp[i]){
		printf("envp[%d]: %s\n", i, envp[i++]);
	}
}
