# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBOL_BUILDLINK3_MK:=	${LIBOL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libol
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibol}
BUILDLINK_PACKAGES+=	libol

.if !empty(LIBOL_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libol+=	libol>=0.3.11
BUILDLINK_PKGSRCDIR.libol?=	../../wip/libol
.endif	# LIBOL_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
