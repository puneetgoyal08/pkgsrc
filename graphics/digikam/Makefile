# $NetBSD: Makefile,v 1.65 2011/01/13 13:37:59 wiz Exp $
#

DISTNAME=	digikam-1.6.0
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=digikam/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://digikam.sourceforge.net/
COMMENT=	Advanced digital photo management application (KDE4)
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2 AND gnu-lgpl-v2.1

BUILD_DEPENDS+=	automoc4>=0.9.83:../../devel/automoc4
DEPENDS+=	qt4-sqlite3-[0-9]*:../../x11/qt4-sqlite3

PKG_DESTDIR_SUPPORT=	user-destdir
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

REPLACE_PERL=	utilities/scripts/digitaglinktree/digitaglinktree
USE_CMAKE=	yes
CMAKE_ARGS+=    -DMYSQLD_PATH:PATH=${BUILDLINK_PREFIX.mysql-server}/libexec
USE_TOOLS+=	gawk msgfmt perl:run pkg-config

.include "options.mk"

.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../databases/mysql51-server/buildlink3.mk"
.include "../../devel/libgphoto2/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
# for libkdcraw>=0.4.0
BUILDLINK_API_DEPENDS.kdegraphics4+=	kdegraphics4>=4.5
.include "../../graphics/kdegraphics4/buildlink3.mk"
.include "../../graphics/lcms/buildlink3.mk"
.include "../../graphics/liblqr/buildlink3.mk"
.include "../../multimedia/kdemultimedia4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
