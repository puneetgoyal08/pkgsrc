# $NetBSD: Makefile,v 1.7 2008/03/08 08:56:47 adam Exp $

DISTNAME=	ntfsprogs-2.0.0
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=linux-ntfs/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.linux-ntfs.org/
COMMENT=	Linux-NTFS project utilities for the Windows NT Filesystem

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

# XXX support for this should be possibly integrated with other
# gnome pkgsrc and this could be a configurable option
CONFIGURE_ARGS+=	--disable-gnome-vfs

GCC_REQD+=	2.96

.include "../../mk/bsd.pkg.mk"
