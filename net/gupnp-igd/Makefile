# $NetBSD: Makefile,v 1.7 2011/04/22 13:42:25 obache Exp $
#

DISTNAME=	gupnp-igd-0.1.7
PKGREVISION=	2
CATEGORIES=	net devel
MASTER_SITES=	http://www.gupnp.org/sources/gupnp-igd/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gupnp.org/
COMMENT=	Library to handle UPnP IGD port mapping
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config

PKGCONFIG_OVERRIDE+=	gupnp-igd-1.0.pc.in
PY_PATCHPLIST=	yes

CONFIGURE_ENV+=	PYTHON=${PYTHONBIN:Q}

SUBST_CLASSES+=		pyconfig
SUBST_STAGE.pyconfig=	pre-configure
SUBST_VARS.pyconfig=	PYTHONCONFIG
SUBST_FILES.pyconfig=	python/Makefile.in

TEST_TARGET=	check

.include "../../net/gupnp/buildlink3.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.14.0
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/py-gobject/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
