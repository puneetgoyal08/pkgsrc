# $NetBSD: buildlink3.mk,v 1.4 2009/03/20 19:25:46 joerg Exp $

BUILDLINK_TREE+=	libdrm

.if !defined(LIBDRM_BUILDLINK3_MK)
LIBDRM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libdrm+=	libdrm>=2.4.20
BUILDLINK_PKGSRCDIR.libdrm?=	../../x11/libdrm
.endif # LIBDRM_BUILDLINK3_MK

BUILDLINK_TREE+=	-libdrm
