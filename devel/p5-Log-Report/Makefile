# $NetBSD: Makefile,v 1.3 2010/08/21 16:33:59 seb Exp $
#

DISTNAME=	Log-Report-0.28
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Log/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Log-Report/
COMMENT=	Perl5 module to report a problem, pluggable handlers and language support
LICENSE=	${PERL5_LICENSE}

BUILD_DEPENDS+=	{perl>=5.10.1,p5-Test-Simple>=0.86}:../../devel/p5-Test-Simple
BUILD_DEPENDS+=	p5-Test-Pod>=1.00:../../devel/p5-Test-Pod

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Log/Report/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
