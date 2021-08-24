PORTNAME=		libcloudproviders
DISTVERSION=		0.3.1
CATEGORIES=		devel
MASTER_SITES=		https://gitlab.gnome.org/World/${PORTNAME}/-/archive/${PORTVERSION}/

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	DBus API that allows cloud storage sync clients to expose services

LICENSE=	LGPL3+
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		gnome localbase meson python:3.5+ pkgconfig
USE_GNOME=	glib20
USE_LDCONFIG=	yes

BINARY_ALIAS=	python3=${PYTHON_CMD}

PLIST_SUB=      DIST_VERSION=${DISTVERSION}
PLIST_SUB+=     LIBRARY_VERSION=0.3

.include <bsd.port.mk>
