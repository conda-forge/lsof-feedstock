#!/usr/bin/env bash

LSOF_CC="${CC} ${CPPFLAGS} ${CFLAGS} ${LDFLAGS}" \
    ./Configure -n $(uname|tr '[:upper:]' '[:lower:]')
make -j${CPU_COUNT}
mkdir -p $PREFIX/bin/
cp ./lsof $PREFIX/bin/
