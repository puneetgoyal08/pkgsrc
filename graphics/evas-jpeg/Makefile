# $NetBSD: Makefile,v 1.6 2010/01/18 09:58:58 wiz Exp $

PKGNAME=	${DISTNAME:S/evas/evas-jpeg/}
PKGREVISION=	2

COMMENT=	Evas JPEG image loader

EVAS_IMAGE_LOADERS=	jpeg

.include "../../graphics/evas/Makefile.common"

BUILD_DIRS=	src/modules/loaders/jpeg src/modules/savers/jpeg
MAKE_FLAGS+=	module_la_LIBADD="\$${eavs_image_loader_jpeg_libs} \$${EINA_LIBS} ${BUILDLINK_PREFIX.evas}/lib/libevas.la" \
		module_la_DEPENDENCIES=

.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/evas/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
