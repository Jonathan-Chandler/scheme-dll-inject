ECHO = echo
MAKE = make

export ECHO

#CC = gcc
#export CC
#EXECFLAGS = 
#DLLCFLAGS = 
#export INCLUDES
#export CFLAGS

all: build/main.o build/process_info.o dll-test.dll
	gcc -Wall -Iinc -o main.exe build/main.o build/process_info.o dll-test.dll -lws2_32 -lpsapi

build/main.o:
	gcc -Wall -Iinc -c src/main.c -o build/main.o -lws2_32 -lpsapi

build/process_info.o:
	gcc -Wall -Iinc -c src/process_info.c -o build/process_info.o -lws2_32 -lpsapi

build/dll-test.o:
	gcc -shared -Wall -Iinc -IC:\msys64\mingw32\include\chicken -c src/dll-test.c -o build/dll-test.o -IC:\msys64\mingw32\include\chicken -lchicken -lws2_32

dll-test.dll: build/dll-test.o
	gcc -shared -Wall -Iinc -IC:\msys64\mingw32\include\chicken -o dll-test.dll build/dll-test.o -IC:\msys64\mingw32\include\chicken -lchicken -lws2_32

clean:
	rm -rf build/*.o *.exe *.dll

