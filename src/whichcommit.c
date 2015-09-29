#include<stdio.h>

#include "gitcommit.h"

void print_build_details()
{
    printf("Build commit: %s\n", git_commit_hash);
}

int main(int argc, char *argv[])
{
    print_build_details();

    printf("Hello world\n");
    
    return 0;
}
