PORTNAME=	settings-daemon
DISTVERSION=	1.1.0
CATEGORIES=	sysutils
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Settings Daemon for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgee-0.8.so:devel/libgee \
		libgeoclue-2.so:net/geoclue \
		libgranite.so:x11-toolkits/granite

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes
INSTALLS_ICONS=	yes
GLIB_SCHEMAS=	io.elementary.settings-daemon.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
