# $NetBSD: buildlink3.mk,v 1.1.1.1 2007/05/12 13:48:24 obache Exp $

BUILDLINK_TREE+=	mecab

.if !defined(MECAB_BUILDLINK3_MK)
MECAB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mecab+=	mecab>=0.90
BUILDLINK_PKGSRCDIR.mecab?=	../../textproc/mecab

.include "../../textproc/mecab-base/buildlink3.mk"
.endif # MECAB_BUILDLINK3_MK

BUILDLINK_TREE+=	-mecab
