# $NetBSD: Makefile,v 1.2 2009/02/13 11:13:40 abs Exp $
#

DISTNAME=	mg-20090107
CATEGORIES=	editors
MASTER_SITES=	http://www.dds.nl/~han/software/mg/

MAINTAINER=	abs@NetBSD.org
HOMEPAGE=	http://www.han.dds.nl/software/mg/
COMMENT=	Small, fast, public domain EMACS style editor

HAS_CONFIGURE=	yes
USE_NCURSES=	yes # Uses NCURSES internals
PKG_DESTDIR_SUPPORT=   user-destdir
MAKE_ENV+=	prefix=${PREFIX:Q}

INSTALLATION_DIRS = bin ${PKGMANDIR}/man1

CONFLICTS+=  	mg2a-[0-9]*

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
