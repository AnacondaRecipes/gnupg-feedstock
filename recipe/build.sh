#!/usr/bin/env bash

./configure \
    --disable-doc \
    --prefix=$PREFIX \
    --with-npth-prefix=$PREFIX \
    --with-libgpg-error-prefix=$PREFIX \
    --with-libgcrypt-prefix=$PREFIX \
    --with-libksba-prefix=$PREFIX \
    --with-libassuan-prefix=$PREFIX \
    --enable-all-tests

make
make check
make install
