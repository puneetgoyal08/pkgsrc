# $NetBSD: Makefile,v 1.21 2008/07/14 12:56:15 joerg Exp $

DISTNAME=	hanterm-3.1.6
PKGREVISION=	4
CATEGORIES=	x11 korean
MASTER_SITES=	http://download.kldp.net/hanterm/hanterm/3.1.6/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://hanterm.kldp.net/
COMMENT=	X11R6-based xterm hacked for managing Korean languages

PKG_DESTDIR_SUPPORT=	user-destdir

USE_IMAKE=	YES

.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXp/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
