# $NetBSD: Makefile,v 1.10 2010/10/28 00:03:29 minskim Exp $

DISTNAME=	hyphen-base
PKGNAME=	tex-${DISTNAME}-2010
PKGREVISION=	1
TEXLIVE_REV=	21066

MAINTAINER=	minskim@NetBSD.org
COMMENT=	TeX hyphenation patterns for English

PKG_SYSCONFSUBDIR=	texmf

MAKE_DIRS+=	${PKG_SYSCONFDIR}/tex/generic/config
CONF_FILES+=	${PREFIX}/share/texmf/tex/generic/config/language.dat \
		${PKG_SYSCONFDIR}/tex/generic/config/language.dat
CONF_FILES+=	${PREFIX}/share/texmf/tex/generic/config/language.dat.lua \
		${PKG_SYSCONFDIR}/tex/generic/config/language.dat.lua
CONF_FILES+=	${PREFIX}/share/texmf/tex/generic/config/language.def \
		${PKG_SYSCONFDIR}/tex/generic/config/language.def

TEX_TEXMF_DIRS+=	${PKG_SYSCONFDIR}
TEX_TEXMF_DIRS+=	${PREFIX}/share/texmf

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
