--- src/Services/DbusInterfaces.vala.orig	2021-08-27 00:49:39 UTC
+++ src/Services/DbusInterfaces.vala
@@ -36,7 +36,7 @@ interface LockInterface : Object {
     public abstract void lock () throws GLib.Error;
 }
 
-[DBus (name = "org.freedesktop.login1.Manager")]
+[DBus (name = "org.freedesktop.ConsoleKit.Manager")]
 interface SystemInterface : Object {
     public abstract void suspend (bool interactive) throws GLib.Error;
     public abstract void reboot (bool interactive) throws GLib.Error;
@@ -45,7 +45,7 @@ interface SystemInterface : Object {
     public abstract UserInfo[] list_users () throws GLib.Error;
 }
 
-[DBus (name = "org.freedesktop.login1.User")]
+[DBus (name = "org.freedesktop.ConsoleKit.User")]
 interface UserInterface : Object {
     public abstract string state { owned get; }
 }
