--- meson/create-symlink.sh.orig	2021-08-31 19:15:18 UTC
+++ meson/create-symlink.sh
@@ -6,7 +6,13 @@ set -eu
 
 mkdir -vp "$(dirname "${DESTDIR:-}$2")"
 if [ "$(dirname $1)" = . -o "$(dirname $1)" = .. ]; then
-    ln -vfs -T -- "$1" "${DESTDIR:-}$2"
+    if [ ! -e "${DESTDIR:-}$2" ]; then
+        ln -vfs "$1" "${DESTDIR:-}$2"
+    fi
 else
-    ln -vfs -T --relative -- "${DESTDIR:-}$1" "${DESTDIR:-}$2"
+    if [ ! -e "${DESTDIR:-}$2" ]; then
+        F=`echo ${DESTDIR:-}$1 | sed 's/^.*\/usr\/local\/share/..\/../'`
+	cd "$(dirname "${DESTDIR:-}$2")"
+        ln -vfs "$F" .
+    fi
 fi
