# $NetBSD: Makefile,v 1.5 2009/12/23 13:00:41 ghen Exp $
#

DISTNAME=		pdns-recursor-3.1.7.2
CATEGORIES=		net
MASTER_SITES=		http://downloads.powerdns.com/releases/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		roy@NetBSD.org
HOMEPAGE=		http://www.powerdns.com/
COMMENT=		PowerDNS resolver/recursing nameserver
LICENSE=		gnu-gpl-v2

MAKE_JOBS_SAFE=		no

USE_TOOLS=		gmake
USE_LANGUAGES=		c c++
PKG_DESTDIR_SUPPORT=	user-destdir

RCD_SCRIPTS+=		pdns_recursor

EGDIR=			${PREFIX}/share/examples/pdns-recursor

BUILD_MAKE_FLAGS+=	CONFIGDIR=${PKG_SYSCONFDIR} OPTFLAGS=

INSTALL_MAKE_FLAGS+=	BINDIR=${PREFIX}/bin SBINDIR=${PREFIX}/sbin
INSTALL_MAKE_FLAGS+=	CONFIGDIR=${EGDIR} MANDIR=${PREFIX}/${PKGMANDIR}

CONF_FILES+=		${EGDIR}/recursor.conf-dist \
			${PKG_SYSCONFDIR}/recursor.conf

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

post-patch:
	${SED} -e "s:/etc/powerdns:${PKG_SYSCONFDIR}:" \
		${WRKSRC}/config.h >${WRKSRC}/config.h.new
	${MV} ${WRKSRC}/config.h.new ${WRKSRC}/config.h
	${LN} -s FreeBSD.inc ${WRKSRC}/sysdeps/NetBSD.inc
	${MV} ${WRKSRC}/pdns_recursor.1 ${WRKSRC}/pdns_recursor.8
	${MV} ${WRKSRC}/rec_control.1 ${WRKSRC}/rec_control.8

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
