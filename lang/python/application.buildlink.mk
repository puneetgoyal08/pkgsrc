# $NetBSD: application.buildlink.mk,v 1.3 2002/01/18 11:00:56 drochner Exp $

.include "../../lang/python/pyversion.mk"

# replace shell magic by python version specific path
# PYTHON_PATCH_SCRIPTS is a list of Python scripts to be installed,
#  relative to ${WRKSRC}

_PYTHON_PATCH_SCRIPT_SED=	-e "1s;^\#!.*python;\#!${PYTHONBIN};"

.if defined(PYTHON_PATCH_SCRIPTS)
pre-install:
.for s in ${PYTHON_PATCH_SCRIPTS}
	${SED} ${_PYTHON_PATCH_SCRIPT_SED} <${WRKSRC}/$s >${WRKSRC}/$s.patched
	${MV} -f ${WRKSRC}/$s.patched ${WRKSRC}/$s
.endfor
.endif
