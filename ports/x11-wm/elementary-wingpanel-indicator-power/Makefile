PORTNAME=	wingpanel-indicator-power
DISTVERSION=	6.1.0
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Wingpanel Power Indicator

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libbamf3.so:sysutils/bamf \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libgtop-2.0.so:devel/libgtop \
		libnotify.so:devel/libnotify \
		libudev.so:devel/libudev-devd \
		libwingpanel.so:x11-wm/elementary-wingpanel

USES=		gettext gnome localbase meson pkgconfig \
		ninja python:build xorg
USE_GNOME=	glib20 gtk30 pango cairo
USE_LDCONFIG=	yes
USE_XORG=	x11
GLIB_SCHEMAS=	io.elementary.desktop.wingpanel.power.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	wingpanel-indicator-power

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
