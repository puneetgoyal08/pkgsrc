# $NetBSD: Makefile,v 1.7 2011/01/13 13:36:43 wiz Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../meta-pkgs/xfce4/Makefile.common"

XFCE4_VERSION=	3.1

DISTNAME=	xfce4-genmon-plugin-${XFCE4_VERSION}
PKGREVISION=	6
CATEGORIES=	sysutils
MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-genmon-plugin/
COMMENT=	Xfce general purpose monitor plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
