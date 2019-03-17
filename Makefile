PREFIX = /usr/local
all: 
	@echo "Nothing to build"

.PHONY: install
install: src/backup 
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/mygame

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/mygame
