# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBSYNCML_BUILDLINK3_MK:=	${LIBSYNCML_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libsyncml
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibsyncml}
BUILDLINK_PACKAGES+=	libsyncml
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libsyncml

.if ${LIBSYNCML_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libsyncml+=	libsyncml>=0.4.5
BUILDLINK_PKGSRCDIR.libsyncml?=	../../comms/libsyncml
.endif	# LIBSYNCML_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
