#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>

int main() {
	int i;
	printf("PID: %d\n", getpid());
	for (i = 0; i < 4; i++) {
		if (fork()) {
			if (fork()) {
				break;
			}
		}
	}
	sleep(1000);
	return 0;
}




