#include <stdio.h>

int main(int argc, char *argv[]){
    int i, j, sum;

    for(i = 0; argv[1][i]; i ++){
        sum = 0;
        for(j = 1; j < argc; j ++){
            sum += (unsigned char)argv[j][i];
        }

        sum = (sum + (argc - 1) / 2) / (argc - 1);
        if (sum > 255) sum = 255;
        putchar(sum);
    }
}
