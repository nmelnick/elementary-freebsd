--- src/Services/UserManager.vala.orig	2021-08-27 00:49:44 UTC
+++ src/Services/UserManager.vala
@@ -45,8 +45,8 @@ public class Session.Services.UserManager : Object {
     private const uint RESERVED_UID_RANGE_END = 1000;
 
     private const string DM_DBUS_ID = "org.freedesktop.DisplayManager";
-    private const string LOGIN_IFACE = "org.freedesktop.login1";
-    private const string LOGIN_PATH = "/org/freedesktop/login1";
+    private const string LOGIN_IFACE = "org.freedesktop.ConsoleKit";
+    private const string LOGIN_PATH = "/org/freedesktop/ConsoleKit";
 
     private Act.UserManager manager;
     private Gee.HashMap<uint, Widgets.Userbox>? user_boxes;
@@ -62,7 +62,7 @@ public class Session.Services.UserManager : Object {
         try {
             login_proxy = yield Bus.get_proxy (BusType.SYSTEM, LOGIN_IFACE, LOGIN_PATH, DBusProxyFlags.NONE);
         } catch (IOError e) {
-            critical ("Failed to create login1 dbus proxy: %s", e.message);
+            critical ("Failed to create ConsoleKit dbus proxy: %s", e.message);
         }
     }
 
