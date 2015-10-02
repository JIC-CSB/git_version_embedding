#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<getopt.h>

#include "gitcommit.h"

void print_build_details()
{
    printf("Build commit hash: %s\n", git_commit_hash);
    printf("Build commit author: %s\n", git_commit_author);
    printf("Build commit date: %s\n", git_commit_date);
    printf("Build commit subject: %s\n", git_commit_subject);
    printf("\nTo return to this commit state, use:\n\n");
    printf("git checkout %s\n", git_commit_hash);
}

int main(int argc, char **argv)
{
    int c;
    int vflag = 0;

    while ((c = getopt(argc, argv, "v")) != -1) {
        switch (c) {
            case 'v':
                vflag = 1;
                break;
            default:
                break;
        }
    }
    
    if (vflag) {
        print_build_details();
        exit(2);
    }

    printf("Hello brave new world! Now we have more text.\nAnother line.\n");
    
    return 0;
}
