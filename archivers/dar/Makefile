# $NetBSD: Makefile,v 1.36 2011/04/22 13:42:49 obache Exp $

DISTNAME=	dar-2.4.1
CATEGORIES=	archivers sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dar/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://dar.linux.free.fr/
COMMENT=	Disk archiver
LICENSE=	gnu-gpl-v2

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkg-config bash:run

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-dar-static
CONFIGURE_ARGS+=	--enable-static=no
CONFIGURE_ARGS+=	--disable-nodump-flag
CONFIGURE_ARGS+=	--disable-upx
CONFIGURE_ARGS+=	--enable-examples
CONFIGURE_ARGS+=	doxygen=no

PKGCONFIG_OVERRIDE=	src/libdar/libdar.pc.tmpl.in

## We use the logic below to find a path for a non-existent ${BASH}.
## Yeah, I suppose it's a hack, but it does work.
#
CHECK_INTERPRETER_SKIP+=	share/dar/samples/*
REPLACE_PERL+=			doc/samples/dar_backup
REPLACE_BASH+=			doc/samples/*.bash doc/samples/clust*.sh

## Our threading check here is the same as the one used in devel/perl5.
#
CHECK_BUILTIN.pthread:=yes
.  include "../../mk/pthread.builtin.mk"
CHECK_BUILTIN.pthread:=no

## XXX I'm following the USE_FEATURES semantics used in security/openssl.
#
.if !empty(USE_BUILTIN.pthread:tl:Myes)
USE_FEATURES.dar=	threads
.else
USE_FEATURES.dar=	# empty
.endif

PKG_OPTIONS_VAR=		PKG_OPTIONS.dar
PKG_OPTIONS_OPTIONAL_GROUPS=	int
PKG_OPTIONS_GROUP.int=		dar-int32 dar-int64
PKG_SUGGESTED_OPTIONS=		dar-int64 ${USE_FEATURES.dar}
PKG_SUPPORTED_OPTIONS=		threads

.include "../../mk/bsd.options.mk"

## Dar is built by default with an arbitrary-size-integer library for
## managing all file length/timestamp details.  If 32-bit or 64-bit
## integers (with overflow protection) are sufficient for requirements,
## the following options can significantly reduce the run-time memory
## and CPU overheads of Dar.
#
DARBITS=		${PKG_OPTIONS:C/[^[:digit:]]*//:M[36][24]}
PLIST_SUBST+=		DARBITS=${DARBITS}

.if !empty(DARBITS)
CONFIGURE_ARGS+=	--enable-mode=${DARBITS:Q}
.endif

EGDIR=			${PREFIX}/share/examples/dar
INSTALL_MAKE_FLAGS+=	sysconfdir=${EGDIR}

CONF_FILES=		${EGDIR}/darrc ${PKG_SYSCONFDIR}/darrc

## We want the threading library to be specified by pkgsrc, and only
## when desired, viz. in the case below.  Using PTHREAD_AUTO_VARS
## with the accompanying BUILDLINK_TRANSFORM directive is easier
## then patching configure.
#
.if !empty(PKG_OPTIONS:Mthreads)
USE_FEATURES.openssl+=	threads
PTHREAD_AUTO_VARS=	yes
BUILDLINK_TRANSFORM+=	rm:-lpthread
.else
CONFIGURE_ARGS+=	--disable-thread-safe
.endif

UNLIMIT_RESOURCES=	datasize

## XXX Needed for getopt() with SunPro (USE_FEATURES?)
#
CPPFLAGS.SunOS+=	-D__EXTENSIONS__

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
