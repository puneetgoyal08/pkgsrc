# $NetBSD: Makefile,v 1.21 2011/01/13 13:36:50 wiz Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../meta-pkgs/xfce4/Makefile.common"

XFCE4_VERSION=	0.6.1

DISTNAME=	xfce4-datetime-plugin-${XFCE4_VERSION}
PKGREVISION=	5
CATEGORIES=	time
MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-datetime-plugin/
EXTRACT_SUFX=	.tar.bz2
COMMENT=	Xfce calendar plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../x11/libxfce4gui/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
