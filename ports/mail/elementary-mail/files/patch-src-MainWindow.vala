--- src/MainWindow.vala.orig	2021-03-21 10:03:07 UTC
+++ src/MainWindow.vala
@@ -90,13 +90,14 @@ public class Mail.MainWindow : Hdy.ApplicationWindow {
     construct {
         add_action_entries (ACTION_ENTRIES, this);
         get_action (ACTION_COMPOSE_MESSAGE).set_enabled (false);
-
+/*
         foreach (var action in action_accelerators.get_keys ()) {
             ((Gtk.Application) GLib.Application.get_default ()).set_accels_for_action (
                 ACTION_PREFIX + action,
                 action_accelerators[action].to_array ()
             );
         }
+*/
 
         headerbar = new HeaderBar ();
 
