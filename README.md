Assembly Exploration
====================

This is a quick Makefile and bash script to compile and disassemble all of the *.c* files in the base directory with every -gcc in your `PATH`. I'm far too lazy to keep typing all of these commands by hand.

I tried to get `make` to do it all, but gave up and made a bash wrapper because I've learned far more bash tricks at this point... If you stumble across this and know the answer, I'd be very curious.

Usage:

    ./make-all.sh

Results (assuming `avr-gcc`, `x86_64-linux-gnu-gcc`, and `xtensa-lx106-elf-gcc` are in your `PATH`) :

    ├── avr
    │   ├── funcs-O0
    │   ├── funcs-O0.o
    │   ├── funcs-O2
    │   ├── funcs-O2.o
    │   ├── test-O0
    │   ├── test-O0.o
    │   ├── test-O2
    │   └── test-O2.o
    ├── funcs.c
    ├── LICENSE
    ├── make-all.sh
    ├── Makefile
    ├── test.c
    ├── x86_64-linux-gnu
    │   ├── funcs-O0
    │   ├── funcs-O0.o
    │   ├── funcs-O2
    │   ├── funcs-O2.o
    │   ├── test-O0
    │   ├── test-O0.o
    │   ├── test-O2
    │   └── test-O2.o
    └── xtensa-lx106-elf
        ├── funcs-O0
        ├── funcs-O0.o
        ├── funcs-O2
        ├── funcs-O2.o
        ├── test-O0
        ├── test-O0.o
        ├── test-O2
        └── test-O2.o

`test.c` and `funcs.c` are based on simple examples from [David Welch](https://github.com/dwelch67) that prompted this.
