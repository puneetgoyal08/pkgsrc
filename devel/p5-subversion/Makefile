# $NetBSD: Makefile,v 1.52 2011/06/10 09:39:53 obache Exp $

PKGNAME=	p5-subversion-${SVNVER}
PKGREVISION=	2
COMMENT=	Perl bindings for Subversion

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_JOBS_SAFE=		no

.include "../../devel/subversion/Makefile.common"

SHLIBTOOL_OVERRIDE=	# empty

USE_TOOLS+=		perl
PERL5_CONFIGURE=	no
PERL5_OPTIONS+=		threads
PERL5_PACKLIST=		auto/SVN/_Core/.packlist

BUILD_TARGET=		swig-pl
INSTALL_TARGET=		install-swig-pl
TEST_TARGET=		check-swig-pl
MAKE_ENV+=		SUBVERSION_BASE_PREFIX=${BUILDLINK_PREFIX.subversion-base}

post-patch:
	${RM} ${WRKSRC}/build-outputs.mk
	${CP} ${FILESDIR}/build-outputs.mk ${WRKSRC}/build-outputs.mk

.include "../../devel/subversion-base/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
