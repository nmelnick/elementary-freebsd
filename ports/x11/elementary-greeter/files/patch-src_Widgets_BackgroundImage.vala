--- src/Widgets/BackgroundImage.vala.orig	2021-08-26 03:58:04 UTC
+++ src/Widgets/BackgroundImage.vala
@@ -9,7 +9,7 @@ public class Greeter.BackgroundImage : Gtk.EventBox {
 
     public BackgroundImage (string? path) {
         if (path == null) {
-            path = "/usr/share/backgrounds/elementaryos-default";
+            path = "/usr/local/share/backgrounds/elementaryos-default";
         }
 
         try {
@@ -19,7 +19,7 @@ public class Greeter.BackgroundImage : Gtk.EventBox {
             critical ("Fallback to default wallpaper");
 
             try {
-                full_pixbuf = new Gdk.Pixbuf.from_file ("/usr/share/backgrounds/elementaryos-default");
+                full_pixbuf = new Gdk.Pixbuf.from_file ("/usr/local/share/backgrounds/elementaryos-default");
             } catch (GLib.Error e) {
                 critical (e.message);
             }
