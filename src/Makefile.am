# Makefile to compile source code
#
# Add the sub-directories of src dir
# in this option separated by a space
#

SUBDIRS=lambda

AM_CPPFLAGS = $(CXX11_FLAGS)
AM_CXXFLAGS = $(NEEDED_CXXFLAGS)

noinst_LIBRARIES = liblambda.a

liblambda_a_SOURCES = lambda/helloworld.hh \
		      lambda/helloworld.cc
