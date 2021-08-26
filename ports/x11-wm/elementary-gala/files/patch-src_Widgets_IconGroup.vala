--- src/Widgets/IconGroup.vala.orig	2021-08-11 20:53:00 UTC
+++ src/Widgets/IconGroup.vala
@@ -348,7 +348,7 @@ namespace Gala {
             cr.paint ();
             cr.set_operator (Cairo.Operator.OVER);
 
-            var n_windows = icon_container.get_n_children ();
+            var n_windows = icon_container != null ? icon_container.get_n_children () : 0;
 
             // single icon => big icon
             if (n_windows == 1) {
