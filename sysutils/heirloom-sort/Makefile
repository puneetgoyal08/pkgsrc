# $NetBSD: Makefile,v 1.1.1.1 2011/05/27 23:44:47 cheusov Exp $

PKGNAME=	heirloom-sort-${HEIRLOOM_VER}
CATEGORIES=	sysutils misc
LICENSE=	original-bsd

MAKE_FLAGS+=	SUBDIRS="build sort"

.include "../../sysutils/heirloom-doc/Makefile.common"

DESCR_SRC+=	${.CURDIR}/DESCR

.include "../../devel/heirloom-libcommon/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
