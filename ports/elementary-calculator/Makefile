# $FreeBSD$

PORTNAME=		elementary-calculator
DISTVERSION=		1.6.0
CATEGORIES=		math
MASTER_SITES=		https://github.com/
DISTFILES=		elementary/calculator/archive/refs/tags/${PORTVERSION}.tar.gz
WRKSRC=			${WRKDIR}/calculator-${PORTVERSION}

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Calculator designed for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgranite.so:x11-toolkits/granite
USES=		gettext gnome localbase meson ninja pkgconfig \
                python:build xorg
USE_GNOME=	glib20 gtk30
USE_LDCONFIG=	yes
INSTALLS_ICONS=	yes
USE_XORG=	x11
GLIB_SCHEMAS=	io.elementary.calculator.gschema.xml

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
