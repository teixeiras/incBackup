PREFIX ?= /usr/local
all: 
	@echo "Nothing to build"


.PHONY: create
create: 
	mkdir -p src/share/
	cp -a $(PREFIX)/share/incBackup/* src/share
	cp $(PREFIX)/bin/backup src/
	cp /etc/default/incBackup src/default
	cp /etc/systemd/system/incBackup.service src/


.PHONY: install
install:  
	mkdir -p $(DESTDIR)$(PREFIX)/share/incBackup
	cp -a src/share/* $(DESTDIR)$(PREFIX)/share/incBackup/
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -a src/backup $(DESTDIR)$(PREFIX)/bin/backup
	cp -a src/default  /etc/default/incBackup
	cp -a src/incBackup.service /etc/systemd/system/incBackup.service



.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/incBackup
	rm -f $(DESTDIR)$(PREFIX)/bin/backup
	rm /etc/default/incBackup
	rm /etc/systemd/system/incBackup.service

