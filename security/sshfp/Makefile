# $NetBSD: Makefile,v 1.4 2009/11/17 12:23:01 tron Exp $

DISTNAME=	sshfp-1.1.3
PKGREVISION=	2
CATEGORIES=	security net
MASTER_SITES=	http://www.xelerance.com/software/sshfp/

MAINTAINER=	agc@NetBSD.org
HOMEPAGE=	http://www.xelerance.com/software/sshfp/
COMMENT=	Print ssh host key fingerprint resource records
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	 ${PYPKGPREFIX}-dns>=1.6.0:../../net/py-dns

MANCOMPRESSED=			yes
NO_BUILD=			yes
PYTHON_PATCH_SCRIPTS=		sshfp

.include "../../lang/python/application.mk"

.include "../../mk/bsd.pkg.mk"
