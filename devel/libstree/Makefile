# $NetBSD: Makefile,v 1.7 2008/07/14 12:56:02 joerg Exp $
#

DISTNAME=	libstree-0.4.0
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.icir.org/christian/downloads/

MAINTAINER=	gson@NetBSD.org
HOMEPAGE=	http://www.icir.org/christian/libstree/
COMMENT=	Suffix tree library

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX:Q}/share/doc/html

.include "../../mk/bsd.pkg.mk"
