# Modified from what I found at http://stackoverflow.com/questions/2706064/compile-all-c-files-in-a-directory-into-separate-programs

PLATFORM ?= x86_64-linux-gnu
OPTIMIZATION ?= -O2
SRCS = $(wildcard *.c)
OBJS = $(patsubst %.c,$(PLATFORM)/%$(OPTIMIZATION).o,$(SRCS))
DUMPS = $(patsubst %.o,%,$(OBJS))

CC := gcc
CFLAGS := $(OPTIMIZATION)

.PHONY: all
all: $(OBJS) $(DUMPS)

.PHONY: clean
clean:
	rm -rf $(PLATFORM)

$(PLATFORM)/%$(OPTIMIZATION).o: %.c
	mkdir -p $(PLATFORM)
	$(@D)-$(CC) $(CFLAGS) -c -o $@ $<

$(PLATFORM)/%$(OPTIMIZATION): $(PLATFORM)/%$(OPTIMIZATION).o
	$(@D)-objdump -d $< > $@
