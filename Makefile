PREFIX = /usr

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 adaos{.gpg,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/adaos{.gpg,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/s

# with trusted
# PREFIX = /usr
#
# install:
# 	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
# 	install -m0644 adaos{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
#
# uninstall:
# 	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/adaos{.gpg,-trusted,-revoked}
# 	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/s
