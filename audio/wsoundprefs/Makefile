# $NetBSD: Makefile,v 1.37 2011/01/13 13:37:09 wiz Exp $

DISTNAME=	WSoundPrefs-1.1.1
PKGNAME=	wsoundprefs-1.1.1
PKGREVISION=	12
CATEGORIES=	audio wm windowmaker
MASTER_SITES=	# ftp://shadowmere.student.utwente.nl/pub/WindowMaker/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://shadowmere.student.utwente.nl/
COMMENT=	WSoundServer configuration utility

PKG_DESTDIR_SUPPORT=	user-destdir

USE_IMAKE=		yes
BROKEN_GETTEXT_DETECTION=	yes

.include "../../audio/wsoundserver/buildlink3.mk"
.include "../../wm/windowmaker/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
