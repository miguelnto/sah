MAIN = sah
INSTALLDIR = /usr/bin

install:
	mkdir -p ${DESTDIR}${INSTALLDIR}
	install -m 0755 ${MAIN} ${DESTDIR}${INSTALLDIR}/${MAIN}

uninstall:
	rm -f ${DESTDIR}${INSTALLDIR}/${MAIN}

.PHONY: install uninstall
