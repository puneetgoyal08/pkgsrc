# $NetBSD: Makefile,v 1.4 2011/07/12 14:11:58 obache Exp $
#

DISTNAME=	gecko-mediaplayer-1.0.4
PKGREVISION=	1
CATEGORIES=	multimedia www
MASTER_SITES=	http://gecko-mediaplayer.googlecode.com/files/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://code.google.com/p/gecko-mediaplayer/
COMMENT=	Multimedia browser plugin for Gecko based browsers
LICENSE=	gnu-gpl-v2

DEPENDS+=	gnome-mplayer-[0-9]*:../../multimedia/gnome-mplayer

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		pkg-config msgfmt

GCONF_SCHEMAS+=		gecko-mediaplayer.schemas

CONFIGURE_ARGS+=	--with-gconf
CONFIGURE_ARGS+=	--enable-new-libxul
CONFIGURE_ARGS+=	--with-plugin-dir=${PREFIX}/lib/netscape/plugins
CONFIGURE_ARGS+=	--with-libcurl

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/nspr/buildlink3.mk"
BUILDLINK_DEPMETHOD.xulrunner=	build
.include "../../devel/xulrunner/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../mk/dlopen.buildlink3.mk"
.if empty(BUILDLINK_LDADD.ldl)
BUILDLINK_TRANSFORM+=	rm:-ldl
.endif
.include "../../mk/bsd.pkg.mk"
