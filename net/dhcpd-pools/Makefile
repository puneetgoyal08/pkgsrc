# $NetBSD: Makefile,v 1.2 2011/07/05 01:14:20 dholland Exp $

DISTNAME=	dhcpd-pools-2.16
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dhcpd-pools/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://dhcpd-pools.sourceforge.net/
COMMENT=	ISC dhcpd lease analysis and reporting
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-dhcpd-leases=${VARBASE}/db/dhcpd.leases

BUILD_DEFS+=		VARBASE
REPLACE_PERL=		contrib/snmptest.pl
USE_TOOLS+=		perl:run

SUBST_CLASSES+=		fix-name
SUBST_STAGE.fix-name=	pre-configure
SUBST_MESSAGE.fix-name=	Removing program_invocation_short_name.
SUBST_FILES.fix-name=	src/dhcpd-pools.c src/other.c src/sort.c
SUBST_SED.fix-name=	-e 's,program_invocation_short_name,"dhcpd-pools",g'

.include "../../mk/bsd.pkg.mk"
