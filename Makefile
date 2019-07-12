#CFLAGS = -shared -lm -O2 -fPIC -std=c99 -Wall -Wextra -Wpedantic
CFLAGS = -shared -lm -O3 -fPIC -std=c99 -Wall -Wextra -Wpedantic -march=native -mtune=native
src = $(wildcard src/*.c)
obj = $(src:.c=.o)

all: $(obj)

clean:
	rm -f $(obj)
