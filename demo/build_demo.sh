#!/bin/bash
OUT_DIR=out386

cd .. &&\
${OUT_DIR}/bin/musl-gcc  -fno-PIC  -nostdinc -fno-stack-protector -march=i386 -m32 -O0 -fno-plt -I${OUT_DIR}/include -c demo/hello1.c -o demo/hello1.o && \
${OUT_DIR}/bin/musl-gcc -march=i386 -m32 --static demo/hello1.o ${OUT_DIR}/lib/libc.a -o demo/hello1 -T demo/hello.ld &&\
objdump -DS demo/hello1 > demo/hello1.hex &&\
cd -

cd .. &&\
${OUT_DIR}/bin/musl-gcc  -fno-PIC -nostdinc -fno-stack-protector -march=i386 -m32 -O0 -fno-plt -I${OUT_DIR}/include -DUSING_MUSL -c demo/hello1.c -o demo/hello1_musl.o && \
${OUT_DIR}/bin/musl-gcc  -march=i386 -m32 --static demo/hello1_musl.o ${OUT_DIR}/lib/libc.a -o demo/hello1_musl -T demo/hello.ld &&\
objdump -DS demo/hello1_musl > demo/hello1_musl.hex &&\
cd -

