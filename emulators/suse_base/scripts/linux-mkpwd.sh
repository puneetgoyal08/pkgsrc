#!/bin/sh
#
# $NetBSD$

SRCDIR=/etc
DESTDIR=@@EMULDIR@@/etc

umask 22
cd $DESTDIR
cp $SRCDIR/passwd .
sed s/^wheel:/root:/ <$SRCDIR/group >group

umask 77
awk -F: '{print($1":"$2":0:0:10000::::")}' <$SRCDIR/master.passwd >shadow
sed s/^wheel:/root:/ <$SRCDIR/group |
awk -F: '{print($1":*:root:root")}' >gshadow

exit 0
