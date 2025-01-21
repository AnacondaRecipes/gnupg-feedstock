#!/usr/bin/env bash

./configure --prefix=$PREFIX --enable-all-tests
make
make check
make install
