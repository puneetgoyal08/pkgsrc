# $NetBSD: Makefile,v 1.18 2011/10/13 10:42:01 ryoon Exp $
#

DISTNAME=	Sigil-0.4.2-Code
PKGNAME=	${DISTNAME:S/-Code//}
CATEGORIES=	editors
MASTER_SITES=	http://sigil.googlecode.com/files/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/sigil/
COMMENT=	Multi-platform WYSIWYG ebook editor (for the ePub format)
LICENSE=	gnu-gpl-v3

MAKE_JOBS_SAFE=	NO

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}

USE_LANGUAGES=	c c++
USE_CMAKE=	yes

SUBST_CLASSES+=		d2u
SUBST_STAGE.d2u=	post-extract
SUBST_MESSAGE.d2u=	Removing CR end-of-line markers.
SUBST_FILES.d2u=	*txt
SUBST_FILES.d2u+=	src/ZipArchive/*cpp
SUBST_FILTER_CMD.d2u=	${TR} -d '\r'

BUILDLINK_TRANSFORM+=	l:BoostParts:boost_date_time:boost_filesystem:boost_regex:boost_system:boost_thread:boost_program_options
BUILDLINK_TRANSFORM+=	l:Xerces:xerces-c
BUILDLINK_TRANSFORM+=	l:zlib:z

.include "../../mk/compiler.mk"
# GCC 4.4 and above needs this
.if !empty(PKGSRC_COMPILER:Mgcc) && !empty(CC_VERSION:Mgcc-4.[4-9]*)
_WRAP_EXTRA_ARGS.CXX+=	-std=c++0x
.endif

.include "../../textproc/xerces-c/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
