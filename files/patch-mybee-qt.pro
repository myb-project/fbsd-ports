--- mybee-qt.pro.orig	2024-12-18 16:47:52 UTC
+++ mybee-qt.pro
@@ -1,9 +1,9 @@ TEMPLATE = subdirs
 TEMPLATE = subdirs
-SUBDIRS = libssh freerdp2 vnc src
+SUBDIRS = src
 CONFIG += c++17 release
 
 #CONFIG += ordered
-src.depends = libssh freerdp2 vnc
+#src.depends = libssh freerdp2 vnc
 
 DISTFILES += \
     APP_VERSION \
