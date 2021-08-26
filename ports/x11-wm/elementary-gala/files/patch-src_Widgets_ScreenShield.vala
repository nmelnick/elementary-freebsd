--- src/Widgets/ScreenShield.vala.orig	2021-08-11 20:53:00 UTC
+++ src/Widgets/ScreenShield.vala
@@ -16,7 +16,7 @@
 //
 
 namespace Gala {
-    [DBus (name = "org.freedesktop.login1.Manager")]
+    [DBus (name = "org.freedesktop.ConsoleKit.Manager")]
     interface LoginManager : Object {
         public signal void prepare_for_sleep (bool about_to_suspend);
 
@@ -25,7 +25,7 @@ namespace Gala {
         public abstract UnixInputStream inhibit (string what, string who, string why, string mode) throws GLib.Error;
     }
 
-    [DBus (name = "org.freedesktop.login1.Session")]
+    [DBus (name = "org.freedesktop.ConsoleKit.Session")]
     interface LoginSessionManager : Object {
         public abstract bool active { get; }
 
@@ -40,7 +40,7 @@ namespace Gala {
         GLib.ObjectPath objectpath;
     }
 
-    [DBus (name = "org.freedesktop.login1.User")]
+    [DBus (name = "org.freedesktop.ConsoleKit.User")]
     interface LoginUserManager : Object {
         public abstract LoginDisplay? display { owned get; }
     }
@@ -143,8 +143,8 @@ namespace Gala {
             bool success = true;
 
             try {
-                login_manager = yield Bus.get_proxy (BusType.SYSTEM, "org.freedesktop.login1", "/org/freedesktop/login1");
-                login_user_manager = yield Bus.get_proxy (BusType.SYSTEM, "org.freedesktop.login1", "/org/freedesktop/login1/user/self");
+                login_manager = yield Bus.get_proxy (BusType.SYSTEM, "org.freedesktop.ConsoleKit", "/org/freedesktop/ConsoleKit");
+                login_user_manager = yield Bus.get_proxy (BusType.SYSTEM, "org.freedesktop.ConsoleKit", "/org/freedesktop/ConsoleKit/user/self");
 
                 // Listen for sleep/resume events from logind
                 login_manager.prepare_for_sleep.connect (prepare_for_sleep);
@@ -288,7 +288,7 @@ namespace Gala {
             string? session_id = GLib.Environment.get_variable ("XDG_SESSION_ID");
             if (session_id == null) {
                 debug ("Unset XDG_SESSION_ID, asking logind");
-                if (login_user_manager == null) {
+                if (login_user_manager == null || login_user_manager.display == null) {
                     return null;
                 }
 
@@ -300,7 +300,7 @@ namespace Gala {
             }
 
             var session_path = login_manager.get_session (session_id);
-            LoginSessionManager? session = Bus.get_proxy_sync (BusType.SYSTEM, "org.freedesktop.login1", session_path);
+            LoginSessionManager? session = Bus.get_proxy_sync (BusType.SYSTEM, "org.freedesktop.ConsoleKit", session_path);
 
             return session;
         }
