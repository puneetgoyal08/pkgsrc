# $NetBSD: srcdist.mk,v 1.21 2008/04/24 01:39:25 tnn Exp $

.include "../../lang/python/pyversion.mk"

.if ${_PYTHON_VERSION} == "25"

DISTNAME=	Python-2.5.2
EXTRACT_SUFX=	.tar.bz2
DISTINFO_FILE=	${.CURDIR}/../../lang/python25/distinfo
PATCHDIR=	${.CURDIR}/../../lang/python25/patches
PYSUBDIR=	Python-2.5.2
WRKSRC=		${WRKDIR}/${PYSUBDIR}
MASTER_SITES=	ftp://ftp.python.org/pub/python/2.5/

.elif ${_PYTHON_VERSION} == "24"

DISTNAME=	Python-2.4.5
EXTRACT_SUFX=	.tar.bz2
DISTINFO_FILE=	${.CURDIR}/../../lang/python24/distinfo
PATCHDIR=	${.CURDIR}/../../lang/python24/patches
PYSUBDIR=	Python-2.4.5
WRKSRC=		${WRKDIR}/${PYSUBDIR}
MASTER_SITES=	ftp://ftp.python.org/pub/python/2.4/

.elif ${_PYTHON_VERSION} == "23"

DISTNAME=	Python-2.3.5
EXTRACT_SUFX=	.tgz
DISTINFO_FILE=	${.CURDIR}/../../lang/python23/distinfo
PATCHDIR=	${.CURDIR}/../../lang/python23/patches
PYSUBDIR=	Python-2.3.5
WRKSRC=		${WRKDIR}/${PYSUBDIR}
MASTER_SITES=	ftp://ftp.python.org/pub/python/2.3.5/

.elif ${_PYTHON_VERSION} == "21"

DISTNAME=	Python-2.1.3
EXTRACT_SUFX=	.tgz
DISTINFO_FILE=	${.CURDIR}/../../lang/python21/distinfo
PATCHDIR=	${.CURDIR}/../../lang/python21/patches
PYSUBDIR=	Python-2.1.3
WRKSRC=		${WRKDIR}/${PYSUBDIR}
MASTER_SITES=	ftp://ftp.python.org/pub/python/2.1.3/

.elif ${_PYTHON_VERSION} == "15"

DISTNAME=	py152
EXTRACT_SUFX=	.tgz
DISTINFO_FILE=	${.CURDIR}/../../lang/python15/distinfo
PATCHDIR=	${.CURDIR}/../../lang/python15/patches
PYSUBDIR=	Python-1.5.2
WRKSRC=		${WRKDIR}/${PYSUBDIR}
MASTER_SITES=	http://www.python.org/ftp/python/src/

.endif

.if defined(PYDISTUTILSPKG)
# This is used for standard modules shipped with Python but build as
# separate packages.

python-std-patchsetup:
	${SED} ${PY_SETUP_SUBST:S/=/@!/:S/$/!g/:S/^/ -e s!@/} \
		<${FILESDIR}/setup.py >${WRKSRC}/setup.py

post-extract: python-std-patchsetup
.endif
