# $NetBSD: Makefile,v 1.3 2011/04/22 13:43:40 obache Exp $
#

DISTNAME=	emerillon-0.1.2
PKGREVISION=	2
CATEGORIES=	geography
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/emerillon/0.1/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://projects.gnome.org/emerillon/
COMMENT=	Map browser

BUILD_DEPENDS+=	gnome-common-[0-9]*:../../devel/gnome-common

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config intltool gmake msgfmt
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c
#CONFIGURE_ARGS+=	--disable-search
GCONF_SCHEMAS=		emerillon.schemas
#PKGCONFIG_OVERRIDE=	data/emerillon.pc.in

BUILD_DEPENDS+=	vala-[0-9]*:../../lang/vala

.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../geography/libchamplain06/buildlink3.mk"
.include "../../geography/geoclue/buildlink3.mk"
.include "../../devel/ethos/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../www/librest/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
