$NetBSD$

alloca.h is not portable.

--- src/s_utf8.c.orig	2010-08-18 03:51:01.000000000 +0000
+++ src/s_utf8.c
@@ -18,11 +18,7 @@
 #include <stdio.h>
 #include <string.h>
 #include <stdarg.h>
-#ifdef WIN32
 #include <malloc.h>
-#else
-#include <alloca.h>
-#endif
 
 #include "s_utf8.h"
 
