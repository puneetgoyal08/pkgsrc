# $NetBSD: buildlink3.mk,v 1.1.1.1 2008/07/22 08:29:06 he Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LDNS_BUILDLINK3_MK:=		${LDNS_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	ldns
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nldns}
BUILDLINK_PACKAGES+=	ldns
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}ldns

.if ${LDNS_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.ldns+=	ldns>=1.0
BUILDLINK_PKGSRCDIR.ldns?=	../../net/ldns
BUILDLINK_DEPMETHOD.ldns?=	build
.endif	# LDNS_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
