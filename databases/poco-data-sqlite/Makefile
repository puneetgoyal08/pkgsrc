# $NetBSD: Makefile,v 1.4 2011/02/06 14:44:08 wiz Exp $
#

PKGNAME=	poco-data-sqlite-${POCO_VERSION}
PKGREVISION=	1
CATEGORIES=	databases

COMMENT=	POCO C++ SQLite RDBMS Accessor libraries

.include "../../devel/poco/Makefile.common"

CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--omit=Data/MySQL,Data/ODBC,Zip,XML
CONFIGURE_ARGS+=	--omit=Foundation,Net,NetSSL_OpenSSL
CONFIGURE_ARGS+=	--no-tests
CONFIGURE_ARGS+=	--no-samples

USE_TOOLS+=	pax

INSTALLATION_DIRS=	include/Poco/Data/SQLite lib

do-build:
	cd ${WRKSRC} && ${TOOLS_GMAKE} POCO_BASE=${WRKSRC} -C Data/SQLite

do-install:
	# using the same logic as Poco's Makefile install target.
	cd ${WRKSRC} && find lib -name 'libPoco*' -type f -exec cp -f {} \
						    ${DESTDIR}${PREFIX}/lib \;
	cd ${WRKSRC} && find lib -name 'libPoco*' -type l -exec cp -Rf {} \
						    ${DESTDIR}${PREFIX}/lib \;
	cd ${WRKSRC}/Data/SQLite && \
	    ${PAX} -rw -v -pp include ${DESTDIR}${PREFIX}

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../databases/poco-data/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
