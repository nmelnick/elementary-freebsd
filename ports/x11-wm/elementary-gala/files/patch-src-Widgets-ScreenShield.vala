--- src/Widgets/ScreenShield.vala.orig	2021-03-21 10:03:07 UTC
+++ src/Widgets/ScreenShield.vala
@@ -292,7 +292,7 @@ namespace Gala {
                     return null;
                 }
 
-                session_id = login_user_manager.display.session;
+                // session_id = login_user_manager.display.session;
             }
 
             if (session_id == null) {
