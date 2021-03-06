# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.bug-buddy
PKG_SUPPORTED_OPTIONS=	evolution-data-server
PKG_SUGGESTED_OPTIONS=	evolution-data-server

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mevolution-data-server)
CONFIGURE_ARGS+=	--enable-eds
.include "../../mail/evolution-data-server/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-eds
.endif
