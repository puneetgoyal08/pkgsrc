# $NetBSD: Makefile,v 1.27 2011/03/05 22:48:07 tonio Exp $
#

DISTNAME=	weechat-0.3.4
PKGREVISION=	1
CATEGORIES=	chat
MASTER_SITES=	http://www.weechat.org/files/src/

MAINTAINER=	tonio@NetBSD.org
HOMEPAGE=	http://www.weechat.org/
COMMENT=	Lightweight and user friendly curses based IRC client
LICENSE=	gnu-gpl-v3

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		msgfmt
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-tcl --disable-aspell
MAKE_ENV+=		INSTALL_DATA_DIR=${INSTALL_DATA_DIR:Q}
MAKE_ENV+=		PREFIX=${DESTDIR:Q}${PREFIX:Q}
LIBS.SunOS+=		-lnsl

.include "options.mk"

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
