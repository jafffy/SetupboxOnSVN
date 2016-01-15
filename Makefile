CC=gcc -std=c99
SRC=minimal_client.c
LIB=-lapr-1 -lsvn_client-1 -lsvn_fs-1 -lsvn_subr-1
OBJ=minimal_client.o
EXE=minimal_client
INC=-I/usr/include/subversion-1 -I/usr/include/apr-1

all: $(OBJ)
	$(CC) -o bin/$(EXE) $(OBJ) $(LIB)

$(OBJ): $(SRC)
	$(CC) -c $(SRC) $(INC)
