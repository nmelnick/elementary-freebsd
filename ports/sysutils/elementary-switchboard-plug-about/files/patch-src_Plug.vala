--- src/Plug.vala.orig	2021-08-26 02:14:00 UTC
+++ src/Plug.vala
@@ -34,7 +34,6 @@ public class About.Plug : Switchboard.Plug {
         settings.set ("about", null);
         settings.set ("about/os", OPERATING_SYSTEM);
         settings.set ("about/hardware", HARDWARE);
-        settings.set ("about/firmware", FIRMWARE);
 
         Object (
             category: Category.SYSTEM,
@@ -54,14 +53,11 @@ public class About.Plug : Switchboard.Plug {
                 valign = Gtk.Align.CENTER
             };
 
-            var firmware_view = new FirmwareView ();
-
             stack = new Gtk.Stack () {
                 vexpand = true
             };
             stack.add_titled (operating_system_view, OPERATING_SYSTEM, _("Operating System"));
             stack.add_titled (hardware_view, HARDWARE, _("Hardware"));
-            stack.add_titled (firmware_view, FIRMWARE, _("Firmware"));
 
             var stack_switcher = new Gtk.StackSwitcher () {
                 halign = Gtk.Align.CENTER,
