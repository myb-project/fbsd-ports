--- src/src.pro.orig	2024-12-18 16:47:52 UTC
+++ src/src.pro
@@ -28,20 +28,19 @@ android {
     INCLUDEPATH += \"$${OPENSSL_ROOT_DIR}/include\"
     LIBS += -L\"$${OPENSSL_ROOT_DIR}\" -lOpenSLES
     FREERDP_CHANNEL_LIBS = ../*.$${QMAKE_EXTENSION_STATICLIB}
-} else {
-    FREERDP_CHANNEL_LIBS = ../lib/freerdp2/*.$${QMAKE_EXTENSION_STATICLIB}
 }
 
 DEFINES += LIBSSH_STATIC SSH_NO_CPP_EXCEPTIONS
 
 unix {
-    INCLUDEPATH += \"$${OUT_PWD}/../include\" \"$${OUT_PWD}/../include/freerdp2\" \"$${OUT_PWD}/../include/winpr2\"
+    #INCLUDEPATH += \"$${OUT_PWD}/../include\" \"$${OUT_PWD}/../include/freerdp2\" \"$${OUT_PWD}/../include/winpr2\"
+    INCLUDEPATH += \"/usr/local/include/freerdp2\" \"/usr/local/include/winpr2\" \"$${OUT_PWD}/../include\" \"$${OUT_PWD}/../include/freerdp2\" \"$${OUT_PWD}/../include/winpr2\"
     LIBS += -L../lib -lssh -lvncclient
     LIBS += -lfreerdp-client2 $${FREERDP_CHANNEL_LIBS} -lfreerdp2 -lwinpr2
     LIBS += -lcrypto -lssl -lz
     #LIBS += -lcrypto -lssl -lcairo -ljpeg -lpng -llzo2 -lz
     #LIBS += $${QMAKE_LIBS_X11} -lxkbfile
-    *bsd: LIBS += -lutil
+    *bsd: LIBS += -lutil -lfreerdp-client2
 }
 
 SOURCES += \
