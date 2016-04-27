# Process this file with autoconf to to produce a configure script
# 
# Layout referred from https://www.gnu.org/software/autoconf/manual/
# autoconf-2.61/html_node/configure_002eac-Layout.html#configure_002eac-Layout
#
# Heavily inspired from Keith's repo : https://github.com/keithw/sourdough
#

AC_PREREQ([2.68])
AC_INIT([Pipelines], [0.01], [rbhalerao@eng.ucsd.edu])
AM_INIT_AUTOMAKE([foreign subdir-objects])
AC_CONFIG_SRCDIR([src/helloworld.c])
AC_CONFIG_HEADERS([config.h])

# Add CXXFLAGS
CXX11_FLAGS="-std=c++11 -pthread"
NEEDED_CXXFLAGS="-Wall"
AC_SUBST([CXX11_FLAGS])
AC_SUBST([NEEDED_CXXFLAGS])

# Checks for programs
LT_INIT
LT_LANG([C++])
AC_PROG_CXX
AC_PROG_RANLIB

# Checks for libraries

# Checks for header files

# Checks for types

# Checks for structures

# Checks for compiler characteristics

# Checks for library functions

# Checks for system services

AC_CONFIG_FILES([Makefile src/Makefile examples/Makefile])
AC_OUTPUT
