all:

clean:

install:
	mkdir -p $(DESTDIR)/etc/anonsurf/
	mkdir -p $(DESTDIR)/etc/tor/
	mkdir -p $(DESTDIR)/usr/bin/
	mkdir -p $(DESTDIR)/usr/share/applications/
	mkdir -p $(DESTDIR)/usr/share/parrot-menu/applications/
	cp onion.pac $(DESTDIR)/etc/anonsurf/onion.pac
	ln -s /etc/anonsurf/onion.pac $(DESTDIR)/etc/tor/onion.pac
	cp torrc $(DESTDIR)/etc/anonsurf/torrc
	cp anonsurf.sh $(DESTDIR)/usr/bin/anonsurf
	cp exitnode-selector $(DESTDIR)/usr/bin/exitnode-selector
	cp exitnodes.csv $(DESTDIR)/etc/anonsurf/exitnodes.csv
	cp resolv.conf.opennic $(DESTDIR)/etc/anonsurf/resolv.conf.opennic
	chown root:root $(DESTDIR)/usr/bin/anonsurf
	chown root:root $(DESTDIR)/usr/bin/exitnode-selector
	chown root:root $(DESTDIR)/etc/anonsurf/resolv.conf.opennic
	chmod 775 $(DESTDIR)/usr/bin/anonsurf
	ln -s /usr/bin/anonsurf $(DESTDIR)/usr/bin/anon
	cp -rf launchers/* $(DESTDIR)/usr/share/applications/
	chown root:root $(DESTDIR)/etc/anonsurf -R
	chmod 644 $(DESTDIR)/etc/anonsurf -R
