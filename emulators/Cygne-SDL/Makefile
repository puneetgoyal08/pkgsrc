# $NetBSD: Makefile,v 1.13 2006/12/18 01:34:54 wiz Exp $
#

DISTNAME=		Cygne-SDL-0.1-src
PKGNAME=		${DISTNAME:S/-src//}
PKGREVISION=		5
CATEGORIES=		emulators
MASTER_SITES=		http://sdlemu.ngemu.com/OpenProjects/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://icculus.org/Cygne-SDL/
COMMENT=		Bandai Wonderswan Color handheld emulator

BUILD_DEPENDS+=		nasm>=0.98:../../devel/nasm
BUILD_DEPENDS+=		zip>=2.0:../../archivers/zip

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/Cygne-SDL-0.1
MAKE_FILE=		Makefiles/Makefile.unix
NO_CONFIGURE=		yes
BUILD_DIRS=		src
USE_LANGUAGES=		c c++

# Uses i386 assembly code
ONLY_FOR_PLATFORM=	*-*-i386

INSTALLATION_DIRS=	bin

post-build:
	cd ${WRKSRC}/WonderSnake && \
		${LOCALBASE}/bin/zip Wondersnake.zip Wondersnake.wsc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/cygne ${DESTDIR}${PREFIX}/bin/Cygne-SDL
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/Cygne-SDL
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/Cygne-SDL
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/Cygne-SDL
	${INSTALL_DATA} ${WRKSRC}/WonderSnake/Wondersnake.txt \
		${DESTDIR}${PREFIX}/share/Cygne-SDL
	${INSTALL_DATA} ${WRKSRC}/WonderSnake/Wondersnake.zip \
		${DESTDIR}${PREFIX}/share/Cygne-SDL

.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
