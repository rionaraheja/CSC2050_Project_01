#include <stdio.h>
#include <stdlib.h>

int factorial(int num) {
    int result = 1;

    for (int i = num; i > 0; i--) {
        result = result * i;
    }

    return result;
}

int main(int argc, char *argv[]) {
    char *endptr;
    long num;

    num = strtol(argv[1], &endptr, 10);

    printf("%d\n", factorial((int)num));

    return 0;
}
