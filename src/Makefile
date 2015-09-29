all: whichcommit

clean:
	rm -f whichcommit gitcommit.h

gitcommit.h:
	bash build-header.sh

whichcommit: whichcommit.c
	gcc whichcommit.c -o whichcommit
