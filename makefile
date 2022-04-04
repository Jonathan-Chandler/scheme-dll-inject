
all: main.exe dll-test.dll test_main.exe

main.exe: build/main.o build/process_info.o dll-test.dll
	gcc -Wall -Iinc -o main.exe build/main.o build/process_info.o dll-test.dll -lws2_32 -lpsapi
	gcc -g -S -Iinc -o main.exe.s build/main.o build/process_info.o dll-test.dll -lws2_32 -lpsapi -masm=intel

dll-test.dll: build/dll-test.o
	gcc -shared -Wall -Iinc -IC:\msys64\mingw32\include\chicken -o dll-test.dll build/dll-test.o -lchicken -lws2_32
	gcc -g -S -shared -Iinc -IC:\msys64\mingw32\include\chicken -o dll-test.dll.s build/dll-test.o -masm=intel

test_main.exe: build/test_main.o build/debug.o
	gcc -Wall -Iinc build/test_main.o build/memscan.o build/debug.o -o test_main.exe
	gcc -g -S -Iinc build/memscan.o build/test_main.o build/debug.o -o build/test_main.s -masm=intel

build/debug.o:
	gcc -Wall -Iinc -c src/debug.c -o build/debug.o
	gcc -g -S -Iinc -c src/debug.c -o build/debug.s

build/main.o:
	gcc -Wall -Iinc -c src/injector/main.c -o build/main.o
	gcc -g -S -Iinc -c src/injector/main.c -o build/main.s

build/process_info.o:
	gcc -Wall -Iinc -c src/injector/process_info.c -o build/process_info.o
	gcc -g -S -Iinc -c src/injector/process_info.c -o build/process_info.s

build/memscan.o: build/debug.o
	gcc -shared -Wall -Iinc -IC:\msys64\mingw32\include\chicken -c src/dll/memscan.c -o build/memscan.o
	gcc -g -S -shared -Iinc -IC:\msys64\mingw32\include\chicken -c src/dll/memscan.c -o build/memscan.s

build/dll-test.o: build/memscan.o
	gcc -shared -Wall -Iinc -IC:\msys64\mingw32\include\chicken -c src/dll/dll-test.c -o build/dll-test.o
	gcc -g -S -shared -Iinc -IC:\msys64\mingw32\include\chicken -c src/dll/dll-test.c -o build/dll-test.s

build/test_main.o: build/memscan.o
	gcc -shared -Wall -Iinc -IC:\msys64\mingw32\include\chicken -c src/test/test_main.c -o build/test_main.o
	gcc -g -S -shared -Iinc -IC:\msys64\mingw32\include\chicken -c src/test/test_main.c -o build/test_main.s

clean:
	rm -rf build/*.s build/*.o *.exe *.dll

