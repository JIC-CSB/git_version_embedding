#!/bin/bash

# Write a suitable git identifier string into a header
# MRMH 2015-09-29

COMMIT_AUTHOR=`git log -n 1 --format=format:"%cn <%ce>"`
COMMIT_HASH=`git log -n 1 --format=format:"%H"`
COMMIT_DATE=`git log -n 1 --format=format:"%ad"`

GITFILE="gitcommit.h"

cat > $GITFILE << EOL
#ifndef GITCOMMIT_H
#define GITCOMMIT_H
char *git_commit_author = "$COMMIT_AUTHOR";
char *git_commit_hash = "$COMMIT_HASH";
char *git_commit_date = "$COMMIT_DATE";
#endif
EOL
