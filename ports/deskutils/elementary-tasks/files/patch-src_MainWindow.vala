--- src/MainWindow.vala.orig	2021-08-26 14:55:33 UTC
+++ src/MainWindow.vala
@@ -59,9 +59,11 @@ public class Tasks.MainWindow : Hdy.ApplicationWindow 
 
         var application_instance = (Gtk.Application) GLib.Application.get_default ();
         foreach (var action in action_accelerators.get_keys ()) {
+/*
             application_instance.set_accels_for_action (
                 ACTION_PREFIX + action, action_accelerators[action].to_array ()
             );
+*/
         }
 
         var sidebar_header = new Hdy.HeaderBar () {
