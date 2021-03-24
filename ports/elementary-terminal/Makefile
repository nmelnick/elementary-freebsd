# $FreeBSD$

PORTNAME=		elementary-terminal
DISTVERSION=		5.5.2
CATEGORIES=		x11
MASTER_SITES=		https://github.com/
DISTFILES=		elementary/terminal/archive/refs/tags/${PORTVERSION}.tar.gz
WRKSRC=			${WRKDIR}/terminal-${PORTVERSION}

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Terminal designed for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libvte-2.91.so.0:x11-toolkits/vte3 \
		libhandy-1.so:devel/libhandy-1
USES=		gettext gnome localbase meson ninja pkgconfig \
                python:build xorg desktop-file-utils
USE_GNOME=	glib20 gtk30 vte3
USE_LDCONFIG=	yes
INSTALLS_ICONS=	yes
USE_XORG=	x11
GLIB_SCHEMAS=	io.elementary.terminal.gschema.xml

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
