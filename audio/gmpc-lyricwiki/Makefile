# $NetBSD: Makefile,v 1.4 2011/02/27 23:16:36 wiz Exp $
#

DISTNAME=	gmpc-lyricwiki-0.20.0
PKGREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://download.sarine.nl/Programs/gmpc/0.20.0/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gmpc.wikia.com/wiki/GMPC_PLUGIN_LYRICWIKI
COMMENT=	Lyrics plugin for GMPC using Lyricwiki
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	intltool pkg-config

.include "../../audio/gmpc/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
