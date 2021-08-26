--- src/Widgets/calendar/CalendarModel.vala.orig	2021-08-26 01:34:07 UTC
+++ src/Widgets/calendar/CalendarModel.vala
@@ -65,7 +65,7 @@ namespace DateTime.Widgets {
             source_events = new HashTable<E.Source, Gee.TreeMultiMap<string, ECal.Component> > (Util.source_hash_func, Util.source_equal_func);
             source_view = new HashTable<string, ECal.ClientView> (str_hash, str_equal);
 
-            int week_start = Posix.NLTime.FIRST_WEEKDAY.to_string ().data[0];
+            int week_start = 1;
             if (week_start >= 1 && week_start <= 7) {
                 week_starts_on = (GLib.DateWeekday) (week_start - 1);
             }
