# $NetBSD$
#

DISTNAME=	aafigure-0.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	graphics converters python
MASTER_SITES=	http://pypi.python.org/packages/source/a/aafigure/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://launchpad.net/aafigure
COMMENT=	ASCII art to image converter
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-imaging-[0-9]*:../../graphics/py-imaging
DEPENDS+=	${PYPKGPREFIX}-reportlab-[0-9]*:../../print/py-reportlab

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
