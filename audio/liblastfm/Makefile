# $NetBSD: Makefile,v 1.11 2011/04/22 13:42:35 obache Exp $
#

DISTNAME=	mxcl-liblastfm-0.3.3-0-gf0b3239
PKGNAME=	liblastfm-0.3.3
PKGREVISION=	4
CATEGORIES=	audio net
MASTER_SITES=	http://download.github.com/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://github.com/mxcl/liblastfm
COMMENT=	Library for accessing last.fm
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/mxcl-liblastfm-1c739eb

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		bash gmake pkg-config
PREPEND_PATH+=		${QTDIR}/bin

HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix ${PREFIX}
#CONFIGURE_ARGS+=	--release
#CPPFLAGS+=		-fPIC
CONFIG_SHELL=		${RUBY}

REPLACE_RUBY+=		admin/Makefile.rb
REPLACE_RUBY+=		admin/findsrc.rb
REPLACE_RUBY+=		admin/lastfm.h.rb
REPLACE_RUBY+=		admin/platform.rb
REPLACE_RUBY+=		admin/qpp
REPLACE_RUBY+=		admin/utils.rb
REPLACE_RUBY+=		admin/which_qmake.rb

pre-configure:
	${LN} -sf ${QTDIR}/bin/qmake ${BUILDLINK_DIR}/bin/

.include "../../audio/libsamplerate/buildlink3.mk"
BUILDLINK_DEPMETHOD.${RUBY_BASE}=	build
.include "../../lang/ruby/replace.mk"
.include "../../lang/ruby/buildlink3.mk"
.include "../../math/fftwf/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
