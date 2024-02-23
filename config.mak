# This version of config.mak was generated by:
# ./configure --prefix=out386/ --disable-shared --enable-debug --enable-optimize=O0 --target=i386
# Any changes made here will be lost if configure is re-run
AR = $(CROSS_COMPILE)ar
RANLIB = $(CROSS_COMPILE)ranlib
ARCH = i386
SUBARCH = 
ASMSUBARCH = 
srcdir = .
prefix = out386
exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin
libdir = $(prefix)/lib
includedir = $(prefix)/include
syslibdir = /lib
CC = gcc
CFLAGS = -march=i386 -m32 -fno-PIC -fno-stack-protector -DSYSCALL_NO_TLS=1
CFLAGS_AUTO = -g -O2 -fno-align-jumps -fno-align-functions -fno-align-loops -fno-align-labels -fira-region=one -fira-hoist-pressure -freorder-blocks-algorithm=simple -fno-prefetch-loop-arrays -fno-tree-ch -pipe -fno-unwind-tables -fno-asynchronous-unwind-tables -ffunction-sections -fdata-sections -mtune=generic -Wno-pointer-to-int-cast -Werror=implicit-function-declaration -Werror=implicit-int -Werror=pointer-sign -Werror=pointer-arith -Werror=int-conversion -Werror=incompatible-pointer-types -Werror=discarded-qualifiers -Werror=discarded-array-qualifiers -Waddress -Warray-bounds -Wchar-subscripts -Wduplicate-decl-specifier -Winit-self -Wreturn-type -Wsequence-point -Wstrict-aliasing -Wunused-function -Wunused-label -Wunused-variable
CFLAGS_C99FSE = -std=c99 -nostdinc -ffreestanding -fexcess-precision=standard -frounding-math -fno-strict-aliasing -Wa,--noexecstack
CFLAGS_MEMOPS = -fno-tree-loop-distribute-patterns
CFLAGS_NOSSP = -fno-stack-protector
CPPFLAGS = 
LDFLAGS = -m elf_i386
LDFLAGS_AUTO = -Wl,--sort-section,alignment -Wl,--sort-common -Wl,--gc-sections -Wl,--hash-style=both -Wl,--no-undefined -Wl,--exclude-libs=ALL -Wl,--dynamic-list=./dynamic.list
#CROSS_COMPILE = i386-
LIBCC = -lgcc -lgcc_eh
OPTIMIZE_GLOBS = O0/*.c
ALL_TOOLS =  obj/musl-gcc
TOOL_LIBS =  lib/musl-gcc.specs
ADD_CFI = yes
MALLOC_DIR = mallocng
SHARED_LIBS =
WRAPCC_GCC = $(CC)
