# $NetBSD: Makefile,v 1.6 2011/04/22 13:42:00 obache Exp $
#

DISTNAME=		scim-1.4.9
PKGREVISION=		5
CATEGORIES=		inputmethod
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scim/}

MAINTAINER=		obache@NetBSD.org
HOMEPAGE=		http://www.scim-im.org/
COMMENT=		Smart Common Input Method
LICENSE=		gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

PKG_SYSCONFSUBDIR=	scim

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		msgfmt pkg-config
USE_TOOLS+=		gmake	# make scim-setup.desktop
USE_TOOLS+=		perl intltool

PKGCONFIG_OVERRIDE=	scim-gtkutils.pc.in
PKGCONFIG_OVERRIDE+=	scim-x11utils.pc.in
PKGCONFIG_OVERRIDE+=	scim.pc.in

GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
# dlopen c++ so module from c gtk2 apps cause some troubles.
CONFIGURE_ARGS+=	--disable-gtk2-immodule

EGDIR=			${PREFIX}/share/examples/scim
CONF_FILES=		${EGDIR}/config ${PKG_SYSCONFDIR}/config
CONF_FILES+=		${EGDIR}/global ${PKG_SYSCONFDIR}/global

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples

# for DLOPEN_REQUIRE_PTHREADS
PTHREAD_AUTO_VARS=	yes

.include "../../mk/bsd.prefs.mk"
.if ${OPSYS} == "SunOS"
CONFIGURE_ENV+=		ac_cv_func_gethostbyname_r=no
LDFLAGS.SunOS+=		-lsocket -lnsl
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
BUILDLINK_DEPMETHOD.libXt=	build
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
