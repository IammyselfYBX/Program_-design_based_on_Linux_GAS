callmax:callmax.o max.o
	ld -dynamic-link /lib/ld-linux.so.2 -lc callmax.o max.o -o callmax
max.o:max.s
	as -g max.s -o max.o
callmax.o:callmax.s
	as -g callmax.s -o callmax.o

clean:
	rm *.o callmax

