# $NetBSD: buildlink3.mk,v 1.23 2011/04/12 13:41:17 adam Exp $

BUILDLINK_TREE+=	libfwbuilder

.if !defined(LIBFWBUILDER_BUILDLINK3_MK)
LIBFWBUILDER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libfwbuilder+=	libfwbuilder>=4.1.3
BUILDLINK_ABI_DEPENDS.libfwbuilder+=	libfwbuilder>=4.1.3nb1
BUILDLINK_PKGSRCDIR.libfwbuilder?=	../../security/libfwbuilder

.include "../../devel/zlib/buildlink3.mk"
.include "../../net/net-snmp/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.endif # LIBFWBUILDER_BUILDLINK3_MK

BUILDLINK_TREE+=	-libfwbuilder
