# $NetBSD: Makefile,v 1.4 2011/02/11 10:05:30 jmmv Exp $
#

DISTNAME=	lua-mode-20110121
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
EXTRACT_SUFX=	.zip
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/4792/

MAINTAINER=	cheusov@NetBSD.org
HOMEPAGE=	http://luaforge.net/projects/lua-mode/
COMMENT=	Emacs major mode for editing Lua code

PKG_DESTDIR_SUPPORT=	user-destdir
WRKSRC=			${WRKDIR}

USE_LANGUAGES=		# none
NO_CONFIGURE=		yes

INSTALLATION_DIRS=	${EMACS_LISPPREFIX}

EMACS_MODULES=		base

.include "../../editors/emacs/modules.mk"

do-build:
	${EMACS_BIN} --no-init-file --no-site-file -batch \
		-f batch-byte-compile ${WRKSRC}/lua-mode.el

do-install:
	cd ${WRKSRC} && \
	${INSTALL_DATA} lua-mode.el lua-mode.elc \
		${DESTDIR}${EMACS_LISPPREFIX}/

.include "../../mk/bsd.pkg.mk"
