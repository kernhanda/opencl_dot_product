PROJ=dot_product

CC=gcc

CFLAGS = -std=c99 -Wall -DUNIX -g -DDEBUG

LIBS=-lOpenCL -lrt

$(PROJ): $(PROJ).c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

.PHONY: clean

clean:
	rm $(PROJ)
