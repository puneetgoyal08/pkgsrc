# $NetBSD: Makefile,v 1.5 2011/03/06 02:23:32 seanb Exp $

DISTNAME=	pbulk-base-0.43
COMMENT=	Core components of the modular bulk build framework

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../pkgtools/pbulk/Makefile.common"

PKGVERSION=     1

USE_FEATURES=	nbcompat
USE_TOOLS+=	groff nroff

INSTALLATION_DIRS=	bin ${PKGMANDIR}/cat1 ${PKGMANDIR}/man1
USE_BSD_MAKEFILE=	yes

CONFLICTS=	pbulk<0.39

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS"
LDADD+=		-lsocket -lresolv
MAKE_ENV+=	LDADD=${LDADD:Q}
.endif

.if ${OPSYS} == "Linux"
CPPFLAGS+=	-D_GNU_SOURCE
.endif

BUILD_DIRS=	lib pbuild presolve pscan

do-extract:
	${CP} -r ${FILESDIR}/pbulk ${WRKDIR}

.include "../../mk/bsd.pkg.mk"
