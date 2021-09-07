--- lib/Factories/ItemFactory.vala.orig	2021-08-26 04:10:02 UTC
+++ lib/Factories/ItemFactory.vala
@@ -25,64 +25,64 @@ namespace Plank
 	public class ItemFactory : GLib.Object
 	{
 		const string[] DEFAULT_APP_WEB = {
-			"file:///usr/share/applications/chromium-browser.desktop",
-			"file:///usr/share/applications/google-chrome.desktop",
-			"file:///usr/share/applications/firefox.desktop",
-			"file:///usr/share/applications/epiphany.desktop",
-			"file:///usr/share/applications/midori.desktop",
-			"file:///usr/share/applications/kde4/konqbrowser.desktop"
+			"file:///usr/local/share/applications/chromium-browser.desktop",
+			"file:///usr/local/share/applications/google-chrome.desktop",
+			"file:///usr/local/share/applications/firefox.desktop",
+			"file:///usr/local/share/applications/epiphany.desktop",
+			"file:///usr/local/share/applications/midori.desktop",
+			"file:///usr/local/share/applications/kde4/konqbrowser.desktop"
 		};
 		
 		const string[] DEFAULT_APP_MAIL = {
-			"file:///usr/share/applications/thunderbird.desktop",
-			"file:///usr/share/applications/evolution.desktop",
-			"file:///usr/share/applications/geary.desktop",
-			"file:///usr/share/applications/kde4/KMail2.desktop"
+			"file:///usr/local/share/applications/thunderbird.desktop",
+			"file:///usr/local/share/applications/evolution.desktop",
+			"file:///usr/local/share/applications/geary.desktop",
+			"file:///usr/local/share/applications/kde4/KMail2.desktop"
 		};
 		
 		const string[] DEFAULT_APP_CALENDAR = {
-			"file:///usr/share/applications/thunderbird.desktop",
-			"file:///usr/share/applications/evolution.desktop",
-			"file:///usr/share/applications/maya-calendar.desktop",
-			"file:///usr/share/applications/kde4/korganizer.desktop"
+			"file:///usr/local/share/applications/thunderbird.desktop",
+			"file:///usr/local/share/applications/evolution.desktop",
+			"file:///usr/local/share/applications/maya-calendar.desktop",
+			"file:///usr/local/share/applications/kde4/korganizer.desktop"
 		};
 		
 		const string[] DEFAULT_APP_TERMINAL = {
-			"file:///usr/share/applications/terminator.desktop",
-			"file:///usr/share/applications/gnome-terminal.desktop",
-			"file:///usr/share/applications/pantheon-terminal.desktop",
-			"file:///usr/share/applications/kde4/konsole.desktop"
+			"file:///usr/local/share/applications/terminator.desktop",
+			"file:///usr/local/share/applications/gnome-terminal.desktop",
+			"file:///usr/local/share/applications/pantheon-terminal.desktop",
+			"file:///usr/local/share/applications/kde4/konsole.desktop"
 		};
 		
 		const string[] DEFAULT_APP_AUDIO = {
-			"file:///usr/share/applications/exaile.desktop",
-			"file:///usr/share/applications/songbird.desktop",
-			"file:///usr/share/applications/rhythmbox.desktop",
-			"file:///usr/share/applications/noise.desktop",
-			"file:///usr/share/applications/banshee-1.desktop",
-			"file:///usr/share/applications/kde4/amarok.desktop"
+			"file:///usr/local/share/applications/exaile.desktop",
+			"file:///usr/local/share/applications/songbird.desktop",
+			"file:///usr/local/share/applications/rhythmbox.desktop",
+			"file:///usr/local/share/applications/noise.desktop",
+			"file:///usr/local/share/applications/banshee-1.desktop",
+			"file:///usr/local/share/applications/kde4/amarok.desktop"
 		};
 		
 		const string[] DEFAULT_APP_VIDEO = {
-			"file:///usr/share/applications/vlc.desktop",
-			"file:///usr/share/applications/totem.desktop",
-			"file:///usr/share/applications/audience.desktop",
-			"file:///usr/share/applications/kde4/amarok.desktop"
+			"file:///usr/local/share/applications/vlc.desktop",
+			"file:///usr/local/share/applications/totem.desktop",
+			"file:///usr/local/share/applications/audience.desktop",
+			"file:///usr/local/share/applications/kde4/amarok.desktop"
 		};
 		
 		const string[] DEFAULT_APP_PHOTO = {
-			"file:///usr/share/applications/eog.desktop",
-			"file:///usr/share/applications/gnome-photos.desktop",
-			"file:///usr/share/applications/org.gnome.Photos.desktop",
-			"file:///usr/share/applications/shotwell.desktop",
-			"file:///usr/share/applications/kde4/digikam.desktop"
+			"file:///usr/local/share/applications/eog.desktop",
+			"file:///usr/local/share/applications/gnome-photos.desktop",
+			"file:///usr/local/share/applications/org.gnome.Photos.desktop",
+			"file:///usr/local/share/applications/shotwell.desktop",
+			"file:///usr/local/share/applications/kde4/digikam.desktop"
 		};
 		
 		const string[] DEFAULT_APP_MESSENGER = {
-			"file:///usr/share/applications/pidgin.desktop",
-			"file:///usr/share/applications/empathy.desktop",
-			"file:///usr/share/applications/birdie.desktop",
-			"file:///usr/share/applications/kde4/kopete.desktop"
+			"file:///usr/local/share/applications/pidgin.desktop",
+			"file:///usr/local/share/applications/empathy.desktop",
+			"file:///usr/local/share/applications/birdie.desktop",
+			"file:///usr/local/share/applications/kde4/kopete.desktop"
 		};
 		
 		/**
