# $NetBSD: Makefile,v 1.5 2011/09/04 18:21:26 cheusov Exp $
#

.include "../../pkgtools/pkg_online-server/Makefile.common"

PKGNAME=	${DISTNAME:C/online/online-client/}
CATEGORIES=	pkgtools
MAINTAINER=	cheusov@NetBSD.org
COMMENT+=	(client tools)

DEPENDS+=	dict-client>=1.10.9:../../textproc/dict-client
DEPENDS+=	pkg_summary-utils>=0.49:../../pkgtools/pkg_summary-utils
DEPENDS+=	pipestatus-[0-9]*:../../devel/pipestatus
DEPENDS+=	netcat-[0-9]*:../../net/netcat

BUILD_DEPENDS+=	mk-configure>=0.20.0:../../devel/mk-configure

INSTALL_TARGET=	install-client install-doc

DOCDIR=		${PREFIX}/share/doc/pkg_online-client
EGDIR=		${PREFIX}/share/examples/pkg_online-client

MAKE_ENV+=	DOCDIR=${DOCDIR} EGDIR=${EGDIR}

CONF_FILES=	${EGDIR}/pkg_online_client.conf \
		${PKG_SYSCONFDIR}/pkg_online_client.conf

MAKE_PROGRAM=	mkcmake

.include "../../devel/mk-configure/configure.mk"
.include "../../mk/bsd.pkg.mk"
