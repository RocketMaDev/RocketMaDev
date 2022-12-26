#include <stdlib.h>
#include <stdio.h>
#include <string.h>
int main(int args, char** argv){
    if (args < 3) {
        printf("Too few args.\n");
        return 0;
    }
    int first = strlen(argv[1]);
    int second = strlen(argv[2]);
    int isDir = argv[1][first - 1] == '/';
    if (isDir) {
        printf("Please use \\\\ instead of / to signal a folder.\n"
                "And use `sudo` to elevate your console.\n");
        return 0;
    }
    isDir = argv[1][first - 1] == '\\';
    int n = 7 + first + 1 + second + 1;
    if (isDir)
        n += 3;
    char *ret = (char *)calloc(n, sizeof(char) * n);
    if (ret == NULL)
        return -1;
    ret[0] = '\0';
    if (isDir)
        strcat(ret, "mklink /D ");
    else
        strcat(ret, "mklink ");
    strcat(ret, argv[2]);
    strcat(ret, " ");
    strcat(ret, argv[1]);
    int val = system(ret);
    free(ret);
    return val;
}
