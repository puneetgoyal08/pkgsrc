# $NetBSD: Makefile,v 1.8 2011/01/13 13:39:16 wiz Exp $

DISTNAME=	fprint_demo-0.4
PKGNAME=	${DISTNAME:S/_/-/}
PKGREVISION=	8
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fprint/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	plunky@rya-online.net
HOMEPAGE=	http://reactivated.net/fprint/wiki/Fprint_demo
COMMENT=	Simple GTK+ application to demonstrate libfprint's capabilities

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkg-config

.include "../../security/libfprint/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
