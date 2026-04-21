#!/usr/bin/env bash

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux

./configure \
    --disable-doc \
    --prefix=$PREFIX \
    --with-npth-prefix=$PREFIX \
    --with-libgpg-error-prefix=$PREFIX \
    --with-libgcrypt-prefix=$PREFIX \
    --with-libksba-prefix=$PREFIX \
    --with-libassuan-prefix=$PREFIX \
    --with-ntbtls-prefix=$PREFIX \
    --enable-all-tests

make
make check
make install
