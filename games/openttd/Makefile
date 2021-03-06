# $NetBSD: Makefile,v 1.38 2011/01/13 13:37:49 wiz Exp $

DISTNAME=	openttd-1.0.5-source
PKGNAME=	${DISTNAME:S/-source//}
PKGREVISION=	3
CATEGORIES=	games x11
MASTER_SITES=	http://binaries.openttd.org/releases/${PKGVERSION_NOREV}/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.openttd.org/
COMMENT=	Open source clone of Transport Tycoon Deluxe
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkg-config
BUILD_DEFS+=		VARBASE
BUILD_TARGET=		bundle

HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix-dir=${PREFIX}
CONFIGURE_ARGS+=	--binary-dir=bin
CONFIGURE_ARGS+=	--data-dir=share/openttd
CONFIGURE_ARGS+=	--doc-dir=share/doc/openttd
CONFIGURE_ARGS+=	--icon-theme-dir=share/icons/hicolor
CONFIGURE_ARGS+=	--install-dir=${DESTDIR}
CONFIGURE_ARGS+=	--man-dir=${PKGMANDIR}/man6
CONFIGURE_ARGS+=	--menu-dir=share/applications
CONFIGURE_ARGS+=	--personal-dir=.openttd
CONFIGURE_ARGS+=	--shared-dir=${VARBASE}/games/openttd

.include "../../mk/bsd.prefs.mk"

.if (${OPSYS} == "DragonFly")
CONFIGURE_ARGS+=	--os=FREEBSD
.endif

.if (${OPSYS} == "Darwin")
CONFIGURE_ARGS+=	--with-cocoa
CONFIGURE_ARGS+=	--without-application-bundle
CONFIGURE_ARGS+=	--without-osx-sysroot
.else
.include "../../devel/SDL/buildlink3.mk"
.endif

.include "../../archivers/lzo/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
