# $NetBSD: Makefile,v 1.16 2011/03/31 16:30:11 jmmv Exp $
#

DISTNAME=	atf-0.14
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.NetBSD.org/pub/NetBSD/misc/jmmv/atf/0.14/

MAINTAINER=	jmmv@NetBSD.org
HOMEPAGE=	http://www.NetBSD.org/~jmmv/atf/
COMMENT=	Automated testing framework
LICENSE=	2-clause-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_JOBS_SAFE=		yes

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes

CONFIGURE_ARGS+=	ATF_CONFSUBDIR=
CONFIGURE_ARGS+=	ATF_SHELL=${SH:Q}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

PKGCONFIG_OVERRIDE=	data/atf-c.pc.in
PKGCONFIG_OVERRIDE+=	data/atf-c++.pc.in
PKGCONFIG_OVERRIDE+=	data/atf-sh.pc.in

PKG_SYSCONFSUBDIR=	atf

XML_ENTRIES=	public "-//NetBSD//DTD ATF Tests Results 0.1//EN" \
		${PREFIX}/share/xml/atf/tests-results.dtd

.include "../../textproc/xmlcatmgr/catalogs.mk"
.include "../../mk/bsd.pkg.mk"
