# $NetBSD: options.mk,v 1.5 2006/03/09 21:04:44 jlam Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.scummvm
PKG_SUPPORTED_OPTIONS=	sdl x11
PKG_SUGGESTED_OPTIONS=	sdl

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Msdl)
CONFIGURE_ARGS+=	--backend=sdl
.include "../../devel/SDL/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mx11)
CONFIGURE_ARGS+=	--backend=x11
.include "../../mk/oss.buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.endif
