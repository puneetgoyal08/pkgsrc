# $NetBSD: buildlink3.mk,v 1.2 2004/03/18 09:12:15 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
XFCE4_WM_THEMES_BUILDLINK3_MK:=	${XFCE4_WM_THEMES_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	xfce4-wm-themes
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxfce4-wm-themes}
BUILDLINK_PACKAGES+=	xfce4-wm-themes

.if !empty(XFCE4_WM_THEMES_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.xfce4-wm-themes+=	xfce4-wm-themes>=4.0.5
BUILDLINK_PKGSRCDIR.xfce4-wm-themes?=	../../wm/xfce4-wm-themes
.endif	# XFCE4_WM_THEMES_BUILDLINK3_MK

.include "../../wm/xfce4-wm/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
