--- src/Services/TimeManager.vala.orig	2021-08-26 20:58:44 UTC
+++ src/Services/TimeManager.vala
@@ -17,7 +17,7 @@
  * Boston, MA 02110-1301 USA.
  */
 
-[DBus (name = "org.freedesktop.login1.Manager")]
+[DBus (name = "org.freedesktop.ConsoleKit.Manager")]
 interface Manager : Object {
     public signal void prepare_for_sleep (bool sleeping);
 }
@@ -63,7 +63,7 @@ public class DateTime.Services.TimeManager : Gtk.Calen
             // Listen for the D-BUS server that controls time settings
             Bus.watch_name (BusType.SYSTEM, "org.freedesktop.timedate1", BusNameWatcherFlags.NONE, on_watch, on_unwatch);
             // Listen for the signal that is fired when waking up from sleep, then update time
-            manager = Bus.get_proxy_sync (BusType.SYSTEM, "org.freedesktop.login1", "/org/freedesktop/login1");
+            manager = Bus.get_proxy_sync (BusType.SYSTEM, "org.freedesktop.ConsoleKit", "/org/freedesktop/ConsoleKit");
             manager.prepare_for_sleep.connect ((sleeping) => {
                 if (!sleeping) {
                     update_current_time ();
