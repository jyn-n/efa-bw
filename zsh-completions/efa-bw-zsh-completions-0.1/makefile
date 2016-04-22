DESTDIR=/
name=efa-bw

install:
	mkdir -p $(DESTDIR)usr/share/$(name)/
	install -m 0644 lines $(DESTDIR)usr/share/$(name)/
	install -m 0644 stops $(DESTDIR)usr/share/$(name)/
	mkdir -p $(DESTDIR)usr/share/zsh/site-functions
	install -m 0644 _efa-bw $(DESTDIR)usr/share/zsh/site-functions/

check:

.PHONY: install check
