# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBMPD_BUILDLINK3_MK:=	${LIBMPD_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libmpd
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibmpd}
BUILDLINK_PACKAGES+=	libmpd

.if !empty(LIBMPD_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libmpd+=	libmpd>=0.01
BUILDLINK_PKGSRCDIR.libmpd?=	../../audio/libmpd
.endif	# LIBMPD_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
