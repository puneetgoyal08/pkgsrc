# $NetBSD: Makefile,v 1.2 2011/10/05 21:41:25 ryoon Exp $
#

DISTNAME=	rtmpdump-2.4
CATEGORIES=	net multimedia
MASTER_SITES=	http://rtmpdump.mplayerhq.hu/download/

MAINTAINER=	ryo_on@yk.rim.or.jp
HOMEPAGE=	http://rtmpdump.mplayerhq.hu/
COMMENT=	Tools for handling RTMP stream
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	yes

USE_TOOLS+=	pkg-config
USE_LIBTOOL=	yes
BUILD_DIRS=	. librtmp

WRKSRC=		${WRKDIR}/rtmpdump
PKGCONFIG_OVERRIDE+=	librtmp/librtmp.pc.in

SUBST_CLASSES+=			fix-paths
SUBST_STAGE.fix-paths=		pre-configure
SUBST_MESSAGE.fix-paths=	Fixing absolute paths.
SUBST_FILES.fix-paths=		Makefile
SUBST_FILES.fix-paths+=		librtmp/Makefile
SUBST_SED.fix-paths=		-e 's,/usr/local,${PREFIX},g'

.include "../../security/openssl/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
