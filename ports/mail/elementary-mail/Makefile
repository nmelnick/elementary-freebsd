# $FreeBSD$

PORTNAME=	mail
DISTVERSION=	2.0.0
CATEGORIES=	mail
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Mail client designed for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libfolks.so:net-im/folks \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy \
		libsoup-2.4.so:devel/libsoup \
		libwebkit2gtk-4.0.so:www/webkit2-gtk3

USES=		gettext gnome localbase meson ninja pkgconfig \
		python:build xorg desktop-file-utils
USE_GNOME=	glib20 gtk30 evolutiondataserver3
USE_LDCONFIG=	yes
INSTALLS_ICONS=	yes
USE_XORG=	x11
GLIB_SCHEMAS=	io.elementary.mail.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	mail
GH_TAGNAME=	3170aca50feab3592d8467c375ab1772791f791d

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
