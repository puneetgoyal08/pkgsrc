# $NetBSD: Makefile,v 1.2 2010/08/21 16:34:40 seb Exp $

DISTNAME=	Tie-Cache-LRU-Expires-0.54
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tie/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Tie-Cache-LRU-Expires/
COMMENT=	Extends Tie::Cache::LRU with expiring
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Tie-Cache-LRU-[0-9]*:../../devel/p5-Tie-Cache-LRU

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Tie/Cache/LRU/Expires/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
