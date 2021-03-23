# $FreeBSD$

PORTNAME=		elementary-files
DISTVERSION=		4.5.0
CATEGORIES=		x11-wm
MASTER_SITES=		https://github.com/
MASTER_SITE_SUBDIR=	elementary/files/archive/refs/tags/
DISTFILES=		${PORTVERSION}.tar.gz
WRKSRC=			${WRKDIR}/files-${PORTVERSION}

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	File manager designed for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libcanberra.so:audio/libcanberra \
		libcloudproviders.so.0:devel/libcloudproviders \
		libfontconfig.so:x11-fonts/fontconfig \
		libfreetype.so:print/freetype2 \
		libgee-0.8.so:devel/libgee \
		libgit2-glib-1.0.so:devel/libgit2-glib \
		libgranite.so:x11-toolkits/granite \
		libsqlite3.so:databases/sqlite3 \
		libvala-0.48.so:lang/vala \
		libzeitgeist-2.0.so:sysutils/zeitgeist

USES=		gettext gnome localbase meson desktop-file-utils pkgconfig \
                ninja python:build xorg
USE_GNOME=	glib20 gtk30 pango cairo gdkpixbuf2
USE_LDCONFIG=	yes
INSTALLS_ICONS=	yes
USE_XORG=	x11

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
