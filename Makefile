DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-git-traverse
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-git-traverse
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/git-traverse  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
