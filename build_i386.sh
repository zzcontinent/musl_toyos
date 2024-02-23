#!/bin/bash
[ $# != 1 ] && echo "./build_i386.sh conf | build" && exit 0


if [ x"$1" == x"conf" ];then
	make clean
	export CC=gcc CFLAGS='-march=i386 -m32 -fno-PIC -fno-stack-protector -DSYSCALL_NO_TLS=1' CROSS_COMPILE='' LDFLAGS='-m elf_i386'
	./configure --prefix=out386/ --disable-shared --enable-debug --enable-optimize=O0 --target=i386
fi

if [ x"$1" == x"build" ];then
	make -j8
	make install
fi
