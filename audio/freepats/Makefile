# $NetBSD: Makefile,v 1.7 2008/05/25 21:42:20 joerg Exp $
#

DISTNAME=	freepats-20060219
CATEGORIES=	audio
MASTER_SITES=	http://freepats.zenvoid.org/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://freepats.zenvoid.org/
COMMENT=	Free patches (audio samples) for TiMidity

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/freepats
NO_CONFIGURE=	yes
NO_BUILD=	yes
USE_LANGUAGES=	# empty
USE_TOOLS+=	pax

MESSAGE_SUBST+=	PKG_SYSCONFDIR=${PKG_SYSCONFDIR}

INSTALLATION_DIRS=	share

post-patch:
	${ECHO} "dir ${PREFIX}/share/freepats" >${WRKSRC}/timidity.cfg
	cat ${WRKSRC}/freepats.cfg >>${WRKSRC}/timidity.cfg

do-install:
	cd ${WRKDIR} && pax -rw -pp freepats ${DESTDIR}${PREFIX}/share

.include "../../mk/bsd.pkg.mk"
