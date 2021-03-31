# $FreeBSD$

PORTNAME=	gala
PORTVERSION=	3.3.2
CATEGORIES=	x11-wm
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Window and compositing manager for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgee-0.8.so:devel/libgee \
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
GH_TAGNAME=	282ee282f898e63c2489c83f7e79c478e20b4e58

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>