EXEC = main doc dist clean
CFLAGS = -Wall -g -std=c99
TARGETS = main.o grille.o io.o jeu.o

all: $(EXEC)

main: $(TARGETS)
	gcc -o main $(TARGETS)
	
main.o: main.c jeu.h io.h grille.h
	gcc -c $(CFLAGS) main.c

jeu.o: jeu.c jeu.h
	gcc -c $(CFLAGS) jeu.c

grille.o: grille.c grille.h
	gcc -c $(CFLAGS) grille.c

io.o: io.c io.h
	gcc -c $(CFLAGS) io.c
	
doc:
	doxygen
	
dist:
	tar cfJ jeu_de_la_vie_v1.tar.xz *.c Makefile Doxyfile
	
clean:
	rm *.o

 
