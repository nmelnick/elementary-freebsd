PORTNAME=	wingpanel-indicator-a11y
DISTVERSION=	1.0.0
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Wingpanel Universal Access Indicator

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgala.so:x11-wm/elementary-gala \
		libgranite.so:x11-toolkits/granite \
		libwingpanel.so:x11-wm/elementary-wingpanel \
		libzeitgeist-2.0.so:sysutils/zeitgeist

USES=		gettext gnome localbase meson pkgconfig \
		ninja python:build xorg
USE_GNOME=	glib20 gtk30 pango cairo gdkpixbuf2
USE_LDCONFIG=	yes
USE_XORG=	x11
GLIB_SCHEMAS=	io.elementary.desktop.wingpanel.a11y.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
