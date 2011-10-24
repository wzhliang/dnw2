CC=gcc
CFLAGS=-Wall -g
OBJS=dnw2.o


dnw2: $(OBJS)
	$(CC) $(CFLAGS) -lusb -o $@ $+

%o:%c
	$(CC) -c $(CFLAGS) -o $@

clean:
	rm -f $(OBJS) dnw2
