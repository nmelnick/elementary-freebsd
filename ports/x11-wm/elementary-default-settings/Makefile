PORTNAME=	default-settings
DISTVERSION=	6.0.2
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Default settings and profile for elementary OS

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes
MESON_ARGS=	-Dappcenter-flatpak=false -Ddefault-wallpaper=/usr/local/share/backgrounds/elementaryos-default

USE_GITHUB=	yes
GH_ACCOUNT=	elementary

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
