PORTNAME=	notifications
DISTVERSION=	6.0.0
CATEGORIES=	deskutils
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Gtk Notifications Server

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libcanberra.so:audio/libcanberra \
		libcanberra-gtk3.so:audio/libcanberra-gtk3 \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandyt

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes
INSTALLS_ICONS=	yes
GLIB_SCHEMAS=	io.elementary.notifications.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	notifications

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
