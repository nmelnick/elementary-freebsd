PORTNAME=	gala
PORTVERSION=	6.0.1
CATEGORIES=	x11-wm
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Window and compositing manager for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

RUN_DEPENDS=	consolekit2>0:sysutils/consolekit2
BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libcanberra.so:audio/libcanberra \
		libgee-0.8.so:devel/libgee \
		libgexiv2.so:graphics/gexiv2 \
		libgranite.so:x11-toolkits/granite \
		libgraphene-1.0.so:graphics/graphene \
		libmutter-6.so:x11-wm/mutter \
		libplank.so:x11-wm/elementary-dock

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes
INSTALLS_ICONS=	yes
GLIB_SCHEMAS=	org.pantheon.desktop.gala.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	gala

BINARY_ALIAS=	python3=${PYTHON_CMD}

WITH_DEBUG=	yes

.include <bsd.port.mk>
