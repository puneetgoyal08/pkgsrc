# $NetBSD$
#

DISTNAME=	openvpn-acct-wtmpx-20091110
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} openvpn-2.1_rc20.tar.gz
CATEGORIES=	net
MASTER_SITES=	http://ftp.espci.fr/pub/openvpn-acct-wtmpx/
SITES.openvpn-2.1_rc20.tar.gz=	http://openvpn.net/release/
EXTRACT_SUFX=	.tgz

MAINTAINER=	manu@NetBSD.org
HOMEPAGE=	http://ftp.espci.fr/pub/openvpn-acct-wtmpx/
COMMENT=	Log OpenVPN logins and logouts to wtmpx

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	yes
USE_TOOLS+=	install

WRKSRC=	${WRKDIR}/openvpn-acct-wtmpx

.include "../../mk/bsd.pkg.mk"
