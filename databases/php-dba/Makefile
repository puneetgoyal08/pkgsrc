# $NetBSD: Makefile,v 1.12 2010/02/27 03:35:11 taca Exp $

MODNAME=		dba
PKGREVISION=		1
CATEGORIES+=		databases
COMMENT=		PHP extension for DBM database access

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	php-dba-[0-9]*

CONFIGURE_ARGS+=	--enable-${MODNAME}=shared

CONFIGURE_ARGS+=	--with-cdb
CONFIGURE_ARGS+=	--without-dbm
CONFIGURE_ARGS+=	--with-inifile

.if exists(/usr/include/ndbm.h)
CONFIGURE_ARGS+=	--with-ndbm=/usr
.else
CONFIGURE_ARGS+=	--without-ndbm
.endif

.include "options.mk"

.include "../../lang/php/ext.mk"
.include "../../mk/bsd.pkg.mk"
