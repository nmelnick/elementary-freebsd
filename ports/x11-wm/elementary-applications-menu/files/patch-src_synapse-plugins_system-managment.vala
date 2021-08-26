--- src/synapse-plugins/system-managment.vala.orig	2021-08-26 21:06:03 UTC
+++ src/synapse-plugins/system-managment.vala
@@ -54,18 +54,18 @@ namespace Synapse {
         public abstract bool get_active () throws GLib.Error;
     }
 
-    [DBus (name = "org.freedesktop.login1.User")]
+    [DBus (name = "org.freedesktop.ConsoleKit.User")]
     interface LogOutObject : Object {
-        public const string UNIQUE_NAME = "org.freedesktop.login1";
-        public const string OBJECT_PATH = "/org/freedesktop/login1/user/self";
+        public const string UNIQUE_NAME = "org.freedesktop.ConsoleKit";
+        public const string OBJECT_PATH = "/org/freedesktop/ConsoleKit/user/self";
 
         public abstract void terminate () throws GLib.Error;
     }
 
-    [DBus (name = "org.freedesktop.login1.Manager")]
+    [DBus (name = "org.freedesktop.ConsoleKit.Manager")]
     public interface SystemdObject : Object {
-        public const string UNIQUE_NAME = "org.freedesktop.login1";
-        public const string OBJECT_PATH = "/org/freedesktop/login1";
+        public const string UNIQUE_NAME = "org.freedesktop.ConsoleKit";
+        public const string OBJECT_PATH = "/org/freedesktop/ConsoleKit";
 
         public abstract void reboot (bool interactive) throws GLib.Error;
         public abstract void suspend (bool interactive) throws GLib.Error;
