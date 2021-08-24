PORTNAME=	files
DISTVERSION=	6.0.1
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	File manager designed for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libcanberra.so:audio/libcanberra \
		libcloudproviders.so:devel/libcloudproviders \
		libfontconfig.so:x11-fonts/fontconfig \
		libfreetype.so:print/freetype2 \
		libgee-0.8.so:devel/libgee \
		libgit2-glib-1.0.so:devel/libgit2-glib \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy \
		libplank.so:x11-wm/elementary-dock \
		libsqlite3.so:databases/sqlite3 \
		libvala-0.48.so:lang/vala \
		libzeitgeist-2.0.so:sysutils/zeitgeist

USES=		gettext gnome localbase meson desktop-file-utils pkgconfig \
		ninja python:build xorg
MESON_ARGS=     -Dsystemduserunitdir=no
USE_GNOME=	glib20 gtk30 pango cairo gdkpixbuf2
USE_LDCONFIG=	yes
INSTALLS_ICONS=	yes
USE_XORG=	x11
GLIB_SCHEMAS=	io.elementary.files.gschema.xml

PLIST_SUB=      DIST_VERSION=${DISTVERSION}

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	files

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
