PORTNAME=	wingpanel-indicator-session
DISTVERSION=	2.3.0
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Wingpanel Session Indicator

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libaccountsservice.so:sysutils/accountsservice \
		libgala.so:x11-wm/elementary-gala \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy \
		libwingpanel.so:x11-wm/elementary-wingpanel

USES=		gettext gnome localbase meson pkgconfig \
		ninja python:build xorg
USE_GNOME=	glib20 gtk30 pango cairo gdkpixbuf2
USE_LDCONFIG=	yes
USE_XORG=	x11

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	wingpanel-indicator-session

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
