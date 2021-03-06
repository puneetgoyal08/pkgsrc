# $NetBSD: Makefile,v 1.59 2008/05/26 02:13:15 joerg Exp $

DISTNAME=	festival-1.95-beta
PKGNAME=	festival-1.95beta
PKGREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://festvox.org/packed/festival/1.95/
DISTFILES=	${DISTNAME}.tar.gz \
		speech_tools-1.2.95-beta.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.cstr.ed.ac.uk/projects/festival/
COMMENT=	Advanced multi-lingual speech synthesis system

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake pax
MAKE_JOBS_SAFE=	no

SPEECHTOOLS=	${WRKSRC}/speech_tools
FESTIVAL=	${WRKSRC}/festival

FHOME=		${PREFIX}/share/festival

GNU_CONFIGURE=		yes
CONFIGURE_SCRIPT=	${SPEECHTOOLS}/configure
CONFIG_GUESS_OVERRIDE=	${SPEECHTOOLS}/config.guess ${FESTIVAL}/config.guess
CONFIG_SUB_OVERRIDE=	${SPEECHTOOLS}/config.sub ${FESTIVAL}/config.sub

.include "../../mk/bsd.prefs.mk"

.if !empty(MACHINE_PLATFORM:MNetBSD-[4-9]*)
GCC_REQD+=	3.3.6
USE_PKGSRC_GCC= yes
.endif

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Msunpro)
PKG_COMPILER?=		suncc
.else
PKG_COMPILER_cmd=	case "${CC_VERSION}" in				\
			gcc-2.6.*)	${ECHO} gcc26;;			\
			gcc-2.7.*)	${ECHO} gcc27;;			\
			gcc-2.8.*)	${ECHO} gcc28;;			\
			gcc-2.95.*)	${ECHO} gcc295;;		\
			gcc-3.3.*)	${ECHO} gcc32;;			\
			gcc-3.4.*)	${ECHO} gcc32;;			\
			egcs*)		${ECHO} egcs;;			\
			*)		${ECHO} ;;			\
			esac
PKG_COMPILER=		${PKG_COMPILER_cmd:sh}
.endif

.if empty(PKG_COMPILER)
PKG_FAIL_REASON+=	"${CC_VERSION} is not currently supported."
.endif

MAKE_ENV+=	PKG_EST_HOME=${SPEECHTOOLS:Q}				\
		EST_HOME=${SPEECHTOOLS:Q}				\
		PKG_FESTIVAL_BUILD_HOME=${FESTIVAL:Q}			\
		PKG_FESTIVAL_HOME=${FHOME:Q}				\
		PKG_COMPILER=${PKG_COMPILER:Q}				\
		PKG_X11BASE=${X11BASE:Q}				\
		PKG_PREFIX=${PREFIX:Q}					\
		EGCS_CC=${CC:Q}						\
		EGCS_CXX=${CXX:Q}					\
		GCC295_CC=${CC:Q}					\
		GCC295_CXX=${CXX:Q}					\
		GCC28_CC=${CC:Q}					\
		GCC28_CXX=${CXX:Q}					\
		GCC27_CC=${CC:Q}					\
		GCC27_CXX=${CXX:Q}					\
		GCC26_CC=${CC:Q}					\
		GCC26_CXX=${CXX:Q}					\
		CC=${CC:Q}						\
		CXX=${CXX:Q}

INSTALLATION_DIRS=	bin libexec ${PKGMANDIR}/man1

post-patch:
	${CP} ${FILESDIR}/top-Makefile ${WRKSRC}/Makefile
.if exists(${FILESDIR}/unknown_${OPSYS}.mak)
	${CP} ${FILESDIR}/unknown_${OPSYS}.mak ${SPEECHTOOLS}/config/systems/unknown_${OPSYS}.mak
	${CP} ${FILESDIR}/unknown_${OPSYS}.mak ${FESTIVAL}/config/systems/unknown_${OPSYS}.mak
.endif

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${FHOME}
	${CHMOD} -R u+w,a+r,og-w ${FESTIVAL}/lib
	${FIND} ${FESTIVAL}/lib -type d -print | ${XARGS} ${CHMOD} 755
	-@${MV} ${FESTIVAL}/lib/etc/unknown_${OPSYS}			\
		${FESTIVAL}/lib/etc/pkgsrc
	cd ${FESTIVAL} && pax -rw lib examples ${DESTDIR}${FHOME}
	${RM} ${DESTDIR}${FHOME}/examples/Makefile.orig
	${RM} -f ${DESTDIR}${FHOME}/lib/etc/unknown_${OPSYS}/audsp	\
		${DESTDIR}${FHOME}/lib/etc/pkgsrc/audsp
	${INSTALL_PROGRAM} ${FESTIVAL}/lib/etc/pkgsrc/audsp		\
		${DESTDIR}${PREFIX}/libexec
	${INSTALL_PROGRAM} ${FESTIVAL}/src/main/festival		\
		${DESTDIR}${PREFIX}/libexec/festival.naked
	${INSTALL_PROGRAM} ${FESTIVAL}/src/main/festival_client		\
		${DESTDIR}${PREFIX}/libexec/festival_client.naked
	for n in festival.sh festival_client.sh sitevars.scm; do	\
		${SED} "s%@PKG_FESTIVAL_LOCATION@%${FHOME}%;		\
			s%@PKG_PREFIX@%${PREFIX}%" < ${FILESDIR}/$$n	\
			> ${WRKDIR}/$$n ;				\
	done
	${INSTALL_SCRIPT} ${WRKDIR}/festival.sh				\
		${DESTDIR}${PREFIX}/bin/festival
	${INSTALL_SCRIPT} ${WRKDIR}/festival_client.sh			\
		${DESTDIR}${PREFIX}/bin/festival_client
	${INSTALL_DATA} ${WRKDIR}/sitevars.scm				\
		${DESTDIR}${FHOME}/lib/sitevars.scm
	${INSTALL_MAN} ${FESTIVAL}/doc/festival.1			\
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/festival.1
	${INSTALL_MAN} ${FESTIVAL}/doc/festival_client.1		\
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/festival_client.1

.include "../../audio/nas/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
