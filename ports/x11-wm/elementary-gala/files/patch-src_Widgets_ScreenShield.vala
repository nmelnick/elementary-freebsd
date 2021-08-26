--- src/Widgets/ScreenShield.vala.orig	2021-08-26 20:31:06 UTC
+++ src/Widgets/ScreenShield.vala
@@ -288,7 +288,7 @@ namespace Gala {
             string? session_id = GLib.Environment.get_variable ("XDG_SESSION_ID");
             if (session_id == null) {
                 debug ("Unset XDG_SESSION_ID, asking logind");
-                if (login_user_manager == null) {
+                if (login_user_manager == null || login_user_manager.display == null) {
                     return null;
                 }
 
