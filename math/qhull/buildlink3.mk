# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
QHULL_BUILDLINK3_MK:=	${QHULL_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	qhull
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nqhull}
BUILDLINK_PACKAGES+=	qhull
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}qhull

.if ${QHULL_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.qhull+=	qhull>=2003.1
BUILDLINK_PKGSRCDIR.qhull?=	../../math/qhull
.endif	# QHULL_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
