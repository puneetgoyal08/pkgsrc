# $NetBSD: Makefile,v 1.11 2010/08/21 16:33:00 seb Exp $
#

DISTNAME=		DBIx-ContextualFetch-1.03
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		3
SVR4_PKGNAME=		p5dbc
CATEGORIES=		perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DBIx/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/DBIx-ContextualFetch/
COMMENT=		Perl5 module adding contextual fetches to DBI

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/DBIx/ContextualFetch/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
