#!/usr/bin/env bash

#export CPPFLAGS="-DIN_EXCL_UNLINK=0x04000000 $CPPFLAGS"  # [linux]
#export LDFLAGS="-lrt $LDFLAGS"                           # [linux]
./configure --prefix=$PREFIX --enable-all-tests
make
make check
make install
