# $NetBSD: Makefile,v 1.3 2010/08/21 16:34:18 seb Exp $
#

DISTNAME=	Perl6-Junction-1.40000
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Perl6/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/CPAN/authors/id/C/CF/CFRANKS/
COMMENT=	Perl6 style Junction operators in Perl5

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Perl6/Junction/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
