SUBDIRS = src examples

build: config.h
	cd src && $(MAKE) $(AM_MAKEFLAGS) build

lambdainstall: config.h
	cd src && $(MAKE) $(AM_MAKEFLAGS) lambdainstall

lambdaupdate: config.h
	cd src && $(MAKE) $(AM_MAKEFLAGS) lambdaupdate

check: config.h
	cd src && $(MAKE) $(AM_MAKEFLAGS) check
