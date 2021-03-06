# $NetBSD: Makefile,v 1.3 2009/07/29 17:45:59 yyamano Exp $
#

DISTNAME=	apache-maven-2.2.1
CATEGORIES=	devel java
MASTER_SITES=	${MASTER_SITE_APACHE:=maven/binaries/}
EXTRACT_SUFX=	.tar.bz2
DISTFILES=	${DISTNAME}-bin${EXTRACT_SUFX}

MAINTAINER=	yyamano@NetBSD.org
HOMEPAGE=	http://maven.apache.org/
COMMENT=	Apache Project's software project management and comprehension tool

PKG_DESTDIR_SUPPORT=	user-destdir

USE_JAVA=	run
USE_JAVA2=	1.5
USE_TOOLS+=	pax
NO_BUILD=	yes

SUBST_CLASSES+=		maven
SUBST_FILES.maven=	bin/mvn
SUBST_STAGE.maven=	pre-configure
SUBST_SED.maven=	-e 's,@JAVA_HOME@,${PKG_JAVA_HOME},g'
SUBST_SED.maven+=	-e 's,@PREFIX@,${PREFIX},g'

INSTALLATION_DIRS=	bin etc/maven lib/java/maven lib/java/maven/boot share/doc/java/maven

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/mvn ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bin/m2.conf ${DESTDIR}${PREFIX}/etc/maven
	${INSTALL_DATA} ${WRKSRC}/conf/settings.xml ${DESTDIR}${PREFIX}/etc/maven
	${INSTALL_DATA} ${WRKSRC}/boot/*.jar ${DESTDIR}${PREFIX}/lib/java/maven/boot
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${DESTDIR}${PREFIX}/lib/java/maven
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DESTDIR}${PREFIX}/share/doc/java/maven
	${INSTALL_DATA} ${WRKSRC}/NOTICE.txt ${DESTDIR}${PREFIX}/share/doc/java/maven
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${DESTDIR}${PREFIX}/share/doc/java/maven

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
