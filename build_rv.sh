#!/bin/bash
export CROSS_COMPILE=riscv64-unknown-elf-
make clean
./configure --host=riscv64 --prefix=outrv64 --disable-shared
make -j8
make install
