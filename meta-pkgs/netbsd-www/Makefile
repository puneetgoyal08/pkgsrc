# $NetBSD: Makefile,v 1.24 2010/02/19 23:39:42 tron Exp $

DISTNAME=	netbsd-www-1.5
CATEGORIES=	meta-pkgs
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Packages required to build the NetBSD.org web site

PKG_DESTDIR_SUPPORT=	user-destdir

# we add an explicit dependency on docbook-xsl here since earlier versions
# generated slightly different html code, leading to a large number of
# unneccessary 'regen' commits
DEPENDS+=	ImageMagick>=5.5.7.11nb1:../../graphics/ImageMagick
DEPENDS+=	docbook-website>=2.6.0nb1:../../textproc/docbook-website
DEPENDS+=	docbook-xsl>=1.68.1:../../textproc/docbook-xsl
DEPENDS+=	dvipsk-[0-9]*:../../print/dvipsk
DEPENDS+=	ghostscript-[0-9]*:../../print/ghostscript
DEPENDS+=	libxslt>=1.0.20:../../textproc/libxslt
DEPENDS+=	opensp>=1.1:../../textproc/opensp
DEPENDS+=	psutils>=1.17:../../print/psutils
DEPENDS+=	tex-german-[0-9]*:../../print/tex-german
DEPENDS+=	tex-latex-[0-9]*:../../print/tex-latex
DEPENDS+=	w3m>=0.4:../../www/w3m
DEPENDS+=	xplanet>=1.2.0nb3:../../x11/xplanet

USE_TOOLS+=	perl:run

META_PACKAGE=	yes

.include "../../mk/bsd.pkg.mk"
