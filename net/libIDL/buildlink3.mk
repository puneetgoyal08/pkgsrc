# $NetBSD: buildlink3.mk,v 1.13 2009/03/20 19:25:09 joerg Exp $

BUILDLINK_TREE+=	libIDL

.if !defined(LIBIDL_BUILDLINK3_MK)
LIBIDL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libIDL+=	libIDL>=0.8.3nb1
BUILDLINK_ABI_DEPENDS.libIDL+=	libIDL>=0.8.14nb1
BUILDLINK_PKGSRCDIR.libIDL?=	../../net/libIDL

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # LIBIDL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libIDL
