CC=gcc
CFLAGS=-I.

arch := $(shell uname -m)
bin := /usr/bin/ddr-timings-$(arch)

compile: timings.o 
	$(CC) -o ddr-timings timings.o

install: compile
	install -m 755 ddr-timings $(bin)

uninstall:
	rm $(bin)

clean:
	rm timings.o 2>/dev/null || true
	rm ddr-timings 2>/dev/null || true
