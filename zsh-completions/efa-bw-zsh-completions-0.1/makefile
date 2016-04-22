DESTDIR=/
name=efa-bw

install:
	mkdir -p $(DESTDIR)usr/local/share/$(name)/
	install -m 0644 lines $(DESTDIR)usr/local/share/$(name)/
	install -m 0644 stops $(DESTDIR)usr/local/share/$(name)/
	mkdir -p $(DESTDIR)usr/local/share/zsh/site-functions
	install -m 0644 _efa-bw $(DESTDIR)usr/local/share/zsh/site-functions

check:

.PHONY: install check
