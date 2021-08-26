--- src/WindowManager.vala.orig	2021-08-26 16:15:31 UTC
+++ src/WindowManager.vala
@@ -1113,7 +1113,7 @@ namespace Gala {
                     maximize (actor, new_rect.x, new_rect.y, new_rect.width, new_rect.height);
                     break;
                 case Meta.SizeChange.UNMAXIMIZE:
-                    unmaximize (actor, new_rect.x, new_rect.y, new_rect.width, new_rect.height);
+                    // unmaximize (actor, new_rect.x, new_rect.y, new_rect.width, new_rect.height);
                     break;
                 case Meta.SizeChange.FULLSCREEN:
                 case Meta.SizeChange.UNFULLSCREEN:
