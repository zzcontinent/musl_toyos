#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <syscall.h>

const char * test_str = "===> hello world!\r\n";

//#define USING_MUSL

int main()
{
	int loop_cnt = 100;
	int ret = 0;
	while(loop_cnt--) {
#ifdef USING_MUSL
		printf("musl %s", test_str);
		//printf("musl!\n");
#else
		asm volatile (
				"int %1"
				: "=a" (ret)
				: "i" (0x80),
				"a" (__NR_write),
				"b" (1),
				"c" (test_str),
				"d" (strlen(test_str)),
				"S" (4),
				"D" (5)
				: "cc", "memory");
#endif
	}
	//exit(0xbeaf);

	return ret;
}

