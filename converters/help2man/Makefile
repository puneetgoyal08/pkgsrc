# $NetBSD: Makefile,v 1.5 2010/12/09 19:42:12 tron Exp $

DISTNAME=		help2man-1.38.2
PKGREVISION=		3
CATEGORIES=		converters
MASTER_SITES=		${MASTER_SITE_GNU:=help2man/}

MAINTAINER=		arved@arved.at
HOMEPAGE=		http://www.gnu.org/software/help2man/
COMMENT=		Generate simple manual pages from program output
LICENSE=		gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		p5-gettext>=1.01:../../devel/p5-gettext

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
GNU_CONFIGURE=		yes
USE_TOOLS+=		perl:run msgfmt gmake

INFO_FILES=		yes

.include "../../mk/bsd.prefs.mk"

PLIST_VARS+=		nls
.if ${OPSYS} == "Darwin" && ${OS_VERSION:M8.*} != ""
CONFIGURE_ARGS+= --disable-nls
.else
.if ${OPSYS} == "Darwin"
_STRIPFLAG_INSTALL=
.endif
USE_PKGLOCALEDIR=	yes
PLIST.nls=		yes
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
