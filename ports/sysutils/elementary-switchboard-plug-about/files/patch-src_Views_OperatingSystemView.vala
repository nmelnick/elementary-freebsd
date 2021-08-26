--- src/Views/OperatingSystemView.vala.orig	2021-08-24 20:34:26 UTC
+++ src/Views/OperatingSystemView.vala
@@ -47,7 +47,7 @@ public class About.OperatingSystemView : Gtk.Grid {
         };
         logo.set_image_load_func ((size) => {
             try {
-                return new Gdk.Pixbuf.from_file_at_scale ("/usr/share/backgrounds/elementaryos-default", -1, size, true);
+                return new Gdk.Pixbuf.from_file_at_scale ("/usr/local/share/backgrounds/elementaryos-default", -1, size, true);
             } catch (Error e) {
                 critical (e.message);
             }
@@ -183,7 +183,7 @@ public class About.OperatingSystemView : Gtk.Grid {
         // Upstream distro version (for "Built on" text)
         // FIXME: Add distro specific field to /etc/os-release and use that instead
         // Like "ELEMENTARY_UPSTREAM_DISTRO_NAME" or something
-        var file = File.new_for_path ("/etc/upstream-release/lsb-release");
+        var file = File.new_for_path ("/etc/os-release");
         string? upstream_release = null;
         try {
             var dis = new DataInputStream (yield file.read_async ());
@@ -191,12 +191,12 @@ public class About.OperatingSystemView : Gtk.Grid {
             // Read lines until end of file (null) is reached
             while ((line = yield dis.read_line_async ()) != null) {
                 var distrib_component = line.split ("=", 2);
-                if (distrib_component.length == 2) {
+                if (distrib_component.length == 2 && distrib_component[0] == "PRETTY_NAME") {
                     upstream_release = distrib_component[1].replace ("\"", "");
                 }
             }
         } catch (Error e) {
-            warning ("Couldn't read upstream lsb-release file, assuming none");
+            warning ("Couldn't read os-release file, assuming none");
         }
 
         if (upstream_release != null) {
