#! /bin/sh
# Copyright (C) 2010-2012 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Make sure configure options relative to automake silent rules are
# added to the configure help screen.

. ./defs || Exit 1

: > Makefile.am
$ACLOCAL

cp configure.ac configure.tmpl

q="[\`'\"]"

for args in '' 'yes' 'no'; do
  cp -f configure.tmpl configure.ac
  test x"$args" = x || echo "AM_SILENT_RULES([$args])/" >> configure.ac
  cat configure.ac # For debugging.
  $AUTOCONF --force
  grep_configure_help --enable-silent-rules \
                      " less verbose build.*\\(undo.*${q}make V=1${q}"
  grep_configure_help --disable-silent-rules \
                      " verbose build.*\\(undo.*${q}make V=0${q}"
done

: