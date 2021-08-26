PORTNAME=	switchboard
PORTVERSION=	6.0.0
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Extensible System Settings app designed for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext desktop-file-utils
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes
INSTALLS_ICONS=	yes
GLIB_SCHEMAS=	io.elementary.switchboard.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	switchboard

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
