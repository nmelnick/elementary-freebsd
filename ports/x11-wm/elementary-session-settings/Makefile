PORTNAME=	session-settings
DISTVERSION=	6.0.0
CATEGORIES=	x11-wm
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Session settings for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=    gnome-keyring>0:security/gnome-keyring \
		gnome-session>0:x11/gnome-session \
		orca>0:accessibility/orca
BUILD_DEPENDS=	valac:lang/vala \
		gnome-keyring>0:security/gnome-keyring \
		orca>0:accessibility/orca
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgala.so:x11-wm/elementary-gala

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
MESON_ARGS=	-Ddetect-program-prefixes=false -Dsysconfdir=${PREFIX}/etc
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes

USE_GITHUB=	yes
GH_ACCOUNT=	elementary

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
