# $NetBSD: Makefile,v 1.5 2006/09/09 02:41:56 obache Exp $
#

DISTNAME=	dasm212
PKGNAME=	dasm-2.12
PKGREVISION=	1
CATEGORIES=	cross
MASTER_SITES=	http://members.cox.net/rcolbert/zip/
EXTRACT_SUFX=	.zip

MAINTAINER=	xmor61@users.sourceforge.net
HOMEPAGE=	http://members.cox.net/rcolbert/dasm.htm
COMMENT=	Multi-CPU cross-assembler for 6502, 6803 and 68HC11

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
NO_CONFIGURE=	YES

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV+=	BINOWN=${BINOWN:Q} BINGRP=${BINGRP:Q} BINMODE=${BINMODE:Q}

INSTALLATION_DIRS=	bin

.include "../../mk/bsd.pkg.mk"
