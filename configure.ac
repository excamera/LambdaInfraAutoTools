# Process this file with autoconf to to produce a configure script
# 
# Layout referred from https://www.gnu.org/software/autoconf/manual/
# autoconf-2.61/html_node/configure_002eac-Layout.html#configure_002eac-Layout
#
# Heavily inspired from Keith's repo : https://github.com/keithw/sourdough
#

AC_PREREQ([2.68])
AC_INIT([Pipelines], [0.01], [rbhalerao@eng.ucsd.edu])
AM_INIT_AUTOMAKE([foreign])
AC_CONFIG_SRCDIR([src/run.hh])
AC_CONFIG_HEADERS([config.h])

# Add CXXFLAGS
CXX11_FLAGS="-std=c++11 -pthread"
NEEDED_CXXFLAGS="-Wall -pedantic -Wextra -Weffc++ -Werror"
