SHELL = /bin/bash

PROGRAM = trackpoint-settings
DESTDIR = ~/.local

.PHONY: all
all: test

.PHONY: install
install: ${PROGRAM}
	install --mode=0755 $< ${DESTDIR}/bin/$<

.PHONY: check
check: test

.PHONY: test
test: ${PROGRAM}
	shellcheck $<
