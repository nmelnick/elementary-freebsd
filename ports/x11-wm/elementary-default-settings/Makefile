PORTNAME=	default-settings
PORTVERSION=	6.0.0
CATEGORIES=	x11-wm
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Default settings and profile for elementary OS

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	default-settings

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
