PORTNAME=	pantheon-tweaks
DISTVERSION=	1.0.1
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	System settings panel for the Pantheon desktop environment

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
GH_ACCOUNT=	pantheon-tweaks
GH_PROJECT=	pantheon-tweaks

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
