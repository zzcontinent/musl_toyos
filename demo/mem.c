#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <errno.h>

int main()
{
	int len = 1024;
	int i = 0;
	char *pmem = (char*)malloc(len);
	if (!pmem) {
		perror("malloc failed!\r\n");
	}
	memset(pmem, 0x5a, len);
	for (i=0; i<len; i++) {
		printf("%x ", pmem[i]);
	}

	exit(0);
	return 0;
}
