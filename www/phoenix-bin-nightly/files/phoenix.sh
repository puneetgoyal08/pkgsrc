#!@SH@
# $NetBSD: phoenix.sh,v 1.2 2003/04/14 21:28:11 grant Exp $

LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:@PREFIX@/lib/MozillaFirebird-@PLATFORM@"
export LD_LIBRARY_PATH

exec @PREFIX@/lib/MozillaFirebird-@PLATFORM@/MozillaFirebird "$@"
