PORTNAME=	wingpanel-indicator-notifications
DISTVERSION=	6.0.1
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Wingpanel Notifications Indicator

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgala.so:x11-wm/elementary-gala \
		libgee-0.8.so:devel/libgee \
		libgnome-menu-3.so:x11/gnome-menus \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy \
		libwingpanel.so:x11-wm/elementary-wingpanel \

USES=		gettext gnome localbase meson pkgconfig \
		ninja python:build xorg
USE_GNOME=	glib20 gtk30 pango cairo gdkpixbuf2
USE_LDCONFIG=	yes
USE_XORG=	x11

USE_GITHUB=	yes
GH_ACCOUNT=	elementary

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
