# $NetBSD$

BUILDLINK_TREE+=	jbigkit

.if !defined(JBIGKIT_BUILDLINK3_MK)
JBIGKIT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.jbigkit+=	jbigkit>=2.0
BUILDLINK_PKGSRCDIR.jbigkit?=	../../graphics/jbigkit
.endif # JBIGKIT_BUILDLINK3_MK

BUILDLINK_TREE+=	-jbigkit
