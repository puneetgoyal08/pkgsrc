# $NetBSD: Makefile,v 1.7 2006/12/27 13:37:42 joerg Exp $

DISTNAME=		asnap
PKGNAME=		${DISTNAME}-1.0
PKGREVISION=		2
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XCONTRIB:S/contrib/R5contrib/}

MAINTAINER=		he@NetBSD.org
COMMENT=		Takes a snapshot of a region of the screen

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}
USE_IMAKE=		yes

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
