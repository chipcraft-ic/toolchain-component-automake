## -*- makefile-automake -*-
## Copyright (C) 1995-2020 Free Software Foundation, Inc.
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2, or (at your option)
## any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## ------------------------------ ##
##  Automake-provided m4 macros.  ##
## ------------------------------ ##

system_acdir = @system_acdir@
automake_acdir = @automake_acdir@

dist_automake_ac_DATA = \
  %D%/amversion.m4 \
  %D%/ar-lib.m4 \
  %D%/as.m4 \
  %D%/auxdir.m4 \
  %D%/cond.m4 \
  %D%/cond-if.m4 \
  %D%/depend.m4 \
  %D%/depout.m4 \
  %D%/dmalloc.m4 \
  %D%/extra-recurs.m4 \
  %D%/gcj.m4 \
  %D%/init.m4 \
  %D%/install-sh.m4 \
  %D%/lead-dot.m4 \
  %D%/lex.m4 \
  %D%/lispdir.m4 \
  %D%/maintainer.m4 \
  %D%/make.m4 \
  %D%/missing.m4 \
  %D%/mkdirp.m4 \
  %D%/obsolete.m4 \
  %D%/options.m4 \
  %D%/python.m4 \
  %D%/prog-cc-c-o.m4 \
  %D%/runlog.m4 \
  %D%/sanity.m4 \
  %D%/silent.m4 \
  %D%/strip.m4 \
  %D%/substnot.m4 \
  %D%/tar.m4 \
  %D%/upc.m4 \
  %D%/vala.m4

dist_system_ac_DATA = %D%/acdir/README

automake_internal_acdir = $(automake_acdir)/internal
dist_automake_internal_ac_DATA = %D%/internal/ac-config-macro-dirs.m4

# vim: ft=automake noet
