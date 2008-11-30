# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
MONOTORRENT_BUILDLINK3_MK:=	${MONOTORRENT_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	monotorrent
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmonotorrent}
BUILDLINK_PACKAGES+=	monotorrent
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}monotorrent

.if ${MONOTORRENT_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.monotorrent+=	monotorrent>=0.62
BUILDLINK_PKGSRCDIR.monotorrent?=	../../net/monotorrent
.endif	# MONOTORRENT_BUILDLINK3_MK

.include "../../lang/mono/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
