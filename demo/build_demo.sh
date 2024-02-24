#!/bin/bash
OUT_DIR=out386

#1. hello1.c

cd .. &&\
${OUT_DIR}/bin/musl-gcc  -fno-PIC  -nostdinc -fno-stack-protector -march=i386 -m32 -O0 -fno-plt -I${OUT_DIR}/include -c demo/hello1.c -o demo/hello1.o && \
${OUT_DIR}/bin/musl-gcc -march=i386 -m32 --static demo/hello1.o ${OUT_DIR}/lib/libc.a -o demo/hello1.elf -T demo/hello.ld &&\
objdump -DS demo/hello1.elf > demo/hello1.hex &&\
cd -

cd .. &&\
${OUT_DIR}/bin/musl-gcc  -fno-PIC -nostdinc -fno-stack-protector -march=i386 -m32 -O0 -fno-plt -I${OUT_DIR}/include -DUSING_MUSL -c demo/hello1.c -o demo/hello1_musl.o && \
${OUT_DIR}/bin/musl-gcc  -march=i386 -m32 --static demo/hello1_musl.o ${OUT_DIR}/lib/libc.a -o demo/hello1_musl.elf -T demo/hello.ld &&\
objdump -DS demo/hello1_musl.elf > demo/hello1_musl.hex &&\
cd -


#2. mem.c

cd .. &&\
${OUT_DIR}/bin/musl-gcc  -fno-PIC -nostdinc -fno-stack-protector -march=i386 -m32 -O0 -fno-plt -I${OUT_DIR}/include -DUSING_MUSL -c demo/mem.c -o demo/mem.o && \
${OUT_DIR}/bin/musl-gcc  -march=i386 -m32 --static demo/mem.o ${OUT_DIR}/lib/libc.a -o demo/mem.elf -T demo/hello.ld &&\
objdump -DS demo/mem.elf > demo/mem.hex &&\
cd -

