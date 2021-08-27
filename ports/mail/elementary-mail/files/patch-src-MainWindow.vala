--- src/MainWindow.vala.orig	2021-07-28 18:26:21 UTC
+++ src/MainWindow.vala
@@ -93,11 +93,11 @@ public class Mail.MainWindow : Hdy.ApplicationWindow {
     construct {
         add_action_entries (ACTION_ENTRIES, this);
         get_action (ACTION_COMPOSE_MESSAGE).set_enabled (false);
-
-        foreach (var action in action_accelerators.get_keys ()) {
+        var iter = action_accelerators.map_iterator ();
+	while (iter.next ()) {
             ((Gtk.Application) GLib.Application.get_default ()).set_accels_for_action (
-                ACTION_PREFIX + action,
-                action_accelerators[action].to_array ()
+                ACTION_PREFIX + iter.get_key (),
+                { iter.get_value () }
             );
         }
 
@@ -117,7 +117,7 @@ public class Mail.MainWindow : Hdy.ApplicationWindow {
             } else {
                 ((Gtk.Application) GLib.Application.get_default ()).set_accels_for_action (
                     ACTION_PREFIX + ACTION_MOVE_TO_TRASH,
-                    action_accelerators[ACTION_MOVE_TO_TRASH].to_array ()
+                    { action_accelerators[ACTION_MOVE_TO_TRASH].to_array ()[0] }
                 );
             }
         });
