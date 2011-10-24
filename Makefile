CC = gcc
CFLAGS = -Wall -g
OBJECT = dnw2.o

dnw2: $(OBJECT)
	$(CC) $(CFLAGS) -lusb -o dnw2 $(OBJECT)

dnw2.o: dnw2.c
	$(CC) $(CFLAGS) -c dnw2.c

clean:
	rm -f $(OBJECT) dnw2
