# $NetBSD: Makefile,v 1.13 2011/09/12 13:42:29 taca Exp $

DISTNAME=	json-1.6.0
CATEGORIES=	textproc

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://flori.github.com/json
COMMENT=	Native extension implementation of JSON for Ruby
LICENSE=	ruby-license

GEM_CLEANBUILD=	ext/json/ext/generator/* ext/json/ext/parser/*

post-extract:
	cd ${WRKSRC}; ${FIND} . -xdev -type f -print | ${XARGS} ${CHMOD} g-w

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
