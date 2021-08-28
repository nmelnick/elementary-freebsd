PORTNAME=	switchboard-plug-notifications
DISTVERSION=	2.2.0
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Notifications plug for System Settings

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libswitchboard-2.0.so:sysutils/elementary-switchboard

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes
INSTALLS_ICONS=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	switchboard-plug-notifications

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
