# https://www.cs.swarthmore.edu/~newhall/unixhelp/howto_makefiles.html

# the compiler: gcc for C program, define as g++ for C++
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall
ASAN_FLAGS = -fsanitize=address -fno-omit-frame-pointer -Wno-format-security
UBSAN_FLAGS = -fsanitize=undefined
TSAN_FLAGS = -fsanitize=thread

MEMORY= heap_buffer_overflow heap_use_after_free

$(MEMORY): heap*.c stack*.c
	$(CC) $(CFLAGS) -o build/$@_asan $<

hello: hello.c
	$(CC) $(CFLAGS) -o build/hello hello.c


