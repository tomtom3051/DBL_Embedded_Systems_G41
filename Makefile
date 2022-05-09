CPPFLAGS=-g -Wall
LDFLAGS=-g

build: main.o
	g++ $(LDFLAGS) -o main main.o

main.o: main.cc
	g++ $(CPPFLAGS) -c main.cc

clean:
	rm -f *.o

distclean: clean
	rm -f main

