# $NetBSD$
#

CLISP_MODULE=	fastcgi

PKGNAME=	clisp-$(CLISP_MODULE)-$(CLISP_VERSION)
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clisp/}

MAINTAINER=	asau@inbox.ru
HOMEPAGE=	http://clisp.cons.org/
COMMENT=	CLISP FastCGI module

MAKE_JOBS_SAFE=	no


.include "../../lang/clisp/module.mk"

.include "../../www/fcgi/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
