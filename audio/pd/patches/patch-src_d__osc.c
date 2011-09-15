$NetBSD$

Detect endianness on NetBSD.

--- src/d_osc.c.orig	2010-07-28 20:55:17.000000000 +0000
+++ src/d_osc.c
@@ -15,7 +15,7 @@
 #include <sys/endian.h>
 #endif
 
-#if defined(__FreeBSD__) || defined(__APPLE__) || defined(__FreeBSD_kernel__)
+#if defined(__FreeBSD__) || defined(__APPLE__) || defined(__FreeBSD_kernel__) || defined(__NetBSD__)
 #include <machine/endian.h>
 #endif
 
