#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="gnome-dvb-daemon"

(test -f $srcdir/configure.ac) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level $PKG_NAME directory"
    exit 1
}

which gnome-autogen.sh || {
	echo "You need to install gnome-common from the GNOME git"
	exit 1
}

touch ChangeLog

REQUIRED_AUTOMAKE_VERSION=1.11
REQUIRED_AUTOCONF_VERSION=2.63.2
REQUIRED_INTLTOOL_VERSION=0.40.0 . gnome-autogen.sh "$@"
