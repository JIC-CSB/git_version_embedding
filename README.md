# Embedding git versions

This repository contains supporting scripts and examples to show how to embed 
git variables (such as commit hash, author and date) into executable files at
build time.

## How it works

1. Whenever a commit is made, a git hook is used to update an empty file called
rebuild-git-header. This file is intended to signal that a commit has been 
made.

2. When make is run, the makeful runs the build-header.sh script. This script
generates a header file, gitcommit.h which defines strings 

## How to use it

1. Copy the pre-commit file from the resources directory into the path:

    .git/hooks/

of your repository. Update the path to the rebuild-git-header file if 
necessary.

2. Update your Makefile (or other build system) to ensure that build-header.sh
is run whenever your code is built.

3. Include gitcommit.h in your code.

## To document

gitignore
add header
update makefile
hooks for commit? with executable
