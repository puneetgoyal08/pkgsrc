# $NetBSD: Makefile,v 1.37 2011/04/22 13:43:25 obache Exp $

DISTNAME=	gtranslator-1.1.7
PKGREVISION=	12
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gtranslator/1.1/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gtranslator.sourceforge.net/
COMMENT=	Gettext po file editor for the GNOME2 desktop environment

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
MANCOMPRESSED=		yes

CONFIGURE_ARGS+=	--disable-debug

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/libbonoboui/buildlink3.mk"
.include "../../devel/libgnome/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../sysutils/gnome-vfs/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
