# $NetBSD: arch.mk,v 1.1 2002/11/25 11:01:16 schmonz Exp $

.ifndef SUSE_ARCH_MK
SUSE_ARCH_MK=1

.include "../../mk/bsd.prefs.mk"

.if ${MACHINE_ARCH} == "i386"
SUSE_ARCH?=	i586
SUSE_ARCH_DIR?=	${MACHINE_ARCH}
.elif ${MACHINE_ARCH} == "powerpc"
SUSE_ARCH?=	ppc
.else
SUSE_ARCH?=	${MACHINE_ARCH}
.endif

SUSE_ARCH_DIR?=	${SUSE_ARCH}

.endif # SUSE_ARCH_MK
