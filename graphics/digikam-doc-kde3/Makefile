# $NetBSD: Makefile,v 1.5 2011/01/13 13:37:58 wiz Exp $

DISTNAME=		digikam-doc-0.9.5
PKGREVISION=		7
CATEGORIES=		graphics kde
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=digikam/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.digikam.org/
COMMENT=		Documentation for Digikam (KDE3)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake perl
USE_LANGUAGES=		c c++
GNU_CONFIGURE=		yes

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
