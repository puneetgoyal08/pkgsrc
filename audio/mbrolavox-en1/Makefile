# $NetBSD: Makefile,v 1.24 2009/05/02 12:41:52 zafer Exp $

DISTNAME=	en1-980910
PKGNAME=	mbrolavox-en1-980910
PKGREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://www.festvox.org/mbrola/dba/en1/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tcts.fpms.ac.be/synthesis/mbrola/
COMMENT=	British English male voice for MBROLA
LICENSE=	no-commercial-use

DEPENDS+=	mbrola-301h{,nb[0-9]*}:../../audio/mbrola

USE_TOOLS+=	pax

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
NO_BUILD=	yes

MHOME=		${PREFIX}/share/mbrola/voices

post-extract:
	${CHMOD} -R a+r ${WRKSRC}
	${FIND} ${WRKSRC} -type d -print | ${XARGS} ${CHMOD} 755

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${MHOME}
	cd ${WRKSRC} && pax -rw en1 ${DESTDIR}${MHOME}

.include "../../mk/bsd.pkg.mk"
