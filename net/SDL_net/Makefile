# $NetBSD: Makefile,v 1.20 2007/07/26 00:06:04 wiz Exp $

DISTNAME=	SDL_net-1.2.7
CATEGORIES=	net
MASTER_SITES=	http://www.libsdl.org/projects/SDL_net/release/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.libsdl.org/projects/SDL_net/
COMMENT=	Small sample cross-platform networking library for SDL

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-gui

.include "../../devel/SDL/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
