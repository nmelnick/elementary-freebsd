PORTNAME=	wingpanel-indicator-datetime
DISTVERSION=	2.3.0
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Wingpanel Date & Time Indicator

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

RUN_DEPENDS=	consolekit2>0:sysutils/consolekit2
BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgala.so:x11-wm/elementary-gala \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy \
		libical-glib.so:devel/libical \
		libwingpanel.so:x11-wm/elementary-wingpanel \

USES=		gettext gnome localbase meson pkgconfig \
		ninja python:build xorg
USE_GNOME=	glib20 gtk30 pango cairo evolutiondataserver3
USE_LDCONFIG=	yes
USE_XORG=	x11

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GLIB_SCHEMAS=	io.elementary.desktop.wingpanel.datetime.gschema.xml

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
