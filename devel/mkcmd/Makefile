# $NetBSD: Makefile,v 1.10 2008/08/19 23:41:05 epg Exp $
#

DISTNAME=		mkcmd-8.14
PKGREVISION=		3
CATEGORIES=		devel
MASTER_SITES=		ftp://ftp.physics.purdue.edu/pub/pundits/
EXTRACT_SUFX=		.tgz

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Command-line parser and manual page generator

PKG_DESTDIR_SUPPORT=	user-destdir
PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_TOOLS+=		m4

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man5

REPLACE_INTERPRETER+=	mkcmd
REPLACE.mkcmd.old=	.*mkcmd
REPLACE.mkcmd.new=	${PREFIX}/bin/mkcmd
REPLACE_FILES.mkcmd=	lib/mkcmd/*.m

REPLACE_INTERPRETER+=	mkcmd2
REPLACE.mkcmd2.old=	/usr/local/bin/mk
REPLACE.mkcmd2.new=	${PREFIX}/bin/mkcmd
REPLACE_FILES.mkcmd2=	lib/mkcmd/Template.m

do-build:
	cd ${WRKSRC}/bin/mkcmd && HOSTTYPE= ${SH} ${FILESDIR}/makeme \
		ROOT=${PREFIX} BIN=${PREFIX}/bin LIB=${PREFIX}/lib/mkcmd

do-install:
.for _mkcmd_dir in bin/mkcmd lib/mkcmd
	cd ${WRKSRC}/${_mkcmd_dir} && HOSTTYPE= ${SH} ${FILESDIR}/makeme \
		ROOT=${DESTDIR}${PREFIX} BIN=${DESTDIR}${PREFIX}/bin LIB=${DESTDIR}${PREFIX}/lib/mkcmd \
		install
.endfor
	${INSTALL_MAN} ${WRKSRC}/bin/mkcmd/mkcmd.man \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/mkcmd.1
	${INSTALL_MAN} ${WRKSRC}/lib/mkcmd/mkcmd.man \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man5/mkcmd.5

.include "../../mk/bsd.pkg.mk"
