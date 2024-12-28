--- src/src.pro.orig	2024-12-28 18:44:13 UTC
+++ src/src.pro
@@ -28,14 +28,12 @@ android {
     INCLUDEPATH += \"$${OPENSSL_ROOT_DIR}/include\"
     LIBS += -L\"$${OPENSSL_ROOT_DIR}\" -lOpenSLES
     FREERDP_CHANNEL_LIBS = ../*.$${QMAKE_EXTENSION_STATICLIB}
-} else {
-    FREERDP_CHANNEL_LIBS = ../lib/freerdp2/*.$${QMAKE_EXTENSION_STATICLIB}
 }
 
 DEFINES += LIBSSH_STATIC SSH_NO_CPP_EXCEPTIONS
 
 unix {
-    INCLUDEPATH += \"$${OUT_PWD}/../include\" \"$${OUT_PWD}/../include/freerdp2\" \"$${OUT_PWD}/../include/winpr2\"
+    INCLUDEPATH += \"/usr/local/include/freerdp2\" \"/usr/local/include/winpr2\" \"$${OUT_PWD}/../include\" \"$${OUT_PWD}/../include/freerdp2\" \"$${OUT_PWD}/../include/winpr2\"
     LIBS += -L../lib -lssh -lvncclient
     LIBS += -lfreerdp-client2 $${FREERDP_CHANNEL_LIBS} -lfreerdp2 -lwinpr2
     LIBS += -lcrypto -lssl -lz -ldl -lutil
