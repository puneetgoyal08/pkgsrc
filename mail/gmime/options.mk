# $NetBSD$

.if defined(USE_INET6) && !empty(USE_INET6:M[Yy][Ee][Ss])
PKG_DEFAULT_OPTIONS+=	ipv6
.endif

PKG_OPTIONS_VAR=	PKG_OPTIONS.gmime
PKG_SUPPORTED_OPTIONS=	ipv6

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mipv6)
CONFIGURE_ARGS+=	--enable-ipv6
.endif
