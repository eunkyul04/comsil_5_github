animal_exe : dog.o blackcow.o turtle.o main.o
dog.o : dog.c
blackcow.o : blackcow.c
turtle.o : turtle.c
main.o : main.c

cc = gcc
target = animal_exe
objects = main.o dog.o blackcow.o turtle.o

$(target) : $(objects)
	$(cc) -o $(target) $(objects)

$(objects) : animal.h

.PHONY : clean
clean : 
	rm -f $(target) $(objects)
