#CFLAGS = -shared -lm -O2 -fPIC -std=c99 -Wall -Wextra -Wpedantic
CFLAGS = -shared -lm -O3 -fPIC -std=c99 -Wall -Wextra -Wpedantic -march=native -mtune=native
src = $(wildcard src/*.c)
libs = $(src:.c=.so)

%.so: %.c
	$(CC) $(CFLAGS) -o $@ $<

all: $(libs)

clean:
	rm -f $(libs)
