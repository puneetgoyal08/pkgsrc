# $NetBSD: buildlink3.mk,v 1.8 2004/10/03 00:18:23 tv Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
METACITY_BUILDLINK3_MK:=	${METACITY_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	metacity
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmetacity}
BUILDLINK_PACKAGES+=	metacity

.if !empty(METACITY_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.metacity+=	metacity>=2.8.5
BUILDLINK_RECOMMENDED.metacity+=	metacity>=2.8.5nb1
BUILDLINK_PKGSRCDIR.metacity?=	../../wm/metacity
.endif	# METACITY_BUILDLINK3_MK

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libglade2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../net/ORBit2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
