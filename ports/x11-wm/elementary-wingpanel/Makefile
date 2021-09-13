PORTNAME=	wingpanel
DISTVERSION=	3.0.0
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	The extensible top panel for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgala.so:x11-wm/elementary-gala \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libmutter-6.so:x11-wm/mutter

USES=		gettext gnome localbase meson desktop-file-utils pkgconfig \
		ninja python:build xorg
USE_GNOME=	glib20 gtk30 pango cairo gdkpixbuf2
USE_LDCONFIG=	yes
INSTALLS_ICONS=	yes
USE_XORG=	x11
GLIB_SCHEMAS=	io.elementary.desktop.wingpanel.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
