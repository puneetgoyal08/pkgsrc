# $NetBSD: buildlink3.mk,v 1.2 2009/03/20 19:24:33 joerg Exp $

BUILDLINK_TREE+=	wine

.if !defined(WINE_BUILDLINK3_MK)
WINE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.wine+=	wine>=1.3.0
BUILDLINK_PKGSRCDIR.wine?=	../../emulators/wine

pkgbase:= wine
.include "../../mk/pkg-build-options.mk"

.include "../../graphics/freetype2/buildlink3.mk"
.if !empty(PKG_BUILD_OPTIONS.wine:Mopengl)
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/glut/buildlink3.mk"
.endif
.include "../../mk/giflib.buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.endif # WINE_BUILDLINK3_MK

BUILDLINK_TREE+=	-wine
