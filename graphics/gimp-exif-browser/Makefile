# $NetBSD: Makefile,v 1.6 2011/01/13 13:38:03 wiz Exp $
#

DISTNAME=	exif-browser
PKGNAME=	gimp-exif-browser-0.1.0
DIST_SUBDIR=	gimp-exif-browser-0.1.0
PKGREVISION=	6
CATEGORIES=	graphics
MASTER_SITES=	http://registry.gimp.org/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://registry.gimp.org/node/8839
COMMENT=	EXIF data browser plugin
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir
USE_TOOLS+=	intltool pkg-config

GNU_CONFIGURE=	yes

.include "../../graphics/gimp/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
