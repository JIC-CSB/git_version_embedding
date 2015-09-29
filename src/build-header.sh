#!/bin/bash

# Write a suitable git identifier string into a header

COMMIT_AUTHOR=`git log -n 1 --format=format:"%cn <%ce>"`
COMMIT_HASH=`git log -n 1 --format=format:"%H"`
COMMIT_DATE=`git log -n 1 --format=format:"%ad"`

GITFILE="gitcommit.h"

cat > $GITFILE << EOL
char *git_commit_author = "$COMMIT_AUTHOR";
char *git_commit_hash = "$COMMIT_HASH";
char *git_commit_date = "$COMMIT_DATE";
EOL
