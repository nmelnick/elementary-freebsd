--- src/Views/HardwareView.vala.orig	2021-08-26 02:39:28 UTC
+++ src/Views/HardwareView.vala
@@ -227,7 +227,7 @@ public class About.HardwareView : Gtk.Grid {
 
         string result = "";
         foreach (var cpu in counts.entries) {
-            if (result.length > 0) {
+            if (result != null && result.length > 0) {
                 result += "\n";
             }
 
@@ -506,7 +506,7 @@ public class About.HardwareView : Gtk.Grid {
 
         string hostname = system_interface.pretty_hostname;
 
-        if (hostname.length == 0) {
+        if (hostname != null && hostname.length == 0) {
             hostname = system_interface.static_hostname;
         }
 
