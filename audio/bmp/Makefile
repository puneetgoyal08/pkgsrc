# $NetBSD: Makefile,v 1.35 2011/07/21 13:05:46 obache Exp $
#

BMP_ENABLE_ENCODERS=	yes
PKG_DESTDIR_SUPPORT=	user-destdir

.include "Makefile.common"
PKGREVISION=		12

DEPENDS+=		unzip-[0-9]*:../../archivers/unzip

PLIST_VARS+=		cdaudio
.if ${OPSYS} != "Darwin"
PLIST.cdaudio=		yes
.endif
PRINT_PLIST_AWK+=	/cdaudio/ { print "$${PLIST.cdaudio}" $$0; next }

# XXX Workaround a crash during shutdown that happens when dlclose(3)ing
# any open plugin.  libstdc++ gets dynamically linked in when the id3lib
# library is loaded, and is the one causing problems.  See PR pkg/26846
# for more information.
USE_LANGUAGES=		c c++
LDFLAGS.NetBSD+=	-lstdc++ -lm

.if ${OPSYS} == "SunOS"
MAKE_ENV+=	SunOS_LDFLAGS="-shared -mimpure-text"
.endif

.include "../../audio/id3lib/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"

.include "../../mk/bsd.pkg.mk"
