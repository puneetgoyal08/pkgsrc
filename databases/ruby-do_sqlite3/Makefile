# $NetBSD: Makefile,v 1.3 2011/06/10 09:39:51 obache Exp $

DISTNAME=	do_sqlite3-0.10.6
CATEGORIES=	databases

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	#
COMMENT=	Implements the DataObjects API for Sqlite3
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-data_objects>=0.10.6<0.11:../../databases/ruby-data_objects

.include "../../lang/ruby/gem.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
