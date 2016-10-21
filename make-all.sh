#!/bin/bash

OBJDUMPS=$(find $(echo $PATH | tr : ' ') -name '*-objdump')
for OBJDUMP in $OBJDUMPS; do
    OBJDUMP=$(basename $OBJDUMP)
    export PLATFORM=${OBJDUMP%-objdump}
    for OPTIMIZATION in -O0 -O2; do
        echo "Making $PLATFORM $OPTIMIZATION"
        export PLATFORM OPTIMIZATION
        make $@
    done
done
