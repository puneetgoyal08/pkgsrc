# $NetBSD: Makefile,v 1.5 2010/08/21 16:36:37 seb Exp $
#

DISTNAME=	CSS-1.08
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CSS/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/CSS/
COMMENT=	Object oriented access to Cascading Style Sheets

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Parse-RecDescent>=1.0:../../devel/p5-Parse-RecDescent

PERL5_PACKLIST=		auto/CSS/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
