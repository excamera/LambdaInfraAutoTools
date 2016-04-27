# Makefile to compile source code
#
# Add the sub-directories of src dir
# in this option separated by a space
#

AM_CPPFLAGS = $(CXX11_FLAGS)
AM_CXXFLAGS = $(NEEDED_CXXFLAGS)

bin_PROGRAMS              = helloworld
helloworlddir             = src
helloworld_LDFLAGS        = -static
helloworld_SOURCES        = helloworld.cc
helloworld_PROGRAMS       = helloworld
nodist_helloworld_SOURCES = helloworld.hh
noinst_LIBRARIES          = libhelloworld.a
libhelloworld_a_SOURCES   = helloworld.hh helloworld.cc
