# Embedding git versions

This repository contains supporting scripts and examples to show how to embed 
git variables (such as commit hash, author and date) into executable files at
build time.

## How to use it

1. Copy the pre-commit file from the resources directory into the path:

    .git/hooks/

of your repository. Update the path to the rebuild-git-header file if 
necessary. Make sure that the file is executable.

2. Update your Makefile (or other build system) to ensure that build-header.sh
is run whenever your code is built. See the example Makefile for one way to do
this.

3. Include gitcommit.h in your code.

4. Add options to your code to print out the git commit details (although these
can be extracted from the compiled file if necessary). Again, see example code
for suggested usage.

## How it works

1. Whenever a commit is made, a git hook is used to update an empty file called
rebuild-git-header. This file is intended to signal that a commit has been 
made.

2. When make is run, the makefile runs the build-header.sh script. This script
generates a header file, gitcommit.h which defines strings which include 
information about the commit.

3. The compiled code can then make use of these strings to print information 
about the state of the git repository at the time the build was made.

## Caveats

1. If you haven't commited your changes, then you'll get the last commit in the
build, this might be misleading.

2. When you revert to a previous commit, be careful.
