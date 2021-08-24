PORTNAME=	screenshot
DISTVERSION=	6.0.0
CATEGORIES=	x11
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Screenshot tool designed for elementary OS

LICENSE=	LGPL3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libcanberra.so:audio/libcanberra \
		libvala-0.48.so:lang/vala \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy

USES=		gettext gnome localbase meson ninja pkgconfig \
		python:build xorg
USE_GNOME=	glib20 gtk30 gdkpixbuf2 cairo
USE_LDCONFIG=	yes
INSTALLS_ICONS=	yes
USE_XORG=	x11
GLIB_SCHEMAS=	io.elementary.screenshot.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	screenshot

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
