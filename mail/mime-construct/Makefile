# $NetBSD: Makefile,v 1.2 2010/08/21 16:35:00 seb Exp $
#

DISTNAME=	mime-construct-1.10
PKGREVISION=	2
CATEGORIES=	mail
MASTER_SITES=	http://www.argon.org/~roderick/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Constructs and emails MIME messages
HOMEPAGE=	http://www.argon.org/~roderick/
LICENSE=	gnu-gpl-v2 OR gnu-gpl-v3 # OR newer

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Proc-WaitStat-[0-9]*:../../devel/p5-Proc-WaitStat
DEPENDS+=	p5-MIME-Types-[0-9]*:../../mail/p5-MIME-Types

USE_TOOLS+=	perl:run

PERL5_PACKLIST=	auto/mime-construct/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
