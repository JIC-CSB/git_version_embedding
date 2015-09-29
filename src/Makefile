all: whichcommit

clean:
	rm -f whichcommit gitcommit.h

gitcommit.h: rebuild-git-header
	bash build-header.sh

whichcommit: whichcommit.c gitcommit.h
	gcc whichcommit.c -o whichcommit
