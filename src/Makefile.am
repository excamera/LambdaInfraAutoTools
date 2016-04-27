# Makefile to compile source code
#
# Add the sub-directories of src dir
# in this option separated by a space
#

bin_PROGRAMS              = helloworld
helloworlddir             = src
helloworld_LDFLAGS        = -static
helloworld_SOURCES        = helloworld.c
helloworld_PROGRAMS       = helloworld
noinst_LIBRARIES          = libhelloworld.a
libhelloworld_a_SOURCES   = helloworld.c

build: helloworld
lambdainstall: build
	$(shell ./setuplambda.sh $<)
lambdaupdate: build
	$(shell ./updatelambda.sh $<)
check: build
	$(shell ./invokelambda.sh $<)
