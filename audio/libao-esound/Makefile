# $NetBSD: Makefile,v 1.11 2006/02/05 23:08:10 joerg Exp $

.include "../../audio/libao/Makefile.common"

PKGNAME=	${DISTNAME:S/libao/libao-esound/}

COMMENT+=	(esound plugin)

CONFIGURE_ARGS:=	${CONFIGURE_ARGS:S/disable-esd/enable-esd/g}
BUILD_DIRS=		${WRKSRC}/src/plugins/esd
INSTALL_DIRS=		${WRKSRC}/src/plugins/esd

_LIBAO_BUILDING_PLUGIN=	yes

.include "../../audio/esound/buildlink3.mk"
.include "../../audio/libao/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
