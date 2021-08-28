--- src/Settings/ThemeSettings.vala.orig	2021-08-28 01:00:52 UTC
+++ src/Settings/ThemeSettings.vala
@@ -29,7 +29,7 @@ public class PantheonTweaks.ThemeSettings {
         var themes = new Gee.ArrayList<string> ();
 
         string[] dirs = {
-            "/usr/share/" + path + "/",
+            "/usr/local/share/" + path + "/",
             Environment.get_home_dir () + "/." + path + "/",
             Environment.get_home_dir () + "/.local/share/" + path + "/"};
 
