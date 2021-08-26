PORTNAME=	switchboard-plug-pantheon-shell
PORTVERSION=	6.0.0
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Desktop plug for System Settings

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libgexiv2.so:graphics/gexiv2 \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libplank.so:x11-wm/elementary-dock \
		libswitchboard-2.0.so:sysutils/elementary-switchboard

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes
INSTALLS_ICONS=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	switchboard-plug-pantheon-shell

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
