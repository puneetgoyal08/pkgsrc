$NetBSD$

--- ipc/chromium/src/base/platform_file_posix.cc.orig	2011-06-15 21:57:27.000000000 +0000
+++ ipc/chromium/src/base/platform_file_posix.cc
@@ -9,6 +9,7 @@
 #ifdef ANDROID
 #include <linux/stat.h>
 #endif
+#include <sys/stat.h> /* for S_IRUSR */
 
 #include "base/logging.h"
 #include "base/string_util.h"
