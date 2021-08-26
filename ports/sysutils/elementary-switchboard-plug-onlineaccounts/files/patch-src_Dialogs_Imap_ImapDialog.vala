--- src/Dialogs/Imap/ImapDialog.vala.orig	2021-08-26 00:54:34 UTC
+++ src/Dialogs/Imap/ImapDialog.vala
@@ -429,7 +429,7 @@ public class OnlineAccounts.ImapDialog : Hdy.Window {
                 }
 
                 throw new GLib.Error (
-                    Camel.Service.error_quark (),
+                    Camel.ServiceError.quark (),
                     Camel.ServiceError.CANT_AUTHENTICATE,
                     _("Could not log in. Please verify your credentials.")
                 );
@@ -439,7 +439,7 @@ public class OnlineAccounts.ImapDialog : Hdy.Window {
 
         } catch (Error e) {
             throw new GLib.Error (
-                Camel.Service.error_quark (),
+                Camel.ServiceError.quark (),
                 Camel.ServiceError.CANT_AUTHENTICATE,
                 _("IMAP verification failed: %s").printf (e.message)
             );
@@ -558,7 +558,7 @@ public class OnlineAccounts.ImapDialog : Hdy.Window {
                 }
 
                 throw new GLib.Error (
-                    Camel.Service.error_quark (),
+                    Camel.ServiceError.quark (),
                     Camel.ServiceError.CANT_AUTHENTICATE,
                     "Could not log in. Please verify your credentials."
                 );
@@ -568,7 +568,7 @@ public class OnlineAccounts.ImapDialog : Hdy.Window {
 
         } catch (Error e) {
             throw new GLib.Error (
-                Camel.Service.error_quark (),
+                Camel.ServiceError.quark (),
                 Camel.ServiceError.CANT_AUTHENTICATE,
                 "SMTP verification failed: %s".printf (e.message)
             );
