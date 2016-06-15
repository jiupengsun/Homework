SOURCE1=process.c csapp.c
DEST1=process

SOURCE2=signal1.c csapp.c
DEST2=signal1

SOURCE3=signal2.c csapp.c
DEST3=signal2

SOURCE4=setjmp.c csapp.c
DEST4=setjmp

GCC=gcc
FLAGS= -pthread
all:
	$(GCC) $(SOURCE1) $(FLAGS) -o $(DEST1)
	$(GCC) $(SOURCE2) $(FLAGS) -o $(DEST2)
	$(GCC) $(SOURCE3) $(FLAGS) -o $(DEST3)
	$(GCC) $(SOURCE4) $(FLAGS) -o $(DEST4)
