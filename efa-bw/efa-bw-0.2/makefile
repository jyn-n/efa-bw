DESTDIR=/
name=efa-bw

install:
	mkdir -p $(DESTDIR)usr/bin
	install -m 0755 $(name) $(DESTDIR)usr/bin
	mkdir -p $(DESTDIR)usr/share/efa-bw
	install -m 0664 baseurls $(DESTDIR)usr/share/efa-bw

check:

.PHONY: install check
